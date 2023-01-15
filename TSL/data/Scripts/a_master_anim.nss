// a_master_anim
// DJS-OEI 9/8/2004
// This script plays fake combat animations between the Jedi Master
// and the player.
void main()
{
    object oInvisoKreia = GetObjectByTag( "InvisoKreia" );
    object oMaster = OBJECT_INVALID;
    int nLocalNum = GetLocalNumber( oInvisoKreia, 12 );
    switch( nLocalNum ) {
        case 1:
        {
            oMaster = GetObjectByTag( "kavar" );
            break;
        }
        case 2:
        {
            oMaster = GetObjectByTag( "npc_vrook" );
            break;
        }
        case 3:
        {
            oMaster = GetObjectByTag( "zezkaiel" );
            break;
        }
    }

    if( GetIsObjectValid( oMaster ) ) {
        // This is the cutscene where the Jedi Master
        // is dueling with the player.
        object oPC = GetFirstPC();
        if( !GetIsObjectValid( oPC ) ) {
            AurPostString( "Could not find Player's Character to set up cutscene positioning.", 10, 10, 2.0 );
            return;
        }

        SetLightsaberPowered( oMaster, TRUE );
        SetLightsaberPowered( oPC, TRUE );
        SetFakeCombatState( oMaster, TRUE );
        SetFakeCombatState( oPC, TRUE );
        AssignCommand( oMaster, PlayAnimation( ANIMATION_LOOPING_READY, 1.0, -1.0 ) );
        AssignCommand( oPC, PlayAnimation( ANIMATION_LOOPING_READY, 1.0, -1.0 ) );
        DelayCommand( 2.0, CreatureFlourishWeapon( oMaster ) );
        DelayCommand( 2.5, ActionPlayAnimation( ANIMATION_LOOPING_READY, 1.0, -1.0 ) );
    }
}
