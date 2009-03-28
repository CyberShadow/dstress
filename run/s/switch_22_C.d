// $HeadURL$
// $Date$
// $Author$

// @author@	<BCS@pathlink.com>
// @date@	2006-06-16
// @uri@	news:e6umde$2ok0$2@digitaldaemon.com
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=729

module dstress.run.s.switch_22_C;

/+
	The validity of this test case is dubious:
	the spec is not explicit about scopes in a switch statement
	and DMD transforms the scope(success) into:
	
	switch(3){
		bool success = true;
		try { default: }
		catch(Object e) { success = false; throw e; }
		finally { if(success) i--; }
	}
+/

int main(){
	int i = 2;
	
	switch(3){
		scope(success) i--;
		
		default:
	}

	if(i != 2){
		assert(0);
	}

	return 0;
}
