// $HeadURL$
// $Date$
// $Author$

// @author@	<sean@f4.ca>
// @date@	2006-03-10
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=31

module dstress.run.i.is_10_F;

typedef int T = 3;

int main(){
	if(is(T == enum)){
		assert(0);
	}

	return 0;
}
