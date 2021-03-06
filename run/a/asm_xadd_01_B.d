// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xadd_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		short a = 0x0102;
		short b = 0x0103;

		asm{
			mov AX, a;
			xadd b, AX;
			mov a, AX;
		}

		if(a != 0x0103){
			assert(0);
		}
		if(b != 0x0205){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
