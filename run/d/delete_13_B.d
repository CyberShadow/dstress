// $HeadURL$
// $Date$
// $Author$

module dstess.run.d.delete_13_B;

int main(){
	int* i = (new int[3]).ptr;
	delete i;
	return 0;
}
