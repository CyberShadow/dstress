// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2004-11-15
// @uri@	news:cn9vah$1shn$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2270

// __DSTRESS_ELINE__ 14

module dstress.nocompile.union_11;

union {
	short s=1234;
	byte b;
}

int main(){
	assert(s==1234);
	return 0;
}
