// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3756

// __DSTRESS_ELINE__ 16

module dstress.nocompile.class_13;

class A:B{
}

class B:C{
}

class C:A{
}


