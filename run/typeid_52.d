/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_52;

int main(){
	TypeInfo ti = typeid(idouble*);
	assert(!(ti is null));
	return 0;
}
