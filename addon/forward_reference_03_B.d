// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Newton <redshodan@dot.gmail.dot.dooot.com>
// @date@	2004-12-29
// @uri@	news:cqv5vu$1l76$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2621

module addon.forward_reference_03_B;

import addon.forward_reference_03_A;

class MyClassB{
	typedef int Foo;

	MyClassA test3a;
}

