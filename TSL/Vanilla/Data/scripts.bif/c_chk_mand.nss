int StartingConditional()
{
    int nParam = GetScriptParameter(1);

    if(!GetLocalBoolean(OBJECT_SELF, nParam))
    {
        if( GetInfluence(NPC_CANDEROUS) >= 90)
        {
            return TRUE;
        }
    }
    return FALSE;
}
