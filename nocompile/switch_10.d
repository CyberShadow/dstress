// $HeadURL$
// $Date$
// $Author$

// duplicate case "123" in switch statement

module dstress.nocompile.switch_10;

int main(){
	char[] array = "123";
	switch(array){
		case "123":{
			assert(0);
			break;
		}case "123":{
			assert(1);
			break;
		}default:{
			return -1; // dummy
		}
	}
		
}
