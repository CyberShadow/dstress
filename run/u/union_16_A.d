// $HeadURL$
// $Date$
// $Author$

// @author@	<regan@netwin.co.nz>
// @date@	2006-03-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=44

module dstress.run.u.union_16_A;

struct A {
        int a;
	union {
		int c;
		B b;
	}

	new(size_t size){
		if(size != int.sizeof *3){
			assert(0);
		}
		return (new byte[size]).ptr;
	}
}

struct B {
        int b1;
        int b2;
}

int main(){
	A* a = new A();

	return 0;
}
