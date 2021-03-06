// $HeadURL$
// $Date$
// $Author$

module dstress.compile.a.asm_sysexit_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		asm{
			sysexit;
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
