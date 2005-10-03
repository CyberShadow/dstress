// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_xchg_01_A;

int main(){
	version(D_InlineAsm){
		ubyte a = 1u;
		ubyte b = 3u;
		
		asm{
			mov AL, a;
			xchg AL, b;
			mov a, AL;
		}
	
		assert(a==3u);
		assert(b==1u);
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}