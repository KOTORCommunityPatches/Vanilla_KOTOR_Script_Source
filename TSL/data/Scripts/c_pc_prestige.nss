// Checks the level and alignment of the PC for the Kreia prestige class scripts.
// Had to be done as a seperate script because ran out of conditional slots to do properly.
// Param1 = Level to be checked (inclusive)

int StartingConditional()
{

    // What's the PC level you're checking for?
    int nCompareAmount = GetScriptParameter( 1 );

    // What value does the player have to be equal to or more evil than?
    int nAlignLow = GetScriptParameter( 2 );

    // What value does the player have to be equal to or more good than?
    int nAlignHigh = GetScriptParameter( 3 );

    // What's the PC alignment?
    int nAlign = GetGlobalNumber( "G_PC_Align_Val" );

    // What's the PC's level?
    int nLevel = GetHitDice( GetFirstPC () );

    // If PC's level is greater than or equal to Param1, return TRUE.
    // AND if their alignment is less than Param 2 (they're really evil) or greater than Param 3 (they're really good).
    if ( ( nLevel >= nCompareAmount ) && ( ( nAlign <= nAlignLow ) || ( nAlign >= nAlignHigh ) ) ) return TRUE;
    else return FALSE;

}
