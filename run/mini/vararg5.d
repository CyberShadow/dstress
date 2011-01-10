module vararg5;

version(Tango)
{
    import tango.core.Vararg;
}
else
{
    import std.c.stdarg;
}

extern(C) int printf(char*, ...);
void func(...)
{
    char[] str = va_arg!(char[])(_argptr);
    {printf("%.*s\n", str.length, str.ptr);}
}
void main()
{
    char[] str = "hello";
    func(str);
}
