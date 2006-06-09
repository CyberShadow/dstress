// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_shld_02_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0b0000_0000__1000_0000__0000_0000__0000_0000;
		uint b = 0b1010_0000__0000_0000__0000_0000__0000_0000;

		asm{
			mov EBX, b;
			mov CL, 3;
			shld a, EBX, CL;
			mov b, EBX;
		}

		if(a != 0b0000_0100__0000_0000__0000_0000__0000_0101){
			assert(0);
		}
		if(b != 0b1010_0000__0000_0000__0000_0000__0000_0000){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
