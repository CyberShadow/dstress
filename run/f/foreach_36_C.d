// $HeadURL$
// $Date$
// $Author$

// @author@	Serg Kovrov <reg4dyh@inbox.lv>
// @date@	2006-07-30	
// @uri@	news:bug-272-3@http.d.puremagic.com/issues/
// @desc@	[Issue 272] foreach inside anonymous function crashes dmd.exe

module destress.run.f.foreach_36_C;

alias void delegate(char[]) FN;

int main(){
	int status;

	FN fn = delegate(char[] array){
		int count;
		
		foreach (size_t index, char element; array){
			if(index != 0){
				assert(0);
			}
			if(element != 'a'){
				assert(0);
			}
			status++;
		}
	};

	char[] array = "a";
	status = 0;

	fn(array);

	if(status != 1){
		assert(0);
	}

	return 0;
}

