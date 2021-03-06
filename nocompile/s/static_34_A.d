// $HeadURL$
// $Date$
// $Author$

// @author@	Kris <du@bar.com>
// @date@	2005-10-28
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5233

// __DSTRESS_ELINE__ 17

module dstress.nocompile.s.static_34_A;

int main(){
	class C{
		static C create(){
			// ERROR: needs context for newing nested class
			return new C;
		}
	}

	C c1 = new C;
	assert(c1);
	
	C c2 = c1.create();
	assert(c2);

	C c3 = C.create();
	assert(c3);

	return 0;
}

