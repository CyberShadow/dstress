// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-05-23
// @uri@	news:bug-154-3@http.d.puremagic.com/bugzilla/

module dstress.run.d.delete_14_A;

class Foo{
	new (size_t s){
		return new byte[s];
	}

	delete(void* p){
		if (p){
			delete p;
		}
	}
}

int main() {
	Foo f = new Foo();
	delete f;

	return 0;
}