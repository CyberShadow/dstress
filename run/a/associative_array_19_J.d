// $HeadURL$
// $Date$
// $Author$

// @author@	Sebastian Beschke <s.beschke@gmx.de>
// @date@	2005-03-25
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6821

// @WARNING@ direct access to Phobos' GC

module dstress.run.a.associative_array_19_J;

import std.gc;

union Key{
	char x;
	ubyte[9] y;
}

class Payload {
	this(Key value) {
		value.x += 1;
		this.value = value;
	}

	Key value;
}

int main(){
	Payload[Key] aa;

	Key[] allKeys;
	static Key a = { 'a' };
	static Key b = { 'b' };
	static Key c = { 'c' };
	allKeys ~= a;
	allKeys ~= b;
	allKeys ~= c;

	foreach(Key key; allKeys) {
		aa[key] = new Payload(key);
	}

	for(size_t step = 0; step < 10000; step++){
		foreach(Key key; allKeys) {
			if(!(key in aa)){
				assert(0);
			}
			Payload p = aa[key];
			if(p.value.x != key.x + 1){
				assert(0);
			}
		}
		std.gc.fullCollect();
	}

	return 0;
}

