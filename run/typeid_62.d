/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_62;

int main(){
	TypeInfo ti = typeid(char[]);
	assert(!(ti is null));
	assert(ti.toString()=="char[]");
	return 0;
}
