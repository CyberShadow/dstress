// $HeadURL$
// $Date$
// $Author$

// @author@	<regan@netwin.co.nz>
// @date@	2006-03-12
// @uri@	news:bug-44-3@http.d.puremagic.com/bugzilla/

module dstress.run.u.union_16_C;

struct B {
        int b1;
        int b2;
}

struct A {
        int a;
	B b;

	new(size_t size){
		if(size != int.sizeof *3){
			assert(0);
		}
		return (new byte[size]).ptr;
	}
}


int main(){
	A* a = new A();

	return 0;
}