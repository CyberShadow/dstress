// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2004-08-10
// @uri@	news:cfa5h3$1hf0$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1326

module dstress.run.const_01;

struct MyStruct{
	int i;
}

const int a = 0;
const MyStruct b = { a };
const MyStruct c = b;

int main(){
	return 0;
}

