// $HeadURL$
// $Date$
// $Author$

// @author@	Carlos Santander <csantander619@gmail.com>
// @date@	2006-05-16
// @uri@	news:e4fsch$i4g$1@digitaldaemon.com

// __DSTRESS_ELINE__ 22

module dstress.nocompile.d.deprecated_22_D;

void baz() {
}

deprecated alias baz foo;

void foo(int i) {
}

void main(){
	foo();
}