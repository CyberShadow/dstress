// $HeadURL$
// $Date$
// $Author$

// @author@	tetsuya <tetsuya_member@pathlink.com>
// @date@	2004-13-13
// @uri@	news:cpk4vq$1m5a$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2546

module dstress.run.template_14;

template T(){
	class A {
		this() {
			T!().a = this;
		}
	}
	A a;
}

int main(){
	return 0;
}
