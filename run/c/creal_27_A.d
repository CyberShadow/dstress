// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-11-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5360

module dstress.run.c.creal_27_A;

int main(){
	const creal a = 2.0Li + 1.0L;

	static assert(a.im == 2.0L);

	return 0;
}
