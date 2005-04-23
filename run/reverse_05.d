// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-04-23
// @uri@	news:3rnpj2-3qi.ln1@lnews.kuehne.cn

module dstress.run.reverse_05;

int main(){
	char[] a;
	char[] r;

	a = "abcd".dup;
	r = a.reverse;
	assert(r=="dcba");
	assert(r.ptr==a.ptr);

	a = "-\U000000A1\U00000901\U0000FFEE\U00010000\U000FFFFD_".dup;
	r = a.reverse;
	assert(r == "_\U000FFFFD\U00010000\U0000FFEE\U00000901\U000000A1-");
	assert(a.ptr==r.ptr);

	return 0;
}
