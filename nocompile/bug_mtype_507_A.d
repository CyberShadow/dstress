// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-01-22
// @uri@	news:csvvet$2g4$1@digitaldaemon.com
// @uri@	nntp://news.digitalmars.com/digitalmars.D.bugs/2741

// __DSTRESS_ELINE__ 17

module dstress.nocompile.bug_mtype_507_A;

int main(){
	Object o;
	int i;
	if(i==o){
		return -1;
	}
	return 0;
}
