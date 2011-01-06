// $HeadURL$
// $Date$
// $Author$

// @author@	SiegeLoard 
// @date@	2010-06-01
// @uri@	http://dsource.org/projects/ldc/ticket/450

interface A
{
	
}

class B : A
{
	byte[2] a;
	real b;
}

void main()
{
	A a = new B();
	B b = cast(B) a;
}


