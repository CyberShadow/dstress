// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-29
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3844

module dstress.run.enum_25;

enum Enum : ulong {
	A = 3,
	B = 10,
	C = 1
}

int main(){
	assert(Enum.init==Enum.A);
	assert(Enum.init==3);
	Enum e;
	assert(e==Enum.A);
	assert(e==3);
	return 0;
}

