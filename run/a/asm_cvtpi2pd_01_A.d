// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtpi2pd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!();
		haveMMX!();

		int* a = (new int[2]).ptr;
		a[0] = -3;
		a[1] = 2;

		double* b = (new double[2]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movq MM0, [EAX];
				cvtpi2pd XMM0, MM0;
				mov EAX, b;
				movupd [EAX], XMM0;
				emms;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movq MM0, [RAX];
				cvtpi2pd XMM0, MM0;
				mov RAX, b;
				movupd [RAX], XMM0;
				emms;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		b[0] += 3.0;
		if(b[0] < 0.0){
			b[0] = -b[0];
		}
		if(b[0] > b[0].epsilon * 8){
			assert(0);
		}


		b[1] -= 2.0;
		if(b[1] < 0.0){
			b[1] = -b[1];
		}
		if(b[1] > b[1].epsilon * 8){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
