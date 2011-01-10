import ldc.intrinsics;

extern(C) int printf(char*,...);
extern(C) int scanf(char*,...);

void main()
{
    float f;
    printf("Enter float: ");
    //scanf("%f", &f);
    f = 1.22345;
    float sf = llvm_sqrt(f);
    printf("sqrt(%f) = %f\n", f, sf);

    double d;
    printf("Enter double: ");
    //scanf("%lf", &d);
    d = 2.2311167895435245;
    double sd = llvm_sqrt(d);
    printf("sqrt(%lf) = %lf\n", d, sd);

    real r;
    printf("Enter real: ");
    //scanf("%llf", &r);
    r = 3.2311167891231231234754764576;
    real sr = llvm_sqrt(r);
    printf("sqrt(%Lf) = %Lf\n", r, sr);
}
