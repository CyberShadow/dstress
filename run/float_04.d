// $HeadURL$
// $Date$
// $Author$

module dstress.run.float_04;

int main(){
	float f;
	assert(float.infinity > float.max);
	assert(float.infinity == f.infinity);
	assert(float.infinity == (4.2f).infinity);
	return 0;
}
