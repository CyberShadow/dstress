// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_je_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a;

		asm{
			mov EAX, 0;
			cmp EAX, 0;
			je save;
			add EAX, 1;
		save:	mov a, EAX;
		}

		assert(a == 0);

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
