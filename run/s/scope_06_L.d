// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.scope_06_L;

int main(){
	int a;
	
	try{
		scope(failure){
			if(a != 11){
				assert(0);
			}

			a++;
		}

		scope(exit){
			if(a != 10){
				assert(0);
			}

			a++;
		}

		scope(success){
			return 1;
		}

		
		if(a!=0){
			assert(0);
		}else{
			a = 10;
		}

		throw new Exception("msg");
	}catch(Exception e){
		if(a != 12){
			assert(0);
		}

		return 0;
	}

	assert(0);

}