int main(){
	char[] string=r"\U";
	assert(string.length==2);
	assert(string[0]=='\\');
	assert(string[1]=='U');
	return 0;
}
