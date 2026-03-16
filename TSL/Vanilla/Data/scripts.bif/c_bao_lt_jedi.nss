// c_bao_lt_jedi
// This script determines if Bao-Dur can be changed to a Jedi
// if the player is neutral/light-side and his influence is
// either very high or very low.
int StartingConditional() {

    int nNPC = 1; // Bao-Dur
    int nInfluenceLower = 11;
    int nInfluenceUpper = 89;

    // Bao-Dur's Influence must be 10 or less OR
    // 90 or more. Otherwise, we fail.
    if( (GetInfluence(nNPC) <= nInfluenceUpper ) &&
        (GetInfluence(nNPC) >= nInfluenceLower) )
        return 0;

    // PC's alignment must be 50 or greater.
    int nCompareAmt = 49;
    if( GetGlobalNumber( "G_PC_Align_Val" ) <= nCompareAmt ) {
    return 0;
    }

    // This can't have happened before.
    int nVal = GetLocalBoolean( OBJECT_SELF, 35 );
    if( nVal ) {
        return 0;
    }

    return 1;
}
