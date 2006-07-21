// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_addsd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		double[] a = new double[2];
		a[0] = 1.0;
		a[1] = 20.0;

		double[] b = new double[2];
		b[0] = 4.0;
		b[1] = 10.0;

		asm{
			movupd XMM0, a;
			movupd XMM1, b;
			addsd XMM0, XMM1;
			movupd b, XMM0;
		}

		b[0] -= 5.0;
		if(b[0] < 0.0){
			b[0] = -b[0];
		}

		if(b[0] > double.epsilon * 16){
			assert(0);
		}

		b[1] -= 20.0;
		if(b[1] < 0.0){
			b[1] = -b[1];
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
