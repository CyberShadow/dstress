// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fldlg2_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		double f = -800.9;

		asm{
			fldlg2;
			fstp f;
		}

		f -= 0.30102999566398119521373889472449;

		if(f < 0.0){
			f = -f;
		}

		if(f > f.epsilon * 4.0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
