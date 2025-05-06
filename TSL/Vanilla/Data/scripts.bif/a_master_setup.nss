// a_master_setup
// DJS-OEI 9/7/2004
// Param1 - Flag to indicate if PC2 and PC3 should leave the party.
//          0 = Yes, 1 = No.
// This script sets up the positioning of the Jedi Master and the
// player as necesasry for the scene. The Local Number 12 on the
// owner of this dialogue determines which Master we're working with.
// 1 = Kavar
// 2 = Vrook
// 3 = Zaz-Kai Ell

#include "k_inc_generic"
#include "k_inc_glob_party"

void ClearNPC()
{
  GN_SetSpawnInCondition(SW_FLAG_AI_OFF,TRUE);
  ClearAllActions();
}

void main()
{
    int bRetainPCs = GetScriptParameter( 1 );
    object oWay;
    location lWay;

    object oInvisoKreia = GetObjectByTag( "InvisoKreia" );
    object oMaster = OBJECT_INVALID;
    // First, check if we're teaching a Form, and then
    // check to see if we're killing the Jedi Master instead.
    int nLocalNum = GetLocalNumber( oInvisoKreia, 16 );
    if( nLocalNum == 0 ) {
        nLocalNum = GetLocalNumber( oInvisoKreia, 12 );
    }
    object oDoor = OBJECT_INVALID;
    switch( nLocalNum ) {
        case 1:
        {
            oMaster = GetObjectByTag( "kavar" );

            // Do any Kavar-specific setup here.
            break;
        }
        case 2:
        {
            oMaster = GetObjectByTag( "npc_vrook" );

            // Set the Area to Unescapable so the player can't bring
            // in party members.
            SetAreaUnescapable( TRUE );

            // Close and lock the doors to this room if
            // we're doing the battle.
            if( !bRetainPCs ) {
                oDoor = GetObjectByTag( "ao_door" );
                if( GetIsObjectValid( oDoor ) ) {
                    AssignCommand( oDoor, ActionCloseDoor( oDoor ) );
                    SetLocked( oDoor, TRUE );
                }
                oDoor = GetObjectByTag( "master_door1" );
                if( GetIsObjectValid( oDoor ) ) {
                    AssignCommand( oDoor, ActionCloseDoor( oDoor ) );
                    SetLocked( oDoor, TRUE );
                }
                oDoor = GetObjectByTag( "master_door2" );
                if( GetIsObjectValid( oDoor ) ) {
                    AssignCommand( oDoor, ActionCloseDoor( oDoor ) );
                    SetLocked( oDoor, TRUE );
                }
            }
            break;
        }
        case 3:
        {
            oMaster = GetObjectByTag( "zezkaiel" );

            // Do any Zez-Kai Ell-specific setup here.
            // Set the Area to Unescapable so the player can't bring
            // in party members.
            SetAreaUnescapable( TRUE );

            // Close and lock the secret door.
            oDoor = GetObjectByTag( "Flophouse_Secret" );
            if( GetIsObjectValid( oDoor ) ) {
                AssignCommand( oDoor, ActionCloseDoor( oDoor ) );
                SetLocked( oDoor, TRUE );
            }
        }
        break;
    }

    if( GetIsObjectValid( oMaster ) ) {
        ActionPauseConversation();

        // This is the cutscene where the Jedi Master
        // confronts the player and starts combat.

        SetGlobalFadeIn( 0.0, 2.0 );

        // Set the player's character as the party leader.
        SetPartyLeader( NPC_PLAYER );

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

        if( !bRetainPCs ) {
            // Remove the two other party members from the party
            // for the duration of the battle and set them
            // to Neutral. Store their NPC IDs in this object's
            // Local Number 13 and 14 (99 for empty slots) so
            // we can re-add them after the combat is over.
            object oPC2 = GetPartyMemberByIndex( 1 );
            object oPC3 = GetPartyMemberByIndex( 2 );
            if( GetIsObjectValid( oPC2 ) ) {
                AurPostString( "Storing PC2.", 10, 10, 3.0 );
                // Store this party member's NPC ID so we can
                // put them back in the party later.
                int nNPCID = GetNPCConstant( GetTag( oPC2 ) );
                SetLocalNumber( oInvisoKreia, 13, nNPCID );

                // Drop the party member, make sure they won't
                // join the combat, and place him/her on the mark.
                RemovePartyMember( nNPCID );
                AssignCommand( oPC2,ClearNPC() );
                ChangeToStandardFaction( oPC2,STANDARD_FACTION_NEUTRAL );
                AssignCommand( oPC2, ClearAllActions() );
                oWay = GetWaypointByTag( "WP_MASTER_CUT_PC2" );
                lWay = GetLocation( oWay );
                AssignCommand( oPC2, JumpToLocation( lWay ) );
                AssignCommand( oPC2, ActionDoCommand( SetCommandable( FALSE, oPC2 ) ) );
            }
            else {
                SetLocalNumber( oInvisoKreia, 13, 99 );
                AurPostString( IntToString( GetLocalNumber( oInvisoKreia, 13 ) ), 10, 10, 3.0 );
            }
            if( GetIsObjectValid( oPC3 ) ) {
                AurPostString( "Storing PC3.", 10, 11, 3.0 );

                // Store this party member's NPC ID so we can
                // put them back in the party later.
                int nNPCID = GetNPCConstant( GetTag( oPC3 ) );
                SetLocalNumber( oInvisoKreia, 14, nNPCID );

                // Drop the party member, make sure they won't
                // join the combat, and place him/her on the mark.
                RemovePartyMember( nNPCID );
                AssignCommand( oPC3,ClearNPC() );
                ChangeToStandardFaction( oPC3,STANDARD_FACTION_NEUTRAL );
                AssignCommand( oPC3, ClearAllActions() );
                oWay = GetWaypointByTag( "WP_MASTER_CUT_PC3" );
                lWay = GetLocation( oWay );
                AssignCommand( oPC3, JumpToLocation( lWay ) );
                AssignCommand( oPC3, ActionDoCommand( SetCommandable( FALSE, oPC3 ) ) );
            }
            else {
                SetLocalNumber( oInvisoKreia, 14, 99 );
                AurPostString( IntToString( GetLocalNumber( oInvisoKreia, 14 ) ), 10, 11, 3.0 );
            }
        }
        else {
            SetLocalNumber( oInvisoKreia, 13, 99 );
            SetLocalNumber( oInvisoKreia, 14, 99 );
            // Just move the other PCs.
            object oPC2 = GetPartyMemberByIndex( 1 );
            object oPC3 = GetPartyMemberByIndex( 2 );
            if( GetIsObjectValid( oPC2 ) ) {
                oWay = GetWaypointByTag( "WP_MASTER_CUT_PC2" );
                lWay = GetLocation( oWay );
                AssignCommand( oPC2, JumpToLocation( lWay ) );
            }
            if( GetIsObjectValid( oPC3 ) ) {
                oWay = GetWaypointByTag( "WP_MASTER_CUT_PC3" );
                lWay = GetLocation( oWay );
                AssignCommand( oPC3, JumpToLocation( lWay ) );
            }
        }
        DelayCommand( 2.0, ActionResumeConversation() );
    }
}
