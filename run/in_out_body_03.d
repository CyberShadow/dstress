// $HeadURL$
// $Date$
// $Author$

// @author@	Buchan <kbuchan@xtra.co.nz>
// @date@	2004-11-14
// @uri@	news://opshfzxz0b44buww@simon.homenet
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:2262

module dstress.run.in_out_body_03;

class MyClass{
	int i;
}

void outer(){
	MyClass inner()
	in{
		assert(1);
	}out (result){
		assert(result.i==1);
	}body{
		MyClass s;
		s.i = 1;
		return s;
	}
	assert(inner.i==1);
}

int main(){
	outer();
	return 0;
}
