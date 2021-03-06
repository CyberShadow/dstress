// $HeadURL$
// $Date$
// $Author$

// @author@	<someidiot@earthlink.net>
// @date@	2006-08-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=306
// @desc@	[Issue 306] New: dmd 165 breaks existing code

module dstress.run.d.delegate_19_A;

int status;

void append (char[] content){
	status++;
}

void append (char[] delegate() dg){
	status--;
}

int main(){
	char[] s = "abc";
	
	char[] dummy(){
		return "123";
	}

	append(s);
	if(status != 1){
		assert(0);
	}

	append(dummy);
	if(status != 2){
		assert(0);
	}

	append(&dummy);
	if(status != 1){
		assert(0);
	}
	
	append(dummy());
	if(status != 2){
		assert(0);
	}

	return 0;
}
