// $HeadURL$
// $Date$
// $Author$

// @author@	tetsuya <tetsuya_member@pathlink.com>
// @date@	2004-10-29
// @uri@	news:cltnob$2qnk$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2162

module dstress.run.array_initialization_03;

template Foo(T, int L){
	T[L] arr;
	class Bar {
		T[L] arr;
	}
}

void test(){
	alias Foo!(int, 100) foo;
	foreach (int x; foo.arr)
		assert(x == int.init);	// initialized, no problem

	foo.Bar bar = new foo.Bar();
	foreach (int x; bar.arr)
		assert(x == int.init);	// not initialized, fails
}

int main(){
	test();
	return 0;
}
