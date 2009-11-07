// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2006-12-18
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=697
// @desc@	[Issue 697] No const folding on asm db,dw, etc

module dstress.run.a.asm_ds_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int i = 3;
		const short x = 0x4040;

		asm{
			mov EAX, i;
			ds x;
			mov i, EAX;
		}

		assert(i == 5);

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
