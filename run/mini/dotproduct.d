extern(C) int printf(char*, ...);

struct vec3
{
    float x,y,z;

    float dot(ref vec3 v)
    {
        return x*v.x + y*v.y + z*v.z;
    }

    void print(char[] n)
    {
        printf("%.*s = vec3(%.4f, %.4f, %.4f)\n", n.length, n.ptr, x,y,z);
    }
}

int main()
{
    printf("Dot Product test\n");

    const f = 0.7071067811865474617;
    vec3 v = vec3(f,f,0);
    vec3 w = vec3(f,0,f);

    v.print("v");
    w.print("w");

    auto dp = v.dot(w);
    printf("v · w = %f\n", dp);
    assert(dp > 0.4999 && dp < 0.5001);

    printf("  SUCCESS\n");
    return 0;
}

