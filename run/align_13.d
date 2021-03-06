// $HeadURL$
// $Date$
// $Author$

// @author@	Robert Atkinson <Robert.Atkinson@gmail.com>
// @date@	2005-05-04
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3882

module dstress.run.align_13;

version(X86){
	version(linux) version=testA; // c compiler: gcc
	version(Windows) version(DigitalMars) version=testA; // c compiler: dmc
}

align(4) struct S{
	align(4) byte a;
	align(4) byte b;
}

int main(){
	S s;
	version(testA){
		if(&s.a-&s.b != -4){
			assert(0);
		}
	}else{
		static assert(0, "DSTRESS{XFAIL}: no C alignment data present");
	}
	return 0;
}

