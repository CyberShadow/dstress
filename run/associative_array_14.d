// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle <ben.hinkle@gmail.com>
// @date@	2005-03-25
// @uri@	news:d247b2$mr$1@digitaldaemon.com

module dstress.run.associative_array_14;

int main() {
	int[creal] x;
	creal d=22;
	x[d] = 44;
	assert( x[d] == 44 );
	return 0;
}