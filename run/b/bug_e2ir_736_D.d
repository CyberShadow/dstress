// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-06-01
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=172

module dstress.run.b.bug_e2ir_736_D;

int status;

template Foo(){
	template T(){
		int func() {
			return status;
		}
	}
}

class Baz{
	mixin Foo bar;
}

int main() {
	status = 3;
	if(Baz.bar.T!().func() != 3){
		assert(0);
	}

	return 0;
}

