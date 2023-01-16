

void main()
{
    string currentMod = GetModuleName();

    if(currentMod == "201TEL")
    {
        SetGlobalBoolean("201TEL_INFO_TERM", TRUE);
    }
    else if(currentMod == "202TEL")
    {
        SetGlobalBoolean("202TEL_INFO_TERM", TRUE);
    }
    else if(currentMod == "203TEL")
    {
        SetGlobalBoolean("203TEL_INFO_TERM", TRUE);
    }
    else if(currentMod == "204TEL")
    {
        SetGlobalBoolean("204TEL_INFO_TERM", TRUE);
    }
    else
    {
    }
}
