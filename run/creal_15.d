// $HeadURL$
// $Date$
// $Author$

module dstress.run.creal_15;

bool isIdentical(real x, real y)
{
	long* x64 = cast(long*)&x;
	long* y64 = cast(long*)&y;
	ushort* x16 = cast(ushort*)&x + 4;
	ushort* y16 = cast(ushort*)&y + 4;
	return *x64 == *y64 && *x16 == *y16;
}

int main(){
	creal a = creal.nan;
	creal b;

	b = real.nan + ireal.nan;
	assert(isIdentical(a.re, b.re));
	assert(isIdentical(a.im, b.im));

	real c = real.nan;
        
	real d=a.re;
	assert(isIdentical(c, d));

	d=a.im;
	assert(isIdentical(c, d));

	return 0;
}
