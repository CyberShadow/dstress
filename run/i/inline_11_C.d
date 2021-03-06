// $HeadURL$
// $Date$
// $Author$

// @author@	Victor Nakoryakov <nail-mail@mail.ru>
// @date@	2005-06-25
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4396

module dstress.run.i.inline_11_C;

struct Struct{
	int i;

	Struct foo(){
		Struct s;
		int a = i;
		int b = s.i;
		with (s) {
			i+=2;
		}
		assert(a==i);
		assert(b+2==s.i);
		return s;
	}

	Struct bar(){
		return Struct.foo();
	}
}

int main(){
	Struct s;
	assert(s.bar().i==2);
	return 0;
}
