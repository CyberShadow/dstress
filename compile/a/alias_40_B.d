// $HeadURL$
// $Date$
// $Author$

// @author@	Kazuhiro Inaba <kinaba@is.s.u-tokyo.ac.jp>
// @date@	2006-12-04
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=643
// @desc@	[Issue 643] New: dmd crashes with fwd-referenced .sizeof via aliases

module dstress.compile.a.alias_40_B;

const int size = X.sizeof;

struct S{
}

alias S X;

static assert(size == S.sizeof);
