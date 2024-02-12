// Check to see if the PC has one of the three starting classes.
// Param 1 = The class you are trying to check:
// (1) Sen, (2) Guard, (3) Consular,
// (4) Watchman, (5) Weaponmaster, (6) Jedi Master,
// (7) Sith Assassin, (8) Sith Marauder, (9) Sith Lord.
// CFA 10-10-04

int StartingConditional()
{

    // Grab the Parameter.
    int nScriptNumber = GetScriptParameter( 1 );

    // If script = 1, check Sentinel.
    if ( nScriptNumber == 1 ) {
        if ( GetLevelByClass ( CLASS_TYPE_JEDISENTINEL, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 2, check Guardian.
    if ( nScriptNumber == 2 ) {
        if ( GetLevelByClass ( CLASS_TYPE_JEDIGUARDIAN, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 3, check Consular.
    if ( nScriptNumber == 3 ) {
        if ( GetLevelByClass ( CLASS_TYPE_JEDICONSULAR, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 4, check Watchman.
    if ( nScriptNumber == 4 ) {
        if ( GetLevelByClass ( CLASS_TYPE_JEDIWATCHMAN, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 5, check Weapon Master.
    if ( nScriptNumber == 5 ) {
        if ( GetLevelByClass ( CLASS_TYPE_JEDIWEAPONMASTER, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 6, check Jedi Master.
    if ( nScriptNumber == 6 ) {
        if ( GetLevelByClass ( CLASS_TYPE_JEDIMASTER, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 7, check Sith Assassin.
    if ( nScriptNumber == 7 ) {
        if ( GetLevelByClass ( CLASS_TYPE_SITHASSASSIN, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 8, check Sith Marauder.
    if ( nScriptNumber == 8 ) {
        if ( GetLevelByClass ( CLASS_TYPE_SITHMARAUDER, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    // If script = 9, check Jedi Master.
    if ( nScriptNumber == 9 ) {
        if ( GetLevelByClass ( CLASS_TYPE_SITHLORD, GetFirstPC () ) ) return TRUE;
        else return FALSE;
    }

    return FALSE;
}
