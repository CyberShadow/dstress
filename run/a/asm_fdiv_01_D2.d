// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fdiv_01_D2;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float a = -3.0f;
		float b = 12.0f;
		float c;

		asm{
			fld a;
			fld b;
			fdiv ST,ST(1);
			fstp c;
		}

		if(c != -4.0f){
			assert(0);
		}

		asm{
			fld a;
			fld b;
			fdiv ST(1),ST;
			fstp c;
			fstp c;
		}

		if(c != a/b){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
