/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_47;

int main(){
	TypeInfo ti = typeid(real);
	assert(!(ti is null));
	assert(ti.toString()=="real");
	return 0;
}
