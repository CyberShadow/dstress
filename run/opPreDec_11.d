// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3713

module dstress.run.opPreDec_11;

void dummy(...){
}

int main() {
	real x = 9.0L;
	dummy(x);
	real y=--x;
	
	if(y != 8.0L){
		assert(0);
	}

	if(x != 8.0L){
		assert(0);
	}
	
	return 0;
}

