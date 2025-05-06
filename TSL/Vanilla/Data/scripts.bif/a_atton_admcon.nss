// a_atton_admcon
// This script is part of the cutscene where Atton
// walks over and operates the computer console.
void main()
{

    object wpConsoleAtton = GetWaypointByTag( "WP_ADMCON_ATTON" );
    DelayCommand( 1.0, AssignCommand( OBJECT_SELF, ActionMoveToObject( wpConsoleAtton, TRUE ) ) );

    // Turn Atton towards the console, not the PC.
    vector vAdmCon = GetPosition( GetObjectByTag ( "Adm_Console" ) );
    AssignCommand( OBJECT_SELF, SetFacingPoint( vAdmCon ) );
}
