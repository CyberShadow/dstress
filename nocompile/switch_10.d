// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-11-17
// @uri@	news:u1gr62-kjv.ln1@kuehne.cn
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2288

// duplicate case "123" in switch statement

// __DSTRESS_ELINE__ 22

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
