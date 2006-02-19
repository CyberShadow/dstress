// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_ror_01_B;

int main(){
	version(D_InlineAsm){
		ushort a = 0b1111_1100__0000_0001;
			
		asm{
			ror a, 1;
		}

		assert(a == 0b1111_1110__0000_0000);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}