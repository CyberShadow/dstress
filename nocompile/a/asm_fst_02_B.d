// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 22

module dstress.nocompile.a.asm_fst_02_B;

version(D_InlineAsm_X86){
	version = test;
}else version(D_Inline_Asm_X86_64){
	version = test;
}else{
	static assert(0, "DSTRESS{XFAIL}: no inline x86 asm support");
}

version(test){
	void main(){
		ubyte b;
		
		asm{
			fst b;
		}
	}
}