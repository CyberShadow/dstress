// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-03-01
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6407

// __DSTRESS_ELINE__ 15

module dstress.nocompile.o.opDiv_14_C;

void main(){
	bool b = true;
	b = b / 1.1i;
}
