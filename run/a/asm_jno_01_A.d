// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jno_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a = int.min;
		int b = 1;

		asm{
			mov EAX, a;
			cmp EAX, b;
			jno save;
			mov EAX, 0;
		save:	mov a, EAX;
		}

		assert(a == 0);

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
