// $HeadURL$
// $Date$
// $Author$

// @author@	Florian Sonnenberger <nairolf@online.de>
// @date@	2005-06-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4377
// @desc@	internal error: ..\ztc\cgcs.c 353

module dstress.run.b.bug_cgcs_353_I2;

int main(){
	float[] arr;
	arr.length=1;
	arr[0]=2.0f;

	arr = arr ~ 1.0f;

	if(arr[0] != 2.0f){
		assert(0);
	}
	if(arr[1] != 1.0f){
		assert(0);
	}

	return 0;
}
