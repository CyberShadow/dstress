// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2006-12-30
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=777
// @desc@	[Issue 777] -inline: assert() with a non-constant message causes code to not compile

module dstress.run.a.assert_18_B;

void foo(char[] bar){
	assert(true, bar);
}

int main(char[][] args){
	foo(args[0]);
	return 0;
}

