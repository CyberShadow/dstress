// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsin_02_B;

void main(){
	version(D_InlineAsm_X86){
		short x;
		
		asm{
			fsin x;
		}
	}
}