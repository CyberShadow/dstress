// $HeadURL$
// $Date$
// $Author$

// @author@ 	Tyro <ridimz_at@yahoo.dot.com>
// @date@	2004-09-22
// @uri@	news:ciqutj$10bq$1@digitaldaemon.com

// __DSTRESS_ELINE__ 15

module dstress.nocompile.foreach_14;

int main(){
	char[] array="abc";
	foreach(int index, char; array){
	}
	return 0;
}
