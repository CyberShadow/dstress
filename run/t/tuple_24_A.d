// $HeadURL$
// $Date$
// $Author$

// @author@	Reiner Pope <reiner.pope@gmail.com>
// @date@	2007-04-08
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1114
// @desc@	[Issue 1114] Indexed tuple cannot be used in inheritance declaration

module dstress.run.t.tuple_24_A;

template Tuple(T...){
	alias T Tuple;
}

alias Tuple!(Object) Foo;

class Bar : Foo[0]{
}

int main(){
	Bar b = new Bar();
	return 0;
}
