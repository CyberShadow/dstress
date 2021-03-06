// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-05-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=173

// __DSTRESS_TORTURE_BLOCK__ -fPIC

module dstress.run.a.asm_movq_02_L;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const double[1] A = [4.1];
		double[1] b;

		asm{
			movq MM0, A;
			movq b, MM0;
			finit;
		}

		if(A[0] != 4.1){
			assert(0);
		}
		if(b[0] != 4.1){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
