// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_dec_01_A;

int main(){
	version(D_InlineAsm){
		uint i = 0x00_00_00_00u;
		
		assert(i==0x00_00_00_00u);
		
		asm{
			mov EAX, i;
			dec AL;
			mov i, EAX;
		}
	
		assert(i==0x00_00_00_FFu);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}