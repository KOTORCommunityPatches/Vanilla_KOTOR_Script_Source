// a_turnpcatton
// This script turns the PC to face Atton.
void main()
{

    // Turn PC towards Atton.
    vector vAtton = GetPosition( OBJECT_SELF );
    AssignCommand( GetPCSpeaker(), SetFacingPoint( vAtton ) );
}
