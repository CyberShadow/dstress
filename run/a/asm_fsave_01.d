// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fsave_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		static if((size_t.sizeof == 4) || (size_t.sizeof == 8)){
			ubyte stateSize = 108;
		}else static if(size_t.sizeof == 2){
			ubyte stateSize = 94;
		}else{
			static assert(0, "unhandled pointer size");
		}

		ubyte* state = (new ubyte[stateSize]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, state;
				fsave [EAX];
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, state;
				fsave [RAX];
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
