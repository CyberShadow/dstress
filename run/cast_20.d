// $HeadURL$
// $Date$
// $Author$

// @author@	Tintor Marko <tm030127d@galeb.etf.bg.ac.yu>
// @date@	2005-03-13
// @uri@	news:opsnk5ihes1w2jp2@pentium2
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3159

module dstress.run.cast_20;

bool equal(byte* a, byte* b){
	return (!a || !b) ? (!a && !b) : bug();
} 

bool bug(){
	return false;
}

int main(){
	return 0;
}
