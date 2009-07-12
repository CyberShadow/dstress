// $HeadURL$
// $Date$
// $Author$

module dstress.run.scope_06;

int status;

scope class A{
	int cond;

	this(int cond){
		this.cond=cond;
	}

	~this(){
		if(cond != status){
			assert(0);
		}
		status--;
	}
}

void test(){
	scope A a = new A(-1);
	scope A b = new A(0);
}

int main(){
	test();
	
	if(status==-2){
		return 0;
	}
}
