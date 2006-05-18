// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movsd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		haveSSE2!()();
		
		static double[2] A = [1.0, 2.0];
		double b;
		
		asm{
			movupd XMM0, A;
			movsd b, XMM0;
		}
		
		if(b != A[0]){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
