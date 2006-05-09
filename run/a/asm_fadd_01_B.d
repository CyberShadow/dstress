// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fadd_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		double a = -1.0;
		double b = 3.5;
		
		asm{
			fld a;
			fadd b; 
			fst a;
		}
		
		a -= 2.5;
		
		a = (a > 0.0) ? a : -a;
		
		if(a > a.epsilon * 4.0){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
