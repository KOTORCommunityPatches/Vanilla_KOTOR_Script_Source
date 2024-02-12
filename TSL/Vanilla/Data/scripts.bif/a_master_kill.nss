// a_master_kill
// DJS-OEI 9/7/2004
// This script sets up the positioning of the Jedi Master and the
// player as necesasry for the Master death scene. The Local Number 12 on the
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
    object oDoor = OBJECT_INVALID;
    switch( nLocalNum ) {
        case 1:
        {
            AurPostString( "Kavar is Master.", 1, 1, 3.0 );
            oMaster = GetObjectByTag( "kavar" );
            SetGlobalNumber( "000_Kavar_Dead", 1 );

            // Set journal entry for Kavar being killed. This will override higher journal entries.
            AddJournalQuestEntry("LostJedi", 55, TRUE);

            break;
        }
        case 2:
        {
            AurPostString( "Vrook is Master.", 1, 1, 3.0 );
            oMaster = GetObjectByTag( "npc_vrook" );
            SetGlobalNumber( "000_Vrook_Dead", 1 );

            // Turn off Area Unescapeable.
            SetAreaUnescapable( FALSE );

            // Set journal entry for Vrook being killed. This will override higher journal entries.
            AddJournalQuestEntry("LostJedi", 75, TRUE);

            // Unlock the doors to this room.
            oDoor = GetObjectByTag( "ao_door" );
            if( GetIsObjectValid( oDoor ) ) {
                SetLocked( oDoor, FALSE );
            }
            oDoor = GetObjectByTag( "master_door1" );
            if( GetIsObjectValid( oDoor ) ) {
                SetLocked( oDoor, FALSE );
            }
            oDoor = GetObjectByTag( "master_door2" );
            if( GetIsObjectValid( oDoor ) ) {
                SetLocked( oDoor, FALSE );
            }
            break;
        }
        case 3:
        {
            AurPostString( "Zez-Kai Ell is Master.", 1, 1, 3.0 );
            oMaster = GetObjectByTag( "zezkaiel" );
            SetGlobalNumber( "000_ZezKaiEll_Dead", 1 );

            // Set journal entry for Zez-Kai Ell being killed. This will override higher journal entries.
            AddJournalQuestEntry("LostJedi", 43, TRUE);

            // Turn off Area Unescapeable.
            SetAreaUnescapable( FALSE );

            // Unlock and open the secret door.
            oDoor = GetObjectByTag( "Flophouse_Secret" );
            if( GetIsObjectValid( oDoor ) ) {
                SetLocked( oDoor, FALSE );
                AssignCommand( oDoor, ActionOpenDoor( oDoor ) );
            }
        }
        break;
    }

    // Give the player 25 bonus FP.
    AddBonusForcePoints( GetFirstPC(), 25 );

    // Return all of the PCs to the party.
    int nNPCID2 = GetLocalNumber( oInvisoKreia, 13 );
    int nNPCID3 = GetLocalNumber( oInvisoKreia, 14 );
    object oNPC2;
    object oNPC3;
    if( nNPCID2 != 99 ) {

        AurPostString( IntToString( nNPCID2 ), 1, 2, 7.0 );
        string sTag = GetNPCTag( nNPCID2 );
        oNPC2 = GetObjectByTag(sTag);
        if( !GetIsObjectValid( oNPC2 ) ) {
            AurPostString( "MAJOR ERROR!!! Unable to re-add party member after killing Jedi Master.", 10, 10, 7.0 );
        }
        else {
            AddPartyMember(nNPCID2,oNPC2);
            SetCommandable(TRUE,oNPC2);
            ChangeToStandardFaction(oNPC2,STANDARD_FACTION_FRIENDLY_1);
            AssignCommand(oNPC2,ClearAllActions() );
            AssignCommand(oNPC2,GN_SetSpawnInCondition(SW_FLAG_AI_OFF,FALSE) );
        }
    }
    else {
        AurPostString( "No PC2 on Kill.", 1, 2, 7.0 );
    }
    if( nNPCID3 != 99 ) {
        AurPostString( IntToString( nNPCID3 ), 1, 3, 7.0 );
        string sTag = GetNPCTag( nNPCID3 );
        oNPC3 = GetObjectByTag(sTag);
        if( !GetIsObjectValid( oNPC3 ) ) {
            AurPostString( "MAJOR ERROR!!! Unable to re-add party member after killing Jedi Master.", 10, 10, 7.0 );
        }
        else {
            AddPartyMember(nNPCID3,oNPC3);
            SetCommandable(TRUE,oNPC3);
            ChangeToStandardFaction(oNPC3,STANDARD_FACTION_FRIENDLY_1);
            AssignCommand(oNPC3,ClearAllActions() );
            AssignCommand(oNPC3,GN_SetSpawnInCondition(SW_FLAG_AI_OFF,FALSE) );
        }
    }
    else {
        AurPostString( "No PC3 on Kill.", 1, 3, 7.0 );
    }

    if( GetIsObjectValid( oMaster ) ) {
        AurPostString( "Starting Kill cutscene.", 1, 4, 2.0 );

        // This is the cutscene where the Jedi Master
        // is at 1HP and the player drains his Force Power.
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

        // Perform a fake version of the Death Field spell,
        // pull FP from the Master, and then kill him.
        effect eDeath = EffectDeath();
        effect eBeam = EffectBeam(VFX_BEAM_DEATH_FIELD_TENTACLE, oPC, BODY_NODE_CHEST);
        effect eVFX = EffectVisualEffect(VFX_PRO_DEATH_FIELD);
        effect eHeal = EffectHeal( GetMaxHitPoints( oMaster ) - 1 );

        SetMinOneHP( oMaster, FALSE );

        // We have to heal the Master or else he'll keep playing his Injured
        // animation instead of the ones we want.
        ApplyEffectToObject( DURATION_TYPE_INSTANT, eHeal, oMaster );
        AssignCommand( oMaster, PlayAnimation( ANIMATION_LOOPING_PAUSE_DRUNK, 1.0, -1.0 ) );
        DelayCommand( 0.5, AssignCommand( oPC, PlayAnimation( ANIMATION_FIREFORGET_SCREAM, 0.5 ) ) );
        DelayCommand( 1.0, ApplyEffectToObject( DURATION_TYPE_TEMPORARY, eBeam, oMaster, 2.33 ) );
        DelayCommand( 1.0, AssignCommand( oMaster, ClearAllActions() ) );
        DelayCommand( 1.0, AssignCommand( oMaster, PlayAnimation( ANIMATION_LOOPING_CHOKE_WORKING, 1.0, -1.0 ) ) );
        DelayCommand( 1.0, ApplyEffectToObject( DURATION_TYPE_INSTANT, eVFX, oMaster ) );
        DelayCommand( 2.0, ApplyEffectToObject( DURATION_TYPE_INSTANT, eVFX, oMaster ) );
        DelayCommand( 3.0, ApplyEffectToObject( DURATION_TYPE_INSTANT, eDeath, oMaster ) );

        DelayCommand( 5.0, ActionResumeConversation() );
    }
    else {
        AurPostString( "Could not find Master to set up cutscene positioning.", 10, 10, 2.0 );
    }
}
