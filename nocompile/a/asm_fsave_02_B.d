// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsave_02_B;

void main(){
	version(D_InlineAsm){
		byte b;
		
		asm{
			fsave b;
		}
	}
}