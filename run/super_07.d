// $HeadURL$
// $Date$
// $Base$

// @author@     Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@       200-12-10
// @uri@        news:sr8p82-lu3.ln1@kuehne.cn
// @url@        nntp://digitalmars.com/digitalmars.D.bugs/2528

module dstress.run.super_07;

class Parent{
}

class Child : Parent {
	this(){
		super();
	}
}

int main(){
	Child o = new Child();
	return 0;
}
