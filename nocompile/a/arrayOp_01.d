// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	news:dnjnqe$16sv$1@digitaldaemon.com

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.arrayOp_01;

void main() {
	static int[] x = [ 3, 4, 6 ];
	int[] z = x[] + 8;
}