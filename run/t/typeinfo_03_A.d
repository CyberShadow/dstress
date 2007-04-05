// $HeadURL$
// $Date$
// $Author$

// @author@	Madeleine Freudenberg <madou@madou.org>
// @date@	2007-04-01
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1089
// @desc@	[Issue 1089] Unsafe pointer comparison in TypeInfo_Pointer.compare

module dstress.run.t.typeinfo_03_A;

int main(){
	TypeInfo_Pointer t = new TypeInfo_Pointer();
	t.m_next = typeid(int);

	int* a = new int;
	int* b = new int;
	*a = -10;
	*b = 10;

	if(-1 < t.compare(a, b)){
		assert(0);
	}
	if(t.compare(b, a) < 1){
		assert(0);
	}

	return 0;
}
