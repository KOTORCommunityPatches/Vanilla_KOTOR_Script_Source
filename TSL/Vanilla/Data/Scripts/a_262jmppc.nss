// a_262jmppc
// This test script causes the PC to jump to waypoint... I hope.
// CFA: 1-10-04

void main()
{

    object wpPCCouncil = GetWaypointByTag( "WP_PC_Council" );

    // Put PC in corridor outside council chamber.
    AssignCommand( GetFirstPC(), ActionJumpToObject( wpPCCouncil ) );

}
