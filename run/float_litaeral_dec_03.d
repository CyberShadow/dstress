// $HeadURL$
// $Date$
// $Author$

module dstress.run.float_litaeral_dec_03;

int main(){
	float a = 1_2_._3__________f;
	float b = 123.0f / 10.0f;
	assert(a==b);
	return 0;
}
