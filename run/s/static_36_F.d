// $HeadURL$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-03-18
// @uri@	news:dvgq34$22hv$1@digitaldaemon.com

module dstress.run.c.static_36_F;

static z = r;
const float r = 2.0f;

int main(){
	auto x = z;

	static assert(is(x == float));

	if(x != 2.0f){
		assert(0);
	}

	return 0;
}
