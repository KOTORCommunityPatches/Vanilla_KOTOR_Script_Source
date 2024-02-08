// A global conditional for checking the PC's level.
// CFA 10-9-04

int StartingConditional()
{

    // What's the PC level you're checking for?
    int nCompareAmount = GetScriptParameter( 1 );

    // What's the PC's level?
    int nLevel = GetHitDice( GetFirstPC () );

    // If PC's level is greater than or equal to Param1, return TRUE.
    if ( nLevel >= nCompareAmount ) return TRUE;
    else return FALSE;
}
