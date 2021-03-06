// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rcl_02_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0b1111_1100__0000_0000__0111_1111__1111_1111;

		asm{
			clc;
			mov EAX, a;
			rcl EAX, 1;
			mov a, EAX;
		}

		if(a != 0b1111_1000__0000_0000__1111_1111__1111_1110){
			assert(0);
		}

		asm{
			stc;
			mov EAX, a;
			rcl EAX, 1;
			mov a, EAX;
		}

		if(a != 0b1111_0000__0000_0001__1111_1111__1111_1101){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
