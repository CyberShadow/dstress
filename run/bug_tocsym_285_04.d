// $HeadURL$
// $Date$
// $Author$

// @author@	Uwe Salomon <post@uwesalomon.de>
// @date@	2005-04-08
// @uri@	news:opsowngukl6yjbe6@sandmann.maerchenwald.net

module dstress.run.bug_tocsym_285_04;

struct Iterator(T){
	T* m_ptr;

	int opCmp(Iterator iter){
		return (m_ptr - iter.m_ptr);
	}
}

int main(char[][] args){
	Iterator!(int) a;
	Iterator!(int) b;

	assert(a==b);	
	int i;
	a.m_ptr=&i;
	assert(a!=b);

	return 0;
}
