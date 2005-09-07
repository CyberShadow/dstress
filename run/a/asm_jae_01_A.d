// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jae_01_A;

int main(){
	version(D_InlineAsm){
		uint a=5;
		uint b=6;
		
		asm{
			mov EAX, a;
			cmp EAX, b;
			jae save;
			add EAX, 1;
		save:	mov a, EAX;
		}
		
		assert(a == 6);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}