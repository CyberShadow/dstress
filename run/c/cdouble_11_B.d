// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-doop@kuehne.cn>
// @date@	2006-11-19
// @uri@	news:bug-575-31@http.d.puremagic.com/issues/
// @desc@	[Issue 575] New: wrong evaluation of (creal * 2 + 1i)

module dstress.run.c.cdouble_11_B;

int main(){
	if(1.0 + 2.0i) * 2.0 + 1.0i != 2.0 + 5.0i){
		assert(0);
	}
	return 0;
}

