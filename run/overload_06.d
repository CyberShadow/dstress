// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-07-28
// @uri@	news://ce8u1g$ibj$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:1173

module dstress.run.overload_06;

int main(){
	void foo( int x ){
	}
	
	void foo( short s ){
	}

	return 0;
}
