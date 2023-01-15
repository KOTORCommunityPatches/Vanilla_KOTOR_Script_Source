// a_free_atton
// This script frees Atton from his cage and
// places him at a specific waypoint outside of the cage.
void main()
{
    // Set up fading.
    SetGlobalFadeOut( 0.0, 2.0 );
    DelayCommand( 2.0, SetGlobalFadeIn( 0.0, 2.0 ) );

    // Move Atton to the waypoint WP_ATTON_FREE.
    object wpLoc = GetWaypointByTag( "WP_ATTON_FREE" );
    DelayCommand( 2.0, AssignCommand( OBJECT_SELF, ActionJumpToObject( wpLoc ) ) );

    // Turn PC towards Atton.
    vector vAtton = GetPosition( OBJECT_SELF );
    DelayCommand( 2.0, AssignCommand( GetPCSpeaker(), SetFacingPoint( vAtton ) ) );
}
