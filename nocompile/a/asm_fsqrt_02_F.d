// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsqrt_02_F;

void main(){
	version(D_InlineAsm_X86){
		double x;
		
		asm{
			fsqrt x;
		}
	}
}