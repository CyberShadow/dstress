// $HeadURL$
// $Date$
// $Author$

module dstress.run.enum_02;

enum {
	A,
	B,
	C
}

int main(){
	assert(A==0);
	assert(B==1);
	assert(C==2);
	return 0;
}
