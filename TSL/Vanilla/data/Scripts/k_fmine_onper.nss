void main()
{
    //RWT-OEI 07/16/04
    //This is where the floating mine reacts to having detected
    //an 'enemy'
    object oSeen = GetLastPerceived();

    if ( !GetIsObjectValid(oSeen))
        return;//Error out

    if ( !GetObjectSeen( oSeen, OBJECT_SELF ) )
        return;//Don't react to 'hearing', only 'seeing'

    if ( GetIsEnemy(oSeen) )
    {
        //We see an enemy. Set ourselves active and force a heartbeat
        //AurPostString( "Mine Has Detected you", 10, 11, 5.0f );
        SetLocalBoolean( OBJECT_SELF, 42, TRUE );
        ForceHeartbeat(OBJECT_SELF);

        /*
        location lSeen = GetLocation( oSeen );
        ClearAllActions();
        ActionMoveToLocation(lSeen, FALSE);
        */
    }
}
