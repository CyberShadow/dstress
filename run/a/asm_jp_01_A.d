// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jp_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a = int.min;

		asm{
			mov EAX, 0;
			mov AL, 1;
			cmp AL, 1;
			jp save;
			mov EAX, 0;
		save:	mov a, EAX;
		}

		assert(a == 1);

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
