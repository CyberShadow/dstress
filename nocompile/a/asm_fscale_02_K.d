// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 22

module dstress.nocompile.a.asm_fscale_02_K;

version(D_InlineAsm_X86){
	version = test;
}else version(D_Inline_Asm_X86_64){
	version = test;
}else{
	static assert(0, "DSTRESS{XFAIL}: no inline x86 asm support");
}

version(test){
	void main(){
		real x;
		
		asm{
			fscale x;
		}
	}
}
