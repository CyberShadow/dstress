// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_frstor_02_F;

void main(){
	version(D_InlineAsm){
		float x;
		
		asm{
			frstor x;
		}
	}
}