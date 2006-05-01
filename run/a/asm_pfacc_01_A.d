// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfacc_01_A;

int main(){
	version(D_InlineAsm_X86){
		const float[2] A = [123.0f, -456.0f];
		const float[2] B = [12.0f, 17.0f];
		float[2] c;

		asm{
			movq MM0, A;
			pfacc MM0, B;
			movq c, MM0;
		}

		if(c[0] != -333.0f){
			assert(0);
		}
		if(c[1] != 29.0f){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
