int StartingConditional()
{
    string currentMod = GetModuleName();

    if(currentMod == "201TEL")
    {
        return GetGlobalBoolean("201TEL_INFO_TERM");
    }
    else if(currentMod == "202TEL")
    {
        return GetGlobalBoolean("202TEL_INFO_TERM");
    }
    else if(currentMod == "203TEL")
    {
        return GetGlobalBoolean("203TEL_INFO_TERM");
    }
    else if(currentMod == "204TEL")
    {
        return GetGlobalBoolean("204TEL_INFO_TERM");
    }
    else
    {
        return FALSE;
    }
}

