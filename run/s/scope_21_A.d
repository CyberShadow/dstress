// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-01-24
// @uri@	news:dr5uqg$2hn7$1@digitaldaemon.com
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=704

module dstress.run.s.scope_21_A;

bool hadDtor = false;

scope class MyClass{
	this(){
		throw new Exception("dummy");
	}

	~this(){
		hadDtor = true;
		throw new Exception("should never throw");
	}
}

int main(){
	try{
		scope MyClass c;
		c = new MyClass();
	}catch{
		if(!hadDtor){
			return 0;
		}else{
			assert(0);
		}
	}

	assert(0);
}
