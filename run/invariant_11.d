// the name function name "_invariant" isn't forbidden (dmd-0.104 documentation)
module dstress.run.invariant_11;

class MyClass{
        void _invariant(){
                assert(0);
        }

	invariant{
		assert(0);
	}
}

int main(){
        MyClass c = new MyClass();
        return 0;
}

