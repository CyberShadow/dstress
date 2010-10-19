// $HeadURL$
// $Date$
// $Author$

// @author@ Manuel König <manuelk89@gmx.net>
// @date@   2010-10-11
// @uri@    http://d.puremagic.com/issues/show_bug.cgi?id=3092
// @desc@   [Issue 3092] Indexing a tuple produces a tuple containing the indexed element (only happens when indexing type items in a non-type-tuple)

module dstress.compile.t.tuple_27_A;

template TupleBug(values...)
{
    alias values[0] v0;
    alias values[0][0][0][0][0] chain;
    
    /* for debugging this test case
    pragma(msg, "values:    ", values);
    pragma(msg, "v0:        ", v0);
    pragma(msg, "values[0]: ", values[0]);
    pragma(msg, "chain:     ", chain);

    eg. for TupleBug!(int, 1, char) this should print

      values:    tuple(int, 1, char)
      v0:        int
      values[0]: int
      chain:     int[0][0][0][0]
    
    When v0, values[0 and chain are printed correct, but values
    looks like

      values:    tuple((int), 1, (char))
    
    this is most likely only a formatting bug in expToCBuffer in expression.c.
    */

    static assert(is(v0 == int));
    static assert(is(chain == int[0][0][0][0]));
    
    v0    i;
    chain c;
    
    static assert(is(typeof(i) == int));
    static assert(is(typeof(c) == int[0][0][0][0]));
}   

alias TupleBug!(int) _0;
alias TupleBug!(int, "foo") _1;
alias TupleBug!(int, 1, char) _2;
alias TupleBug!(int, ulong, char[], void*) _3;

