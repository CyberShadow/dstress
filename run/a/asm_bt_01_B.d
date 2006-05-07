 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_bt_01_B;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		ushort a = 0x00_01;
		ushort b = 0x00_00;

		asm{
			mov BX, b;
			bt  a, BX;
			jnc error;
			mov BX, a;
			bt  a, BX;
			jc error;
		}
		
		return 0;
	error:
		assert(0);
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}