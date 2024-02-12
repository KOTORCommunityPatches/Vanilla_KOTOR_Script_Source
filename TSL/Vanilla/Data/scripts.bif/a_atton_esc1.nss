// a_atton_esc1
// This script is part of the cutscene where the PC and Atton
// run to the Administration console.
void main()
{
    // Set up the PC to run to WP_ESCAPE_2 and Atton to run to the
    // waypoint WP_ESCAPE_1.
    object wpExit = GetWaypointByTag( "WP_ESCAPE_1" );
    object wpExit2 = GetWaypointByTag( "WP_ESCAPE_2" );
    DelayCommand( 0.5, AssignCommand( OBJECT_SELF, ActionMoveToObject( wpExit, TRUE ) ) );
    DelayCommand( 0.5, AssignCommand( GetPCSpeaker(), ActionMoveToObject( wpExit2, TRUE ) ) );

    // Set up a fading out and in.
    SetGlobalFadeOut( 1.0, 2.0 );
    DelayCommand( 3.0, SetDialogPlaceableCamera( 2 ) );
    DelayCommand( 3.0, SetGlobalFadeIn( 0.0, 2.0 ) );

    // Teleport Atton and the PC slightly outside
    // the room with the Administrative console.
    object wpEntryAtton = GetWaypointByTag( "WP_ESCAPE_2_ENTRY_ATTON" );
    object wpEntryPC = GetWaypointByTag( "WP_ESCAPE_2_ENTRY_PC" );
    DelayCommand( 0.5, AssignCommand( OBJECT_SELF, ActionJumpToObject( wpEntryAtton ) ) );
    DelayCommand( 0.5, AssignCommand( GetPCSpeaker(), ActionJumpToObject( wpEntryPC ) ) );

    // Set up the PC and Atton to run into the
    // Administrative console room.
    object wpConsoleAtton = GetWaypointByTag( "WP_ESCAPE_2_CONSOLE_ATTON" );
    object wpConsolePC = GetWaypointByTag( "WP_ESCAPE_2_CONSOLE_PC" );
    DelayCommand( 2.5, AssignCommand( OBJECT_SELF, ActionMoveToObject( wpConsoleAtton, TRUE ) ) );
    DelayCommand( 2.5, AssignCommand( GetPCSpeaker(), ActionMoveToObject( wpConsolePC, TRUE ) ) );

    // Turn PC towards Atton.
    vector vAtton = GetPosition( OBJECT_SELF );
    AssignCommand( GetPCSpeaker(), SetFacingPoint( vAtton ) );
}
