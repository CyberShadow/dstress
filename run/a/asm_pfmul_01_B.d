// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfmul_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		have3DNow!()();

		float* a = (new float[2]).ptr;
		a[0] = -3.0f;
		a[1] = 7.0f;
		
		float* b = (new float[2]).ptr;
		b[0] = 2.0f;
		b[1] = 8.0f;
		
		float* c = (new float[2]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movq MM0, [EAX];
				mov EAX, b;
				movq MM1, [EAX];
				pfmul MM0, MM1;
				mov EAX, c;
				movq [EAX], MM0;
				emms;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movq MM0, [RAX];
				mov RAX, b;
				movq MM1, [RAX];
				pfmul MM0, MM1;
				mov RAX, c;
				movq [RAX], MM0;
				emms;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != -6.0f){
			assert(0);
		}
		if(c[1] != 56.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
