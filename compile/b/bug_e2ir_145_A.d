// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>	
// @date@	2006-08-22
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=8194
// @desc@	[Issue 304] Internal error: e2ir.c 145

module /*dsrtess.*/compile.b.bug_e2ir_145_A;

alias void delegate() dg;

void func1( dg aDg = null ){
}

void func2( dg aDg = null ){
}

