// $HeadURL$
// $Date$
// $Author$

// @author@	BCS <BCS@pathlink.com>
// @date@	2006-06-05
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=7399

module dstress.run.f.function_07_B;

class S{
	static int inc(int i){
		return i + 1;
	}
}

int main(){
	int function(int) f;
	S s;

	with(s){
		f = &inc;
	}

	if(f(2) != 3){
		assert(0);
	}

	return 0;
}

