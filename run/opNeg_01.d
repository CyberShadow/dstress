// $HeadURL$
// $Date$
// $Author$

module dstress.run.opNeg_01;

class MyClass{
	int status;

	void opNeg(){
		status++;
	}
}

int main(){
	MyClass c = new MyClass();
	assert(c.status==0);
	-c;
	assert(c.status==1);
	return 0;
}
