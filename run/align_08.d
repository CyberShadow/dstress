// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle <bhinkle@mathworks.com>
// @date@	2005-03-23
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3313

// @WARNING@	imports Phobos' gc

module dstress.run.align_08;

import std.gc;

struct S{
	char[] font_face;
}

int main(){
	S[] x;

	for (int i=0;i<3;i++) {
		S s;
		s.font_face="font face".dup;
		x ~= s;
	}

	fullCollect();

	assert(x[0].font_face=="font face");
	assert(x[1].font_face=="font face");

	return 0;
}