// $HeadURL$
// $Date$
// $Base$

// @author@     Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@       200-12-10
// @uri@        news:sr8p82-lu3.ln1@kuehne.cn
// @url@        nntp://digitalmars.com/digitalmars.D.bugs/2528

// Object has no constructor

module dstress.nocompile.super_06;

class MyClass : Object{
	this(){
		super();
	}
}

int main(){
	MyClass o = new MyClass();
	return 0;
}