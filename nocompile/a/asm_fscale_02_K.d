// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fscale_02_K;

void main(){
	version(D_InlineAsm){
		real x;
		
		asm{
			fscale x;
		}
	}
}