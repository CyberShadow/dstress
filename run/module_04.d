// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas@kuehne.thisisspam.cn>
// @date@	2005-02-12
// @uri@	news:cujja4$5ri$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2952

// __DSTRESS_DFLAGS__ -I.

/*module dstress.run.module_04;*/

int i;

int main(){
	assert(run.module_04.i==0);
	run.module_04.i++;
	assert(run.module_04.i==1);
	return 0;
}

