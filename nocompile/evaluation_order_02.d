module dstress.nocompile.evaluation_order_02;

int main(){
	int a=1;
	int b=2;
	int c = a + (a = b);
	return 0;
}
