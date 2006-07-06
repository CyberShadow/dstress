// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pavgb_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		byte[] a = new byte[16];
		a[0] = 1;
		a[1] = -2;
		a[2] = 3;
		a[3] = 4;
		a[4] = 5;
		a[5] = 6;
		a[6] = 7;
		a[7] = 8;
		a[8] = -12;

		byte[] b = new byte[16];
		b[0] = 5;
		b[1] = 2;
		b[2] = -1;
		b[3] = -8;
		b[4] = 15;
		b[5] = 4;
		b[6] = 1;
		b[7] = 4;
		b[8] = -6;

		byte[] c = new byte[16];
		c[0] = 3;
		c[1] = 0;
		c[2] = 1;
		c[3] = -2;
		c[4] = 10;
		c[5] = 5;
		c[6] = 4;
		c[7] = 6;
		c[8] = -8;

		byte[] d = new byte[16];

		asm{
			movdqu XMM0, a;
			movdqu XMM1, b;
			pavgb XMM0, XMM1;
			movdqu d, XMM0;
		}

		for(size_t i = 0; i < c.length; i++){
			if(d[i] != c[i]){
				assert(0);
			}
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
