// $HeadURL$
// $Date$
// $Author$

// @author@	Garett Bass <garettbass@studiotekne.com>
// @date@	2005-11-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5351

module dstress.run.t.template_19_D;

template add(T) {
	T add(T x, T y){
		return x + y;
	}
}

alias add!(int)   addX;
alias add!(float) addX;

int main(){
	assert(addX(1, 2) == 3.0);
	float f = addX(1.3, 2.4);
	f -= 3.7;
	if(f < 0.0){
		f *= -1;
	}

	assert(f < f.epsilon * 4);

	return 0;
}

