// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sub_02_H;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int i = 0x12_3F_00_00;
		short s = 1;

		asm{
			mov ECX, i;
			sub CX, s;
			mov i, ECX;
		}

		if(i != 0x12_3F_FF_FF){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
