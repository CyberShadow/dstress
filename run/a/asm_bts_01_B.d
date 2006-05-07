 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_bts_01_B;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		ushort a = 2;
		ushort b = 0;

		asm{
			mov AX, a;
			mov BX, b;
			bts AX, BX;
			jc error;
			bts AX, BX;
			jnc error;
			bts AX, BX;
			jnc error;
			mov a, AX;
		}
		
		if(a != 3){
			assert(0);
		}

		return 0;
	error:
		assert(0);
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}