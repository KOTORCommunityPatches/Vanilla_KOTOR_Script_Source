// This checks to see if T3 needs healing.
// CFA 10-10-04

int StartingConditional()
{
    object obj1 = GetObjectByTag ("T3M4");

    int nHealAmount = GetMaxHitPoints(obj1) - GetCurrentHitPoints(obj1);
    if( nHealAmount == 0 )
    {
        return TRUE;
    }
    return FALSE;

}
