/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_16;

int main(){
	TypeInfo ti = typeid(bit);
	assert(!(ti is null));
	return 0;
}
