// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_divss_01;

int main(){
	version(D_InlineAsm){
		float a = -4.2f;
		float b = 2.0f;
		
		asm{
			movd XMM0, a;
			divss XMM0, b;
			movd b, XMM0;
		}

		b = b + 2.1f;
		assert(b< b.epsilon*4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}