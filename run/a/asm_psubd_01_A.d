// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_psubd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const int[4] A = [1, 2, 3, int.min];
		const int[4] B = [0, 1, 2, int.max];

		int[4] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			psubd XMM0, XMM1;
			movdqu c, XMM0;
		}

		foreach(int x; c[0 .. c.length -1]){
			if(x != 1){
				assert(0);
			}
		}

		if(c[c.length - 1] != 2){
			assert(0);
		}
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
