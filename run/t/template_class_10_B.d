// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-09-26
// @uri@	news:dh9jpe$1uv7$1@digitaldaemon.com

module dstress.run.t.template_class_10_B;

class A (uint D){
	B!(D - 1) b;
	
	this(){
		b = new B!(D-1);
	}
}

class B (uint D){
	uint [D] data;
	uint foo () {
		return data [0];
	}
}

int main(){
	B!(3) b2 = new B!(3);
	assert(b2.data.length==3);

	return 0;
}