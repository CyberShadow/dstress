// $HeadURL$
// $Date$
// $Author$

// @author@	<fvbommel@wxs.nl>
// @date@	2006-07-01
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=233

module dstress.compile.a.asm_01_F;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	void test(){
		while(1){
			asm {
				nop;
			}
		}
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
