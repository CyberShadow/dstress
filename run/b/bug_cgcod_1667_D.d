// $HeadURL$
// $Date$
// $Author$

// @author@	Sterling Christensen <sterlingchristensen@hotmail.com>
// @date@	2006-06-08
// @uri@	news:op.tcd8nfiww9vrcz@sterling

module dstress.run.b.bug_cgcod_1677_D;

int foo(char[] s){
	short shift = s.length * 2;
	int answer;

	for (size_t i = 0; i < s.length; i++){
		answer = s[i] << shift;
	}

	return answer;
}

int main(){
	if(foo("\u0001") != 4){
		assert(0);
	}

	return 0;
}
