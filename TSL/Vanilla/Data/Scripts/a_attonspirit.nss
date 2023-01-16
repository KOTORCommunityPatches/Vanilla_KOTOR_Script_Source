/* R.Taylor 12/18/03
 * This script is called from the OnDeath event on Atton. It
 * is responsible for handling the effects of the Spirit Feat, which
 * make him get up when dropped in battle, as long as there is still
 * at least 1 other standing party member.
 */

#include "k_inc_switch"

void DoRevive(string sTarget)
{
    object oTarget = GetObjectByTag( sTarget );
    if( !GetIsObjectValid( oTarget ) ) {
        return;
    }

    AurPostString( "Perform Revive.", 5, 6, 10.0 );
    if ( !GetHasFeat(FEAT_SPIRIT, oTarget) &&
         !GetHasFeat(FEAT_FIGHTING_SPIRIT, oTarget) &&
         !GetHasFeat(FEAT_HEROIC_RESOLVE, oTarget) ) {
        AurPostString( "No Spirit.", 5, 7, 10.0 );
        return;//Cancel out if doesn't have spirit feat
    }

    //First determine if we have at least 1 standing ally.
    int bPartyNotDead = 0;
    int nIdx = 0;
    object oParty = GetPartyMemberByIndex(nIdx);
    AurPostString( "Got first party member.", 5, 7, 10.0 );
    while (GetIsObjectValid(oParty))
    {
        //RWT-OEI 09/30/04 - The member has to be standing AND in combat
        //to get Atton to revive via this script.
        if ( GetCurrentHitPoints(oParty) > 0 && GetIsInCombat(oParty, TRUE) ) {//1 is still standing
            AurPostString( "Found a valid party member.", 5, 8+nIdx, 10.0 );
            bPartyNotDead = 1;
            break;
        }
        nIdx++;
        AurPostString( "Getting next party member.", 8, 8+nIdx, 10.0 );
        oParty = GetPartyMemberByIndex(nIdx);
    }

    if ( bPartyNotDead ) {
        AurPostString( "Party not dead 2.", 5, 7, 10.0 );
        if ( GetCurrentHitPoints(oTarget) < 1 ) {
            AurPostString( "HP less than 1.", 5, 8, 10.0 );
            // DJS-OEI 8/26/2004
            int nHPPercent = 0;
            if( GetHasFeat(FEAT_HEROIC_RESOLVE, oTarget) ) {
                nHPPercent = 30;
            }
            else if( GetHasFeat(FEAT_FIGHTING_SPIRIT, oTarget) ) {
                nHPPercent = 20;
            }
            else if( GetHasFeat(FEAT_SPIRIT, oTarget) ) {
                nHPPercent = 10;
            }

            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectResurrection( nHPPercent ),
                                oTarget);
            ClearAllActions();//Clear our action queue as we get up.
        }
        else {
            AurPostString( "HP 1 or greater.", 5, 8, 10.0 );
        }
        //Need to get the character back into combat after getting up.
        //The delay is to give him enough time to animate to standing before
        //jumping back into the battle
        DelayCommand(4.0,
            ExecuteScript("k_ai_master", oTarget, KOTOR_HENCH_EVENT_ON_COMBAT_ROUND_END));
    }
    else
    {
        AurPostString( "Party dead.", 5, 7, 10.0 );
        //If we aren't getting revived right now, try again in 5 seconds
        //DelayCommand( 5.0f, DoRevive(myself));
        object oArea = GetArea( oTarget );
        AssignCommand( oArea, DelayCommand( 5.0f, DoRevive(sTarget)));
    }
}

void main()
{
    //RWT-OEI 09/30/04 - Only queue if we're down, this way we can check this
    //function from Atton's heartbeat.
//    if ( GetCurrentHitPoints(OBJECT_SELF) )
//    {
        // DJS-OEI
        // Assigned command to the area so it will work when game is loaded.
        // This is really stupid, but passing OBJECT_SELF to DoRevive()
        // will pass the area's ID instead of this guy's.
        string sName = GetTag( OBJECT_SELF );
        object oArea = GetArea( OBJECT_SELF );
        AssignCommand( oArea, DelayCommand( 8.0f, DoRevive(sName)));
//    }
}
