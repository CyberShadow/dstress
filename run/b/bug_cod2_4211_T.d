// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-07-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4472
// @desc@	Internal error: ../ztc/cod2.c 4211

module dstress.run.b.bug_cod2_4211_T;

struct Foo{
	ubyte a, b;
}

int bar(Foo e){
	return e.a + e.b;
}

int main() {
	Foo d;
	d.a=1;
	d.b=2;

	if(bar(d) != 3){
		assert(0);
	}
	return 0;
}
