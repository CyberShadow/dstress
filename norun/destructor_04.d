// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 10

module dstress.norun.destructor_04;

static ~this(){
	assert(0);
}

int main(){
	return 0;
}
