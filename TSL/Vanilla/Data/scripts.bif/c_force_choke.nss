// c_forcechoke
// Does the player have force choke? (Global script)
// CFA 10-10-04

int StartingConditional()
{

    if ( GetSpellAcquired ( 268, GetFirstPC () ) )
    {
        return TRUE;
    }
    return FALSE;

}
