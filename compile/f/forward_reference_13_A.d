// $HeadURL$
// $Date$
// $Author$

// @author@	Carlos Santander B. <carlos8294@msn.com>
// @date@	2004-07-12
// @uri@	http://www.digitalmars.com/d/archives/digitalmars/D/bugs/802.html

module dstress.compile.f.forward_reference_13_A;

void bar(void delegate () dg){
	dg();
}

template Template(alias f){
	void caller(int i){
		bar (delegate { f(i); });
	}
}

class A{
	void foo (int i) {
	}

	mixin Template!(foo);
}
