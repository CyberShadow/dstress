// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <d3rdclsmail_a_@_t_earthlink_d_._t_net>
// @date@	2005-05-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3881

module dstress.run.o.opDiv_09_B;

bool isIdentical(real x, real y)
{
	long* x64 = cast(long*)&x;
	long* y64 = cast(long*)&y;
	ushort* x16 = cast(ushort*)&x + 4;
	ushort* y16 = cast(ushort*)&y + 4;
	return *x64 == *y64 && *x16 == *y16;
}

int main(){
	real a = -1.0Li / 0.0Li;

	ireal b = -1.0Li;
	ireal c = 0.0Li;
	real d;

	d = b/c;

	assert(isIdentical(a, d));

	return 0;
}
