// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg@iname.com>
// @date@	2006-07-19
// @uri@	news:bug-258-3@http.d.puremagic.com/issues/
// @desc@	[Issue 258] New: Undefined identifier error for circular import

module /*dstress.*/compile.i.import_17_E;
import /*dstress.*/compile.i.import_17_D;

C test(){
	return new C();
}
