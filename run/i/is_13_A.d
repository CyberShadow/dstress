// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-03-15
// @uri@	news:dv9okf$mfp$1@digitaldaemon.com

module dstress.run.i.is_13_A;

class C{
	int dummy;

	int test(int i){
		return i * dummy;
	}
}

int main(){
	if(!is(C.test == delegate)){
		assert(0);	
	}

	return 0;
}