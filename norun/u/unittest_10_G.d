// $HeadURL$
// $Date$
// $Author$

// @author@	Peter C. Chapin <pchapin@ecet.vtc.edu>
// @date@	2006-12-30
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=776
// @desc@	[Issue 776] Unittest section inside a template does not alway execute.

// __DSTRESS_DFLAGS__ -unittest compile/u/unittest_10_B.d

module /*dstress.*/norun.u.unittest_10_G;
import /*dstress.*/compile.u.unittest_10_B;

int main(){
	B!() b;
	return 0;
}
