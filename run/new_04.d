// $HeadURL$
// $Date$
// $Author$

module dstress.run.new_04;

char[] status;
int count;

class C{
	byte b;

	this(byte c){
		b = c;
	}

	new (size_t i, char[] msg){
		status = msg;
		count++;

		return (new ubyte[i]).ptr;
	}
}

int main(){
	if(status.length != 0){
		assert(0);
	}

	C c;
	
	if(status.length != 0){
		assert(0);
	}

	if(count != 0){
		assert(0);
	}

	if(c !is null){
		assert(0);
	}

	c = new("abc") C(-4);

	if(status != "abc"){
		assert(0);
	}

	if(count != 1){
		assert(0);
	}
	
	if(c is null){
		assert(0);
	}

	if(c.b != -4){
		assert(0);
	}

	return 0;
}
