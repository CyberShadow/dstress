module nested9;
extern(C) int printf(char*, ...);

void main()
{
    int i = 42;
    int func()
    {
        return i + 1;
    }
    int j = func();
    printf("j = %d\n", j);
    assert(j == 43);
}
