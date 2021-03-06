// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-10-22
// @uri@	news:clbr09$uc6$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2140

// invariant may not call non-static public class member functions (stack overflow)

// __DSTRESS_TORTURE_BLOCK__ -release
// __DSTRESS_ELINE__ 26

module dstress.nocompile.invariant_17;

class MyClass{
	this(){
	}

	int test(){
		return 0;
	}

	invariant(){
		assert(test()!=0);
	}
}

int main(){
	MyClass c = new MyClass();
	return 0;
}
