// $HeadURL$
// $Date$
// $Author$

// @author@     Valéry <valery@freesurf.fr>
// @date@	2005-04-05
// @uri@	news:d2v0pb$gl$1@digitaldaemon.com

module dstress.run.bug_20050405_04;

int main(){
	bit[] a, b;
	a.length = 257;
	b.length = 257;
	b = a;
	return 0;
}
