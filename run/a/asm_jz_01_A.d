// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jz_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a=5;
		uint b=5;

		asm{
			mov EAX, a;
			cmp EAX, b;
			jz save;
			add EAX, 1;
		save:	mov a, EAX;
		}

		assert(a == 5);

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
