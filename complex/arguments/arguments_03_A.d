// $HeadURL$
// $Date$
// $Author$

// @author@	Kevin Bealer <Kevin_member@pathlink.com>
// @date@	2006-03-13
// @uri@	news:dv37ip$1v97$1@digitaldaemon.com

module /*dstress.*/complex.arguments.arguments_03_A;

import /*dstress.*/complex.arguments.arguments_03_X;

int main(){
	if(7 != dummy(3, 1)){
		assert(0);
	}

	if(4 != dummy(1)){
		assert(0);
	}
	
	return 0;
}
