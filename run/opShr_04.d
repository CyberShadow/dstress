// $HeadURL$
// $Date$
// $Author$

// @author@	tetsuya <tetsuya_member@pathlink.com>
// @date@	2005-04-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3571

module dstress.run.opShr_04;

int main(){
	ulong mask = (ulong.max >> 1);
	assert(mask == (ulong.max >> 1));
	return 0;
}



