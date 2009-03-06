// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-07-31
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4638
	
module dstress.run.v.volatile_01_A;

template load( T, int i, size_t sizeofT : 4 = T.sizeof ){
	T load( ref T val ){
		volatile asm{
			naked;
			mov EAX, [EAX];
			ret;
		}
	}
}

int main(){
	int i;
	version (X86) {
		load!(int,1)(i);
		load!(int,2)(i);
	}
	return 0;
}