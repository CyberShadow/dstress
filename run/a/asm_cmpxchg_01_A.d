// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_cmpxchg_01_A;

int main(){
	version(D_InlineAsm){
		ubyte a = 0;
		ubyte c = 3;
		asm{
			mov AL, 1;
			mov BL, 2;
			cmpxchg c, BL;
			mov a, AL;
		}
	
		assert(c==3);
		assert(a==3);
		
		a = 0;
		c = 3;
		
		asm{
			mov AL, 3;
			mov BL, 2;
			cmpxchg c, BL;
			mov a, AL;
		}
		
		assert(c==2);
		assert(a==3);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}