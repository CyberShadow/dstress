// $HeadURL$
// $Date$
// $Author$

// @author@	dickl <dick221z@yahoo.com>
// @date@	2005-04-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3566

module dstress.run.switch_21;

class T{
}

int main(char[][] args){
	scope T t=new T();

	switch(args.length){
		case 1:
			break;

		default:
			assert(0);
			break;
	}
	return 0;
}

