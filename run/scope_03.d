// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-09-11
// @uri@	news:chtj6t$24bm$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/1821
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1035

module dstress.run.scope_03;

int status;

scope class ScopeClass{
	~this(){
		if(0 != status){
			assert(0);
		}
		status--;
		throw new Exception("error msg");
	}
}

void test(){
	if(0 != status){
		assert(0); 
	}
	scope ScopeClass ac = new ScopeClass();
}

int main(){
	try{
		test();
	}catch{
	}
	
	if(status==-1){
		return 0;
	}
	assert(0);
}
