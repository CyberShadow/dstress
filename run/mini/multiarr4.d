module multiarr4;
extern(C) int printf(char*, ...);

void main()
{
    char[][] a;
    a.length = 2;
    a[0] = "hello";
    a[1] = "world";
    foreach(v;a)
    {
        printf("%.*s\n", v.length, v.ptr);
    }
}
