// $HeadURL$
// $Date$
// $Author$

// @author@	Bastiaan Veelo <Bastiaan.N.Veelo@ntnu.no>
// @date@	2004-09-23
// @uri@	news:ciutbq$1lue$1@digitalmars.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1932

module dstress.run.template_class_05;

class Parent(Type){
}

class Child : Parent!(){
}

class Parent(){
}

int main(){
	Child c = new Child();
	return 0;
}
