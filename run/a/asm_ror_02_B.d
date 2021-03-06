// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_ror_02_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0b1111_1100__0000_0000__0111_1111__1111_1011;

		asm{
			mov EAX, a;
			ror AX, 1;
			mov a, EAX;
		}

		if(a != 0b1111_1100__0000_0000__1011_1111__1111_1101){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
