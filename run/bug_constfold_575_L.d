// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-04-24
// @uri@	news:d4deen$1j8c$1@digitaldaemon.com

module dstress.run.bug_constfold_575_L;

int main(){
	ifloat a=ifloat.min;
	ifloat b=ifloat.max;
	if (a > b){
		assert(0);
	}
	return 0;
}
