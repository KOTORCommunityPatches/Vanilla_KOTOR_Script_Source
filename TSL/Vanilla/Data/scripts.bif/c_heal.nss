// This checks to see if the player needs healing.
// CFA 10-10-04

int StartingConditional()
{
    object obj1 = GetFirstPC ();

    int nHealAmount = GetMaxHitPoints(obj1) - GetCurrentHitPoints(obj1);
    if( nHealAmount == 0 )
    {
        return TRUE;
    }
    return FALSE;

}
