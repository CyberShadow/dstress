// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rcpss_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		float[] a = new float[4];
		a[0] = 2.0f;
		a[1] = 1.0f;
		a[2] = 0.5f;
		a[3] = -4.0f;

		float[] b = new float[4];
		b[0] = 5.0f;
		b[1] = 6.0f;
		b[2] = 7.0f;
		b[3] = 8.0f;

		float[] c = new float[4];

		asm{
			movups XMM0, a;
			movups XMM1, b;
			rcpss XMM1, XMM0;
			movups c, XMM1;
		}

		c[0] -= 0.5f;
		if(c[0] < 0.0f){
			c[0] = -c[0];
		}
		if(c[0] > 0.5f / 4096.0f){
			assert(0);
		}

		if(c[1] != b[1]){
			assert(0);
		}

		if(c[2] != b[2]){
			assert(0);
		}

		if(c[3] != b[3]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
