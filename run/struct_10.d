// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-08-06
// @uri@	news:cf0r1f$u4n$1@digitaldaemon.com

module dstress.run.struct_10;

struct MyStruct{
	static MyStruct opCall(){
		MyStruct s;
		return s;
	}
}

int main(){
	MyStruct s = MyStruct();
	return 0;
}
