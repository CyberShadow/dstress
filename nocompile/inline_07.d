// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-02-19
// @uri@	news:cv77ei$27mv$3@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3017

// __DSTRESS_TORTURE_BLOCK__ -release
// __DSTRESS_ELINE__ 22

module dstress.nocompile.inline_07;

struct MyStruct{
	int bug() {
		return 3;
	}
}

int main(){
	assert(MyStruct.bug()==3);
	return 0;
}
