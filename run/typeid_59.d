/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_59;

int main(){
	TypeInfo ti = typeid(creal);
	assert(!(ti is null));
	assert(ti.toString()=="creal");
	return 0;
}
