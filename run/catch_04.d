// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-03-21
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3288

// __DSTRESS_DFLAGS__ -debug

module dstress.run.catch_04;

int main() {
	int dummy;

	assert(dummy==0);

	try {
	} catch {
		debug dummy++;
	}

	assert(dummy==0);

	return 0;
}
