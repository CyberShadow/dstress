// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-03-01
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6407

// __DSTRESS_ELINE__ 15

module dstress.nocompile.o.opSubAssign_19_D;

void main(){
	bool b = true;
	b -= 2.2i;
}
