// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-09-22
// @uri@	news:dguji0$1e1i$4@digitaldaemon.com

module dstess.run.i.in_out_body_09_D;

typedef int intX;

intX test(intX i)
body {
	return i + 1;
}

int main(){
	assert(test(1)==2);
	return 0;
}