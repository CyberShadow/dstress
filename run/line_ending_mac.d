// $HeadURL$// $Date$// $Author$// __DSTRESS_TORTURE_BLOCK__ -releasemodule dstress.run.line_ending_mac;int main(){	try{		assert(0);	}catch(Exception e){		checkLineNumber(e);		return 0;	}	assert(0);}/*  * @WARNING@ this code depends on the phobos implementation. * char[]s returned by wrong assertions have to look like: *	 "blah blah (linenumber) blah blah" */void checkLineNumber(Object o){	char[] string=o.toString();		int start;	for(start=0; start<string.length; start++){		if(string[start]=='('){			break;		}	}	int end;	for(end=string.length-1; end>start; end--){		if(string[end]==')'){			break;		}	}	assert(end-start==2);	assert(string[start+1]=='9');}