// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_05_L;

struct S(dchar[] c){
	auto x = c;
}

int main(){
	auto a = new S!("abc");
	assert(a.x == "abc");

	auto b = new S!(null);
	assert(b.x is null);

	return 0;
}
