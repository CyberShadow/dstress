// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pinsrw_01_D;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		ushort[] A = [cast(ushort)1, 2, 3, 4, 5, 0xFFFF, 7, 0];
		ushort* a = A.ptr;

		ushort* b = (new ushort[8]).ptr;

		ushort x = 0x34CD;
		ushort y = 0x0010;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				pinsrw XMM0, x, 0;
				pinsrw XMM0, y, 7;
				mov EAX, b;
				movdqu [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movdqu XMM0, [RAX];
				pinsrw XMM0, x, 0;
				pinsrw XMM0, y, 7;
				mov RAX, b;
				movdqu [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(b[0] != 0x34CD){
			assert(0);
		}

		if(b[1] != 2){
			assert(0);
		}

		if(b[2] != 3){
			assert(0);
		}

		if(b[3] != 4){
			assert(0);
		}

		if(b[4] != 5){
			assert(0);
		}

		if(b[5] != 0xFFFF){
			assert(0);
		}

		if(b[6] != 7){
			assert(0);
		}

		if(b[7] != 0x0010){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
