// $HeadURL$
// $Date$
// $URL$

// @author@	no@where.com
// @date@	2005-04-24
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3797

module dstress.run.const_18;

const int c = b * b;
const int a = 1;
const int b = a * 3;

template T(int n){
	int[n] x;
}

mixin T!(c);

int main(){
	assert(x.length==9);
	return 0;
}
