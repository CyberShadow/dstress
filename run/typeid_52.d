/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_52;

int main(){
	TypeInfo ti = typeid(idouble*);
	assert(!(ti is null));
	assert(ti.tsize==(idouble*).sizeof);
	assert(ti.toString()=="idouble*");
	return 0;
}
