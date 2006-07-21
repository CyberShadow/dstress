// $HeadURL$
// $Date$
// $Author$

// @author@	Carlos Santander <csantander619@gmail.com>
// @date@	2006-05-16
// @uri@	news:e4fsch$i4g$1@digitaldaemon.com

module dstress.run.d.deprecated_22_B;

int status;

void baz() {
	status--;
}

void foo(int i) {
	status += i;
}

deprecated alias baz foo;

int main(){
	status = 90;

	foo(2);

	if(status != 92){
		assert(0);
	}

	return 0;
}
