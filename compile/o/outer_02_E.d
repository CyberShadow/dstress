// $HeadURL$
// $Date$
// $Author$

// @author@	Tyler Knott <tknott@gmail.com>
// @date@	2007-01-22
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=872
// @desc@	[Issue 872] Assertion in expression.c caused by taking typeof of "this.outer" in nested classes.

module dstress.compile.o.outer_02_E;

class Box{
	class Outer{
		class Inner{
			void foo() {
				Box b = this.outer.outer;
			}
		}
	}
}
