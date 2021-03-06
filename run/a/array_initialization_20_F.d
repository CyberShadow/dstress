// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-12-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5731

module dstress.run.a.array_initialization_20_F;

typedef idouble X = 4.0i;

int main(){
	X four = cast(X) 4.0i;
	X three = cast(X) 3.0i;

	X[] array;
	array.length = 2;
	array[] = three;
	array.length = 3;

	if(array[0] != three){
		assert(0);
	}

	if(array[1] != three){
		assert(0);
	}

	if(array[2] != four){
		assert(0);
	}

	return 0;
}
