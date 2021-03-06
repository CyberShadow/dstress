// $HeadURL$
// $Date$
// $Author$

// @author@	<jarrett.billingsley@gmail.com>
// @date@	2006-04-02
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=80

module dstress.run.n.nested_class_04_D;

struct Outer{
	int i;
	
	class Inner{
		int x;

		this(){
			 x = i;
		}
	}

	Inner test(){
		Inner o;

		o = new Inner();

		return o;
	}
}

int main(){
	Outer* outer = new Outer();
	outer.i = 1;
	Outer.Inner inner = outer.test();
	outer.i = 2;
	
	if(inner.x != 1){
		assert(0);
	}

	return 0;
}
