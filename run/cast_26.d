// $HeadURL$
// $Date$
// $Author$

// @author@	Kris <fu@bar.com>
// @date@	2005-04-09
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3574

module dstress.run.cast_26;

int main(char[][] args){
	char[] s;
	char[] t="a";

	s = (args.length>0) ? t : null;
	assert(s is t);
	return 0;
}
