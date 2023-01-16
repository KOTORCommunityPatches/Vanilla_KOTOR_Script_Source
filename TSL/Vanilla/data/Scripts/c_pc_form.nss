// This global script checks to see what forms the player knows.
// CFA 10-9-04

int StartingConditional()
{

    // Grab the Parameter.
    int nScriptNumber = GetScriptParameter( 1 );

    // If script = 1, check Shii-Cho.
    if ( nScriptNumber == 1 ) {
        if ( GetSpellAcquired ( 258, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 2, check Makashi.
    if ( nScriptNumber == 2 ) {
        if ( GetSpellAcquired ( 259, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 3, check Soresu.
    if ( nScriptNumber == 3 ) {
        if ( GetSpellAcquired ( 260, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 4, check Ataru.
    if ( nScriptNumber == 4 ) {
        if ( GetSpellAcquired ( 261, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 5, check Shien.
    if ( nScriptNumber == 5 ) {
        if ( GetSpellAcquired ( 262, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 6, check Niman.
    if ( nScriptNumber == 6 ) {
        if ( GetSpellAcquired ( 263, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 7, check Juyo.
    if ( nScriptNumber == 7 ) {
        if ( GetSpellAcquired ( 264, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 8, check Force Focus.
    if ( nScriptNumber == 8 ) {
        if ( GetSpellAcquired ( 265, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 9, check Force Potency.
    if ( nScriptNumber == 9 ) {
        if ( GetSpellAcquired ( 266, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 10, check Force Affinity.
    if ( nScriptNumber == 10 ) {
        if ( GetSpellAcquired ( 267, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 11, check Force Mastery.
    if ( nScriptNumber == 11 ) {
        if ( GetSpellAcquired ( 268, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    return FALSE;

}
