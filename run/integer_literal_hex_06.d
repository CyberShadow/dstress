// $HeadURL$
// $Date$
// $Author$

module dstress.run.integer_literal_hex_06;

int main(){
	assert( 0X5ul == 5);
	assert( 0X5ul.sizeof == ulong.sizeof);
	assert( 0X5ul.min == ulong.min);
	assert( 0X5ul.max == ulong.max);
	return 0;
}

