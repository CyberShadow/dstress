// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3713

module dstress.run.opPreDec_08;

void dummy(...){
}

int main() {
	ulong x = 9;
	dummy(x);
	int y=--x;
	assert(y==8);
	assert(x==8);
	return 0;
}

