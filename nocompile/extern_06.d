// $HeadURL$
// $Date$
// $Author$

// @author@	Russ Lewis <spamhole-2001-07-16@deming-os.org>
// @date@	2004-12-14
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2566
// @uri@	nntp://news.digitalmars.com/digitalmars.D.bugs:2556

module dstress.nocompile.extern_06;

// missing extern(C) modifier

extern(C) void *wglGetProcAddress(char*);
extern(C) int function() glFunctionFoo;
  
static this() {
   glFunctionFoo = cast(int function()) wglGetProcAddress("glFunctionFoo");
}


