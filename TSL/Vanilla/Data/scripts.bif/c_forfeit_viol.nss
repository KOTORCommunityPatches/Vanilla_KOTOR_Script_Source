// c_forfeit_viol
// Parameter Count: 1
// Param1 - A value representing the forfeit condition we are
// checking against. This is the value of one of the FORFEIT_*
// defines.

int StartingConditional() {
    int nRetVal = FALSE;
    int nParam = GetScriptParameter( 1 );

    switch( nParam ) {
        case 1: // FORFEIT_NO_FORCE_POWERS
            if( GetLastForfeitViolation() == FORFEIT_NO_FORCE_POWERS ) {
                nRetVal = TRUE;
            }
            break;
        case 2: // FORFEIT_NO_ITEMS
            if( GetLastForfeitViolation() == FORFEIT_NO_ITEMS ) {
                nRetVal = TRUE;
            }
            break;
        case 4: // FORFEIT_NO_WEAPONS
            if( GetLastForfeitViolation() == FORFEIT_NO_WEAPONS ) {
                nRetVal = TRUE;
            }
            break;
        case 8: // FORFEIT_DXUN_SWORD_ONLY
            if( GetLastForfeitViolation() == FORFEIT_DXUN_SWORD_ONLY) {
                nRetVal = TRUE;
            }
            break;
    }
    return nRetVal;
}
