// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-07-07
// @uri@	news:dajn75$1hfl$1@digitaldaemon.com
// @desc@	Internal error: ../ztc/cod2.c 4211

module dstress.run.b.bug_cod2_4211_V;

struct Foo{
	bit a, b, c;
}

int bar(Foo e){
	return e.a*1 + e.b*2 + e.c*3;
}

int main() {
	Foo d;
	d.a=true;
	d.b=false;
	d.c=true;
	assert(bar(d)==4);
        return 0;
}