module sqrts;

version(Tango)
{
    import tango.stdc.math;
}
else
{
    import std.math;
}

double sqrt(double d)
{
    return tango.stdc.math.sqrt(d);
}

void main()
{
}
