// $HeadURL$
// $Date$
// $Author$

// @author@	James Dunne <james.jdunne@gmail.com>
// @date@	2005-08-28
// @uri@	news:dethn0$1gn8$1@digitaldaemon.com

module dstress.run.b.bug_cgcs_353_D3;

class Foo {
	this(){
	}
}

int main(){
	Foo[] foos;

	assert(foos.length==0);

	foos[] = foos[] ~ new Foo();
	
	assert(foos.length==1);
	
	return 0;
}