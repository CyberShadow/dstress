// $HeadURL$
// $Date$
// $Author$

// @author@	David Medlock <noone@nowhere.com>
// @date@	2005-09-27
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5076

// __DSTRESS_ELINE__ 16

module dstress.nocompile.b.bug_expression_5818_D;

class X(T) {
	void add( X val ){
		uint test = 1;
		if ( test > val ){
		}
	}
}

class MyStruct {
	int value;
}

void main(){
	X!(MyStruct) x = new X!(MyStruct)();
}
