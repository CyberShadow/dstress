// $HeadURL$
// $Date$
// $Author$

// @author@	Nazo Humei <lovesyao@hotmail.com>
// @date@	2006-11-25
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=594
// @desc@	[Issue 594] New: can't cast arrayliteral statically

module dstress.compile.c.cast_33_A;

const char[] a = "abcd";
const ubyte[] b = cast(ubyte[]) a;

static assert(b == ['a', 'b', 'c', 'd']);
