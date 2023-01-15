// a_door102per
// This script shows the hatch to 102PER opening.
void main()
{
    // Get the door object.
    object odoor = GetObjectByTag( "102PERDoor" );

    // Unlock the door.
    SetLocked( odoor, FALSE );

    // Make the door open itself.
    DelayCommand( 1.0, AssignCommand( odoor, ActionOpenDoor( odoor ) ) );
}
