// $HeadURL$
// $Date$
// $Author$

module dstress.run.foreach_07;

int main(){
	dchar[] array="\u2260";
	int test=0;
	int count=0;
	assert(count==0);
	foreach(int index, char obj; array){
		test+=obj;
		count++;
	}
	assert(count==3);
	assert(test==0x20b);
	return 0;
}
