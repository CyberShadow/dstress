// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle <ben.hinkle@gmail.com>
// @date@	2005-03-25
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3356

module dstress.run.associative_array_09;

int main() {
	int[float] x;
	float d=22;
	x[d] = 44;
	if(44  != x[d]){
		assert(0);
	}
	return 0;
}
