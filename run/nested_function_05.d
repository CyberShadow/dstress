// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-02-03
// @uri@	news:cttcv7$2uii$1@digitaldaemon.com

module dstress.run.nested_function_05;

int status;

void check(){
	assert(status==1);
	void main(){
		assert(status==3);
		status+=5;
	}
	status+=2;
	assert(status==3);
	main();
	assert(status==8);
	status+=7;
}

int main(){
	status++;
	assert(status==1);
	check();
	assert(status==15);
	return 0;
}
