// $HeadURL$
// $Date$
// $Author$

module dstress.run.sizeof_01;

int main(){
	int i[4];
	assert(i.length==4);
	assert(i.sizeof==4*int.sizeof);
	return 0;
}
