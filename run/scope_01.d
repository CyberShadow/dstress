// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-09-11
// @uri@	news:chtj6t$24bm$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1821

module dstress.run.scope_01;

scope class ScopeClass{
	this(){
		throw new Exception("error msg");
	}
	~this(){
		throw new Exception("should never throw");
	}
}

int main(){
	try{
		scope ScopeClass ac = new ScopeClass();
	}catch{
		return 0;
	}
	assert(0);
}
