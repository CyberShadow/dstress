// $HeadURL$
// $Date$
// $Author$

// @author@	John Reimer <brk_6502@yahoo.com>
// @date@	2005-02-20
// @uri@	news:pan.2005.02.20.14.41.58.234018@yahoo.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/3030

module dstress.run.const_14;

const int c = 50*50;

const int b = 4*c;
int[4*c]  array;

int main(){
	assert(array.length==4*50*50);
	return 0;
}
