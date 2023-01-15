//R.Taylor OEI 07/16/04
//This script handles most of the work of the floating mines
//It checks to see if they are active and if so checks to see
//if they should attack or explode yet.
#include "k_inc_gensupport"
void main()
{
    //Check to see if we are active. If not, exit out
    if ( !GetLocalBoolean(OBJECT_SELF, 42) )
        return;//Mine not activated yet. It sees nothing

    //Once we get here, determine if we can still see any of the
    //party members. If not, shut off
    //AurPostString( "Mine is active", 10, 15, 5.0f );
    object oParty;
    int nNumSeen = 0;
    int i = 0;
    while ( i < 3 )
    {
        oParty = GetPartyMemberByIndex(i);
        if ( GetIsObjectValid(oParty) && GetObjectSeen( oParty, OBJECT_SELF ))
        {
            ++nNumSeen;
        }
        ++i;
    }

    if ( !nNumSeen )
    {
        //We don't see any members of the party anymore so just shut off
        SetLocalBoolean(OBJECT_SELF, 42, FALSE );
        //AurPostString( "Deactivating mine.", 10, 16, 5.0f );
        return;
    }

    //If we get down to here, we can SEE the party members. Now check
    //to see if any of them are so close we should explode
    int bExplode = FALSE;
    location oLoc = GetLocation( OBJECT_SELF );
    object oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 2.5, oLoc, FALSE, 65);
    while(GetIsObjectValid(oTarget))
    {
        if ( GetIsEnemy(oTarget))
        {
            bExplode = TRUE;
            break;
        }
        oTarget = GetNextObjectInShape(SHAPE_SPHERE, 2.5, oLoc, FALSE, 65);
    }
    if ( bExplode )
    {
        //AurPostString( "Blowing up mine.", 10, 17, 5.0f );
        ExecuteScript( "k_fmine_die", OBJECT_SELF );
        return;
    }


    //If we get to here, we can see the party members but none of them
    //are close enough to bother exploding at. See if they are close
    //enough to trigger the mine to move.

    //I'm using the HealerAI PERCENTAGE LocalNumber to store the Range.
    int nRange = GetLocalNumber( OBJECT_SELF, SW_NUMBER_HEALERAI_PERCENTAGE );
    if ( nRange < 1 )
    {
        nRange = 7;//Default to 5 meters
    }
    int bCheckRunning = GetLocalBoolean(OBJECT_SELF, 43);
    int nInRange = FALSE;
    i = 0;
    while( i < 3 )
    {
        oParty = GetPartyMemberByIndex(i);
        if ( GetIsObjectValid(oParty))
        {
            //Check distance
            if ( FloatToInt(GetDistanceToObject(oParty)) < nRange )
            {
                if ( bCheckRunning )
                {
                    if ( IsRunning(oParty) )
                    {
                        nInRange = TRUE;
                        break;
                    }
                }
                else
                {   //By default we don't care if they're running or not
                    nInRange = TRUE;
                    break;
                }
            }
        }
        ++i;
    }

    //If nInRange is FALSE, then none of them are close enough to
    //attract the attention of the mine. Queue another heartbeat update
    //in 2 seconds and then exit
    if ( !nInRange )
    {
        //AurPostString( "Mine says no one in range yet.", 10, 18, 5.0f );
        DelayCommand(1.0f, ForceHeartbeat(OBJECT_SELF ));
        return;
    }

    //If we get here, then the players are within detection range but
    //not within explosion range. oParty was the first character found
    //in range, so veer toward them.
    //Check to see if we're already moving. If so, don't re-queue
    int nActionID = GetCurrentAction(OBJECT_SELF);
    if ( nActionID != ACTION_MOVETOPOINT ) {
        //AurPostString( "Mine moving to victim.", 10, 19, 5.0f );
        location lTargetLoc = GetLocation(oParty);
        ActionMoveToLocation( lTargetLoc, FALSE );
    }

    //Queue another force update
    DelayCommand(1.0f, ForceHeartbeat(OBJECT_SELF));

}
