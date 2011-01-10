module virtcall;

extern(C) int printf(char*, ...);

class C
{
    override char[] toString()
    {
        return "overridden";
    }
}

void main()
{
    C c = new C;
    auto s = c.toString();
    printf("%.*s\n", s.length, s.ptr);
}
