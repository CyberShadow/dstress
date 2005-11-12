// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -release
module dstress.run.slice_09;

int main(){
	bit[] a;
	a.length=2;
	a[] = true;
	assert(a[0]);
	assert(a[1]);
	
	bit[] b;
	b.length=2;
	assert(!b[0]);
	assert(!b[1]);

	try{
		b[1..2] = a[0..1];
	}catch(Exception e){
		return 0;
	}
	assert(0);
}
