// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-06-21
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4382

module dstress.run.o.opCat_15_S;

int main(){
	char x = 'a';
	char[] arr;

	arr = arr ~ x;
	assert(arr.length==1);
	assert(arr[0]=='a');

	x='b';
	assert(arr[0]=='a');

	return 0;
}
