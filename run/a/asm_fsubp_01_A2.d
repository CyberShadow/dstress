// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fsubp_01_A2;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		double b = -1.2;
		double a = 2.4;

		asm{
			fld1;
			fldz;
			fld a;
			fld b;
			fsubp;
			fstp a;
			fstp b;
		}

		a -= 3.6;

		if(a < 0.0){
			a = -a;
		}

		if(a > a.epsilon * 4.0){
			assert(0);
		}

		if(b != 0.0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
