// $HeadURL$
// $Date$
// $Author$

// @author@     Derek Parnell <derek@psych.ward>
// @date@       2005-06-20
// @uri@        news:z9tq34fp6es8$.1qbwawa43urrx$.dlg@40tude.net
// @desc@       Internal error: ../ztc/cgcs.c 213

// __DSTRESS_ELINE__ 16

module dstress.nocompile.o.opOrAssign_01_R;

void main(){
	creal[1] f=8.0i;
	f[0]|=1.0i + 2.0;
}