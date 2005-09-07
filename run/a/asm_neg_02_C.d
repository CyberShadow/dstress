// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_neg_02_C;

int main(){
	version(D_InlineAsm){
		int y = 0x12_34_56_78;
				
		asm{
			lock;
			neg y;
		}

		assert(y == - 0x12_34_56_78);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}