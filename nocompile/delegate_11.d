// $HeaderURL$
// $Date$
// $Author$

// delegates can only be initialized with non-static member functions

module dstress.nocompile.delegate_11;

union MyUnion{
	static int test(){
		return b;
	}
	byte b;
}

int main(){
	int delegate() dl;
	
	MyUnion u;
	dl = &u.test;

	return 0;
}