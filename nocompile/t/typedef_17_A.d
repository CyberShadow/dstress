// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <daiphoenix@lycos.com>
// @date@	2006-07-29
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=270
// @desc@	[Issue 270] Compiler allows and crashes on typedefs of "immediate"-function types

// __DSTRESS_ELINE__ 17

module dstress.nocompile.t.typedef_17_A;

typedef short foo(byte);

void bar(){
	foo x;
}
