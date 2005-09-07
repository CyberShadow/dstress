// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_imul_02_A;

int main(){
	version(D_InlineAsm){
		int a = -2;
		int b = 3;
		
		asm{
			mov EAX, a;
			imul EAX, b;
			mov b, EAX;
		}

		assert(b==-6);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}