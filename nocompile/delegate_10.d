// $HeaderURL$
// $Date$
// $Author$

// delegates can only be initialized with non-static member functions

// __DSTRESS_ELINE__ 20

module dstress.nocompile.delegate_10;

union MyUnion{
	int test;
	byte b;
}

int main(){
	int delegate() dl;
	
	MyUnion u;
	dl = &u.test;

	return 0;
}
