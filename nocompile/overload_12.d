// $HeadURL$
// $Date$
// $Author$

// @author@	D Trebbien <D_member@pathlink.com>
// @date@	2005-01-07
// @uri@	news:crmrb6$2slf$1@digitaldaemon.com
// @uri@        http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2649

// __DSTRESS_ELINE__ 26

module dstress.nocompile.overload_12;

class A{
	void test(int val){
	}
}

class B : A{
	void test(){
	}
}

int main(){
	B b = new B();
	b.test(1);
	b.test();
	return 0;
}
