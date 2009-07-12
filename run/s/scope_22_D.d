// $HeadURL$
// $Date$
// $Author$

// @author@	yama <yama_member@pathlink.com>
// @date@	2006-02-26
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6373

// __DSTRESS_DFLAGS__ -version=always

module dstress.run.s.scope_22_D;

scope class C{
	char[] toString(){
		return "hallo bug";
	}
}

int main(){
	version(always){
		scope C c;
		c = new C();
	}

	if(c.toString() != "hallo bug"){
		assert(0);
	}

	return 0;
}



