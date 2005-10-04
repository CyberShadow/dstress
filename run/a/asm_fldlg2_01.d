// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fldlg2_01;

int main(){
	version(D_InlineAsm){
		double f = -800.9;
		
		asm{
			fldlg2;
			fstp f;
		}
		
		f -= 0.30102999566398119521373889472449L;
		
		f = (f>0) ? f : -f;
		
		assert(f < f.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}