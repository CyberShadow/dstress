// $HeadURL$
// $Date$
// $Author$

// @author@	<derick_eddington@nospam.yahoo.nospam.com>
// @date@	2005-03-06
// @uri@	news:d0dfb6$1mrv$1@digitaldaemon.com
// @uri@	nntp://news.digitalmars.com/digitalmars.D.bugs/3091

module dstress.run.offsetof_50;

struct MyStruct{
	ireal x;
}

int main(){
	size_t t = MyStruct.x.offsetof;
	return 0;
}
