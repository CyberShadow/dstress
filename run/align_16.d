// $HeadURL$
// $Date$
// $Author$

// @author@	Robert Atkinson <Robert.Atkinson@gmail.com>
// @date@	2005-05-04
// @uri@	news:d5afkg$1svk$1@digitaldaemon.com

module dstress.run.align_16;

version(X86){
	version(linux) version=testA; // c compiler: gcc
	version(Windows) version(DigitalMars) version=testA; // c compiler: dmc
}

align(64) struct S{
	byte a;
	byte b;
}

int main(){
	S s;
	version(testA){
		if(&s.a-&s.b != -64){
			assert(0);
		}
	}else{
		pragma(msg, "no C alignment data present");
		static assert(0);
	}
	return 0;
}

