// $HeadURL$
// $Date$
// $Author$

// @author@	Geert Mulders <g.c.w.m.mulders@phys.uu.nl>
// @date@	2007-04-16
// @uri@	news:f001t0$47n$1@digitalmars.com
// @desc@	Bug in GDC?

module dstress.run.b.bug_recog_2083_B;

int main(char[][] args){
	double temp = args.length;
	temp = !temp;

	if(0.0 == temp){
		return 0;
	}
}

