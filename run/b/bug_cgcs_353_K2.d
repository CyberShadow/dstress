// $HeadURL$
// $Date$
// $Author$

// @author@	Florian Sonnenberger <nairolf@online.de>
// @date@	2005-06-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4377
// @desc@	internal error: ..\ztc\cgcs.c 353

module dstress.run.b.bug_cgcs_353_K2;

int main(){
	cfloat[] arr;
	arr.length=1;
	arr[0]=2.0fi+3.0f;

	arr = arr ~ (1.0fi+5.0f);

	assert(arr[0]==2.0fi+3.0f);
	assert(arr[1]==1.0fi+5.0f);

	return 0;
}
