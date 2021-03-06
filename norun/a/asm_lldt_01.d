// $HeadURL$
// $Date$
// $Author$

module dstress.norun.a.asm_lldt_01;

int main(){
	version(D_InlineAsm_X86){
		asm{
			mov AX, 0;
			lldt AX;
		}

		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline x86 asm support");
		static assert(0);
	}
}
