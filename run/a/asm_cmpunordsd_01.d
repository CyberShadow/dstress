// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmplesd_01;

int main(){
	version(D_InlineAsm){
		double a = 1.2;
		double b = 1.1;
		ulong res;

		asm{
			movq XMM0, a;
			cmpsd XMM0, b, 3;
			movq res, XMM0;
		}

		assert(res == 0);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}