// $HeadURL$
// $Date$
// $Author$

// @author@	J C Calvarese <jcc7@cox.net>
// @date@	2004-06-21
// @uri@	news:cb7rbq$2qjd$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=572

module dstress.run.alias_12;

int test(){
	return 0;
}

class StdFile{
	alias test check;
}

int main(){
	StdFile f = new StdFile();
	f.check();
	return 0;
}
