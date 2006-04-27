// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_REQUIRE__ D_InlineAsm_X86

module dstress.run.a.asm_adc_01_H;

int main(){
	version(D_InlineAsm_X86){
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
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
