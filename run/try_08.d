// $HeadURL$
// $Date$
// $Author$

module dstress.run.try_08;

int main(){
	int check=0;
	assert(check==0);
	try{
		throw new Exception("mesg");
	}catch{
		check++;
	}finally{
		check++;
	}
	assert(check==2);
	return 0;
}
