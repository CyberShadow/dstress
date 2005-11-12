// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com

module dstress.run.bug_cod2_4211_C;

short[1] a;
short[1] b;

short[] concat() {
	return a~b;
}

int main(){
	a[]=1;
	b[]=3;

	short[] arr=concat();

	assert(arr.length==2);
	assert(arr[0]==1);
	assert(arr[1]==3);
	
	return 0;
}

