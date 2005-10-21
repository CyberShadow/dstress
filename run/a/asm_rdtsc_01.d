 // $HeadURL: svn://dstress.kuehne.cn/run/a/asm_and_01.d $
 // $Date: 2005-09-08 09:37:28 +0200 (Thu, 08 Sep 2005) $
 // $Author: thomask $
 
module dstress.run.a.asm_rdtsc_01;

int main(){
	version(D_InlineAsm){		
		uint a1, a2;
		uint b1, b2;
		
		asm{
			rdtsc;
			mov a1, EDX;
			mov a2, EAX;
			rdtsc;
			mov b1, EDX;
			mov b2, EAX;
		}
		
		ulong a = a1;
		a <<= 32;
		a |= a2;
		
		ulong b = b1;
		b <<= 32;
		b |= b2;
		
		assert(a != b);
		
		if(a < a.max >> 2){
			assert(a < b);
		}else{
			// potential overflow
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}