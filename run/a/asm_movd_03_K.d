// $HeadURL$
// $Date$
// $Author$

// @author@	pmoore <pmoore_member@pathlink.com>
// @date@	2006-03-14
// @uri@	news:dv76et$oe1$1@digitaldaemon.com

module dstress.run.a.asm_movd_03_K;

int main(){
	version(D_InlineAsm_X86){
		ulong l = 0x4444_AAAA_CCCC_1111;
		uint i = 0x33FF_FF33;
		asm{
			movdqu XMM5, l;
			mov EBX, i;

			movd XMM5, EAX;
			cmp i, EBX;
			jne bug;

			movd XMM5, ECX;
			cmp i, EBX;
			jne bug;

			movd XMM5, EDX;
			cmp i, EBX;
			jne bug;
		}

		return 0;
bug:
		assert(0);
	}else{
		pragma(msg, "no X86 inline asm support");
		return 0;
	}
}