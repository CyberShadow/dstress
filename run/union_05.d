// $HeadURL$
// $Date$
// $Author$

module dstress.run.union_05;

union MyUnion{
	int a;
	int b;
}

int main(){
	static MyUnion u;
	assert(u.alignof!=0);
	assert(MyUnion.alignof!=0);
	return 0;
}
