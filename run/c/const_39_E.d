// $HeadURL$
// $Date$
// $Author$

// @author@	Bradley Smith <digitalmars-com@baysmith.com>
// @date@	2006-09-30
// @uri@	news:bug-389-3@http.d.puremagic.com/issues/
// @desc@	[Issue 389] New: Cannot link to std.path.altsep

module dstress.run.c.const_39_E;

const float[0] array;

int main(){
	if(array.length != 0){
		assert(0);
	}
	return 0;
}
