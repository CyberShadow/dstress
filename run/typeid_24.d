/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_24;

int main(){
	TypeInfo ti = typeid(ubyte*);
	assert(!(ti is null));
	return 0;
}