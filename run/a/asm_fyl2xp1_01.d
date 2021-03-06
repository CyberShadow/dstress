// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fyl2xp1_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float a = 7.0f;

		asm{
			fld a;
			fld a;
			fyl2xp1;
			fstp a;
		}

		if(a != 21.0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
