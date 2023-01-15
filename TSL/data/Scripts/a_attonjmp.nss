//::///////////////////////////////////////////////
//:: FileName a_attonjmp
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Chris Avellone
//:: This script jumps the player to a good spot in front of Atton's cage so he
//:: doesn't look dumb in the cut scenes.
//:://////////////////////////////////////////////
void main()
{
     object oWaypoint = GetObjectByTag ( "WP_ATTONCAGE" );
     AssignCommand ( GetPCSpeaker (), ActionJumpToLocation ( GetLocation ( oWaypoint ) ) );

    // Turn PC towards Atton.
    vector vAtton = GetPosition( OBJECT_SELF );
    AssignCommand( GetPCSpeaker(), SetFacingPoint( vAtton ) );
}
