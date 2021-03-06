// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jpo_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a = int.min;

		asm{
			mov EAX, 8;
			cmp EAX, 4;
			jpo save;
			mov EAX, 0;
		save:	mov a, EAX;
		}

		assert(a == 8);

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
