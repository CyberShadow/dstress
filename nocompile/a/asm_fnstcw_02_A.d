// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 15

module dstress.nocompile.a.asm_fnstcw_02_A;

void main(){
	version(D_InlineAsm_X86){
		
		byte b;
		
		asm{
			fnstcw b;
		}
	}
}