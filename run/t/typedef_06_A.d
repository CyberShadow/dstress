// $HeadURL$
// $Date$
// $Author$

// @author@	Mizuno Hiroki <hiroki1124@hotmail.com>
// @date@	2005-05-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3991

module dstress.run.t.typedef_06_A;

class Org{
	int i;
}

typedef Org Ali;

int main(){
	Ali a = new Ali;

	assert(a.i==0);
	a.i=2;
	assert(a.i==2);
	
	return 0;
}

