// check that BigEndian and LittleEndian can't be defined at the same time

module dstress.run.version_10;

int status;
version(BigEndian){
	version=LittleEndian;
	version(LittleEndian){
		version(BigEndian){
			static this(){
				status=1;
			}
		}
	}
}

int main(){
	assert(status==0);
	return 0;
}
