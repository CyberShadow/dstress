// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2006-02-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6231

// __DSTRESS_ELINE__ 16

module dstress.nocompile.a.alias_30_D;

struct Foo(TYPE) {
}

alias Foo!(int) Foo;
