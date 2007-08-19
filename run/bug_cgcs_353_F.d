// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com


module dstress.run.bug_cgcs_353_F;

uint[1] a;
uint[1] b;

uint[] concat() {
	return a~b;
}

int main(){
	a[]=1;
	b[]=3;

	uint[] arr=concat();

	if(2 != arr.length){
		assert(0);
	}
	if(1 != arr[0]){
		assert(0);
	}
	if(3 != arr[1]){
		assert(0);
	}
	
	return 0;
}

