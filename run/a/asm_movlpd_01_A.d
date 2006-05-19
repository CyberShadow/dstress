// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movlpd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		static double[2] A = [3.0, 4.0];
		double b = 5.0;
		double[2] c;

		asm{
			movups XMM0, A;
			movlpd XMM0, b;
			movups c, XMM0;
		}

		if(c[0] != b){
			assert(0);
		}

		if(c[1] != A[1]){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}