// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 16

module dstress.nocompile.s.scope_11_E;

int main(){
	int i = 0;
label:
	while( i++ < 10){
		i++;

		scope(success){
			break label;
		}
	}

	return 1;
}
