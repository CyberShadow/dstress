// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2004-06-23
// @uri@	news:opr90q0zkf5a2sq9@digitalmars.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=574

// __DSTRESS_ELINE__ 20

module dstress.nocompile.class_04;

interface A {
}

struct B {
}

class C : B,A {
}
