// $HeadURL$
// $Date$
// $Author$

// @author@	Anders F Björklund <afb@algonet.se>
// @date@	2005-02-06
// @uri@	news:cu5eci$1asg$1@digitaldaemon.com

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.in_out_body_06;

void test()
in{
	assert(0);
}
body{
}

int main(){
	try{
		test();
	}catch{
		return 0;
	}
	assert(0);
}
