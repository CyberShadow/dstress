// $HeadURL$
// $Date$
// $Author$

// @author@	xs0 <xs0@xs0.com>
// @date@	2005-08-10
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4752
// @desc@	offsetof doesn't work on method-local struct members

module dstress.run.o.offsetof_80_E;

int outer(){
	int test(){
		class Innner{
			int i;
		}

		return Innner.i.offsetof;
	}

	return test();
}

int main(){
	outer();
	return 0;
}
