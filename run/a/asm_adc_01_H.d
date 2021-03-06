// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_adc_01_H;

// __DSTRESS_TORTURE_BLOCK__ -fPIC

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		byte a;

		asm{
			clc;
			mov BL, 3;
			adc BL, 5;
			mov a, BL;
		}

		if(a != 8){
			assert(0);
		}

		asm{
			stc;
			mov BL, 3;
			adc BL, 5;
			mov a, BL;
		}

		if(a != 9){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
