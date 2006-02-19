// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_ficomp_01_A;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		float f = -3.0;
		short i = 3;
		
		ushort s;
				
		asm{
			fldz;
			fld f;
			ficomp i;
			fstsw s;
			fstp f;
		}

		assert(f == 0.0);
		
		ushort C0 = 1 << 8;
		ushort C2 = 1 << 10;
		ushort C3 = 1 << 14;
		
		assert(s & C0);
		assert(!(s & C2));
		assert(!(s & C3));
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}