module union6;

struct S
{
    byte a;
    byte b;
}
union U
{
    byte a;
    byte b;
    S c;
}

void main()
{
    U u;
    auto a = u.c.b;
    //auto c = u.s.l;
}
