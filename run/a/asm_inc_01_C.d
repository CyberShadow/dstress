// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_inc_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint i = 0xFF_FF_FF_FFu;

		asm{
			mov EAX, i;
			inc EAX;
			mov i, EAX;
		}

		if(i != 0x00_00_00_00u){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
