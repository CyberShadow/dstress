// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_psrldq_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const ulong[2] A = [(1 << 63) | 1, (1 << 63) | 3];
		const long[2] B = [8, 1];
		ulong[2] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			psrldq XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != (1 << 62)){
			assert(0);
		}
		if(c[1] != (3 << 62) | 1){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
