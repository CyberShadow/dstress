// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xor_02_D;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ubyte b = 3u;

		asm{
			mov BL, b;
			xor BL, 1;
			mov b, BL;
		}

		if(b != 2u){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
