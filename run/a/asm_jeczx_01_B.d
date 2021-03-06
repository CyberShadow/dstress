// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jecxz_01_B;

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
			mov ECX, 2_00_00;
			jecxz save;
			add EAX, 1;
		save:	mov a, EAX;
		}

		assert(a == 1);

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
