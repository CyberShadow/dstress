// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	news:dnjnqe$16sv$1@digitaldaemon.com

module dstress.undefined.typedef_10_D;

/*	When typedefs are arithmetically combined, what should be the type of the
 *	result?  The spec gives no indication.  This testcase asserts the way I
 *	feel it should be. (Stewart Gordon)
 */

typedef int Int1;

int main() {
	Int1 i1;

	static assert (is(typeof(i1 + 42) == int));

	return 0;
}
