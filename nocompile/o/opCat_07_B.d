// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-05-26
// @uri@	news:opsrb0xvou23k2f5@nrage.netwin.co.nz
// @desc@	Internal error: e2ir.c 488 (char 00914B24)  (0x811ad08)

// __DSTRESS_ELINE__ 17

module dstress.nocompile.o.opCat_07_B;

int main(){
	char c = '?';
	char[] s;
	s = s ~ c ~ s;
	return 0;
}