// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/byte_06.d,v 1.1 2004/08/20 23:42:52 th Exp $

int main(){
	byte a, b, c;

	// "-"
	a=16; b=-16; c=a-b;
	assert( a ==   16);
	assert( b ==  -16);
	assert( c ==   32);
	a=-16; b=16; c=a-b;
	assert( a ==  -16);
	assert( b ==   16);
	assert( c ==  -32);
	a=-63; b=-28; c=a-b;
	assert( a ==  -63);
	assert( b ==  -28);
	assert( c ==  -35);
	a=63; b=28; c=a-b;
	assert( a ==   63);
	assert( b ==   28);
	assert( c ==   35);
	
	return 0;
}