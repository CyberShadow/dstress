// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2007-04-21
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1174
// @desc@	[Issue 1174] Program hangs creating an array of enums with nonzero initializer

module dstress.run.n.new_29_A;

enum Enum {
	A = 1
}

int main() {
	Enum[] enums = new Enum[1];

	if(Enum.A != enums[0]){
		assert(0);
	}

	return 0;
}
