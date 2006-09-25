// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jng_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a = 4;
		int b = 4;

		asm{
			mov EAX, a;
			cmp EAX, b;
			jng save;
			mov EAX, 0;
		save:	mov a, EAX;
		}

		assert(a == 4);

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
