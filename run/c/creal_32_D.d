// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-03-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6425

module dstress.run.c.creal_32_D;

version(Tango) {
import tango.math.IEEE;
} else {
import std.math;
}

int main(){
	creal a = -0.0L - 0.0Li;

	if(!signbit(a.re)){
		assert(0);
	}

	if(!signbit(a.im)){
		assert(0);
	}

	return 0;
}
