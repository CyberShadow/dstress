// $HeadURL$
// $Date$
// $Author$

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2005-02-14
// @uri@	news:opsl6xo4fhaaezs2@robingood
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2982

module dstress.run.alias_15;

class A{
	int foo;
}

class B{
	A a;
}

int main(){
	B b=new B();
	assert(b.a.foo==0);
	with(b){
		alias b.a.foo bar;
		bar++;
	}
	assert(b.a.foo==1);
	return 0;
} 