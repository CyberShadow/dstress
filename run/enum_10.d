// $HeadURL$
// $Date$
// $Author$

// @author@	John Reimer <brk_6502@NO_SPA_M.yahoo.com>
// @date@	2004-12-11
// @uri@	news:cpfvm8$krm$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2534

module dstress.run.enum_10;

struct Struct{
	Enum e;
}

enum Enum{
	A,
	B,
	C
}

int main(){
	Struct s;
	assert(s.e == Enum.A);
	assert(s.e == 0);
	return 0;
}

