// $HeadURL$
// $Date$
// $Author$

module dstress.norun.a.asm_hlt_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		asm{
			hlt;
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline x86 asm support");
	static assert(0);
}
