// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pcmpeqb_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		static byte[16] A = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
		static byte[16] B = [1, 0, byte.min, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 16];
		ubyte[16] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			pcmpeqb XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != 0xFF){
			assert(0);
		}
		if(c[1] != 0){
			assert(0);
		}
		if(c[2] != 0){
			assert(0);
		}
		if(c[3] != 0){
			assert(0);
		}
		if(c[4] != 0){
			assert(0);
		}
		if(c[5] != 0){
			assert(0);
		}
		if(c[6] != 0){
			assert(0);
		}
		if(c[7] != 0){
			assert(0);
		}
		if(c[8] != 0){
			assert(0);
		}
		if(c[9] != 0){
			assert(0);
		}
		if(c[10] != 0){
			assert(0);
		}
		if(c[11] != 0){
			assert(0);
		}
		if(c[12] != 0){
			assert(0);
		}
		if(c[13] != 0){
			assert(0);
		}
		if(c[14] != 0){
			assert(0);
		}
		if(c[15] != 0xFF){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}