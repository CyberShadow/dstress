// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-04-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3701

// __DSTRESS_ELINE__ 22

module dstress.nocompilee.v.version_34;

version(b){
	int main(){
		return 0;
	}
}

version = a;

version (a){
	version = b;
}

