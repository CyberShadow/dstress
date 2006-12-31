// $HeadURL$
// $Date$
// $Author$

// @author@	Lionello Lunesu <lio@lunesu.com>
// @date@	2006-08-18
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=291
// @desc@	[Issue 291] assertion

module dstress.run.r.double_31_D;

int main(){
	const double r;

	static if(r == 0){
		assert(0);
	}
	
	static if(r != 0){
		return 0;
	}

	assert(0);
}
