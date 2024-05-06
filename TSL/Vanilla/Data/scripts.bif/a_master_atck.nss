// a_master_atck
// DJS-OEI 9/7/2004
// This causes the Jedi Master in lrn_form.dlg (as designated
// by the parameter) to continue his attack on the player after
// the 50% health cutscene.
#include "k_inc_generic"

void main()
{
    object oMaster = OBJECT_INVALID;
    int nParam = GetScriptParameter( 1 );
    switch( nParam ) {
        case 1:
            // Kavar
            oMaster = GetObjectByTag( "kavar" );
            break;
        case 2:
            // Vrook
            oMaster = GetObjectByTag( "npc_vrook" );
            break;
        case 3:
            // Zez-Kai Ell
            oMaster = GetObjectByTag( "zezkaiel" );
            break;
    }

    if( GetIsObjectValid( oMaster ) ) {
        SetFakeCombatState( oMaster, FALSE );
        SetFakeCombatState( GetFirstPC(), FALSE );
        AssignCommand( oMaster, GN_SetSpawnInCondition(SW_FLAG_AI_OFF,FALSE) );
        ExecuteScript( "a_atkonend", oMaster );
    }
}
