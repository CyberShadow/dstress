// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Miller <chris@dprogramming.com>
// @date@	2006-01-30
// @uri@	news:op.s36xvez5po9bzi@moe
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=711

module dstress.run.m.mixin_16_B;

int step;

template Mixer(){
	char test(){
		if(step == 2){
			step++;
			return 'M';
		}
	}
}

class FooBar{
	mixin Mixer mixer;

	char test(){
		if(step == 1){
			step++;
			return mixer.test();
		}
	}
}

int main(){
	FooBar f = new FooBar;
	if(step == 0){
		step++;
		if(f.test() == 'M'){
			if(step == 3){
				return 0;
			}
			assert(0);
		}
		assert(0);
	}
}
