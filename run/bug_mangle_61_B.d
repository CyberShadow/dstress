// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2004-11-18
// @uri@	news:opshmqmfrn5a2sq9@digitalmars.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2306

module dstress.run.bug_mangle_61_B;

template test(T:T[],alias S) {
	char[] foo(T[] a, T[] b) {
		return a ~ S ~ b;
	}
}

char[] comma = ", ";
alias test!(char[],comma).foo catComma;

int main(){
	char[] a = "Heath";
	char[] b = "Regan";
	
	assert("Heath, Regan"==catComma(a,b));

	return 0;
}
