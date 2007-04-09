// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-02-09
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6193

module dstress.run.a.alias_31_D;

template StructOf(Type){
	struct StructOf{
		Type val;

		template ref(){
			alias val ref;
		}
	}
}

int main(){
	auto c = new StructOf!(int)();
	int x = 3;

	c.ref!() = x;

	if(c.ref!() == 3){
		return 0;
	}
}

