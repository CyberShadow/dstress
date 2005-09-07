// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cwde_01;

import std.stdio;

int main(){
	version(D_InlineAsm){
		uint i=0x12_3F_FF_FFu;
		short s=-128;
		
		assert(i==0x12_3F_FF_FFu);
		
		asm{
			mov EAX, i;
			mov AX, s;
			mov i, EAX;
		}
	
		printf("%x\n", i);
		assert(i==0xFF_FF_FF_80u);
		

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}