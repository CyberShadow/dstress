// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.this_11_B;

int status;

class A{
	this(){
		if(status != 1){
			assert(0);
		}
		status++;
	}
}

class B : A{
}

class C : B{
	this(){
		if(status != 2){
			assert(0);
		}
		status++;
	}
}

int main(){
	status = 1;

	C c = new C();

	if(status != 3){
		assert(0);
	}
	
	return 0;
}
