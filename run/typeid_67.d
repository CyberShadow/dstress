/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_67;

int main(){
	TypeInfo ti = typeid(dchar);
	assert(!(ti is null));
	return 0;
}