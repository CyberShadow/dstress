// $HeadURL$
// $Date$
// $Author$

// @author@	David Medlock <amedlock@nospam.org>
// @date@	2005-03-09
// @uri@	news:d0nmd8$427$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/3129

module dstress.nocompile.template_class_07;

class Template( alias T1 ){
}

alias Template!( int ) Int;

alias Template!( Template!(Int) ) Bug;