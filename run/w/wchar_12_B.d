// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-02-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6225

module dstress.run.w.wchar_12_B;

int main(){
	const wchar[] x = "abcde";

	if(x.sizeof == size_t.sizeof * 2){
		return 0;
	}
}
