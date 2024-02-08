// a_master_half
// DJS-OEI 9/8/2004
// This script sets up the positioning of the Jedi Master and the
// player as necesasry for the scene. The Local Number 12 on the
// owner of this dialogue determines which Master we're working with.
// 1 = Kavar
// 2 = Vrook
// 3 = Zaz-Kai Ell

#include "k_inc_generic"
#include "k_inc_glob_party"

void main()
{
    object oWay;
    location lWay;

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
        // Fade in.
        SetGlobalFadeIn( 0.0, 1.0 );

        // This is the cutscene where the Jedi Master
        // is at half health and the player learns his Form.
        ActionPauseConversation();

        AssignCommand( oMaster, ClearAllActions() );
        AssignCommand( GetFirstPC(), ClearAllActions() );

        oWay = GetWaypointByTag( "WP_MASTER_CUT_MASTER" );
        lWay = GetLocation( oWay );
        AssignCommand( oMaster, JumpToLocation( lWay ) );

        // Place the player at his/her mark.
        object oPC = GetFirstPC();
        if( !GetIsObjectValid( oPC ) ) {
            AurPostString( "Could not find Player's Character to set up cutscene positioning.", 10, 10, 2.0 );
            return;
        }
        oWay = GetWaypointByTag( "WP_MASTER_CUT_PC1" );
        lWay = GetLocation( oWay );
        AssignCommand( oPC, JumpToLocation( lWay ) );

        DelayCommand( 1.0, ActionResumeConversation() );
    }
}
