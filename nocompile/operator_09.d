// $HeadURL$
// $Date$
// $Author$

// @author@	Ivan Senji <ivan.senji@public.srce.hr>
// @date@	2004-08-07
// @uri@	news:cf2ivm$1qu0$1@digitaldaemon.com

// __DSTRESS_ELINE__  22

module dstress.nocompile.operator_09;

class MyClass{
}

void test( ... ){
}

int main(){
	MyClass a = new MyClass();

	test ( -a );
	return 0;
}
