/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_37;

int main(){
	TypeInfo ti = typeid(long);
	assert(!(ti is null));
	return 0;
}