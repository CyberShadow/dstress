// $HeadURL$
// $Date$
// $Author$

// @author@	 Matti Niemenmaa <deewiant@gmail.com>
// @date@	2007-04-17
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1159
// @desc@	[Issue 1159] Various mixins cause "CompileExp::semantic" message, some crash DMD

// __DSTRESS_ELINE__ 15

module dstress.nocompile.m.mixin_31_C;

void foo(){
	const char[] x = mixin(2).stringof;
}
