
// @author@	Regan Heat <regan@netwin.co.nz>
// @date@	2004-08-19
// @uri@	news://opsczziyi5a2sq9@digitalmars.com

enum Enum{
	a
}

int test(Enum e){
	bit[] b;
	b = cast(bit[])(cast(bit*)e);
	return 0;
}

int main(){
	Enum e;
	return test(e);
}
