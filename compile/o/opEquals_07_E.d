// $HeadURL$
// $Date$
// $Author$

// @author@	Reiner Pope <reiner.pope@gmail.com>
// @date@	2007-03-03
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1017
// @desc@	[Issue 1017] CTFE doesn't support (string == string)

module dstress.compile.o.opEquals_07_E;

bool equals(char[] a, char[] b){
	return (a == b);
}

static assert(equals("alphabet", "alphabet"));

