// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_test_02_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ushort a = 3u;
		ushort b = 2u;

		asm{
			mov AX, a;
			mov BX, b;
			test BX, AX;
			jz error;
			js error;
			jp error;
		}

		return 0;
	error:
		assert(0);
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}