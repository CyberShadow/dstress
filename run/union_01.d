// $HeadURL$
// $Date$
// $Author$

module dstress.run.union_01;

union MyUnion{
	int a;
	int b;
}

int main(){
	MyUnion u;
	u.a  = 1;
	assert(u.a==1);
	assert(u.b==1);
	return 0;
}
