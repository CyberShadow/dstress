// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-08-01
// @uri@	news:dcl3e6$2hjr$1@digitaldaemon.com

// __DSTRESS_TORTURE_REQUIRE__ -g
// __GDB_SCRIPT__ run\nbacktrace
// __GDB_PATTERN__ SIGFPE.*debug_info_08_C[.]d:21

module dstress.norun.d.debug_info_08_C;
 
void dummy(...){
} 

int main(){
	int a=2;
	dummy(a);
	a=a/(a-2); /* divide by zero */
	return 0;
}
