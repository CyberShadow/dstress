// $HeadURL$
// $Date$
// $Author$

// @author@	Derek Parnell <ddparnell@bigpond.com>
// @date@	2006-10-02
// @uri@	news:bug-391-3@http.d.puremagic.com/issues/
// @desc@	[Issue 391] New: .sort and .reverse break utf8 encoding

module dstress.run.r.reverse_08_A;

int main(){
	char[] a = "a\U00000081b\U00002000c\U00010000";
	char[] b = a.reverse;

	if(b != "\U00010000c\U00002000b\U00000081a"){
		assert(0);
	}

	if(b.reverse != a){
		assert(0);
	}

	return 0;
}
