// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-11-10
// @uri@	news://cmsg75$rom$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:2240

class Class{
}

typedef Class Alias;

int main(){
	try{
		throw new Alias();
	}catch{
		return 0;
	}
	assert(0);
}
