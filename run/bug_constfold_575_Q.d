// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-04-24
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3794

module dstress.run.bug_constfold_575_Q;

int main(){
	ireal a=ireal.min;
	ireal b=ireal.max;
	if (a > b){
		assert(0);
	}
	return 0;
}
