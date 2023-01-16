// Jump T3 to outside cage.
// CFA 9-9-04

void main()
{

    // Snag T3.
    object oT3 = GetObjectByTag ("T3m4");

    AssignCommand( oT3, ActionForceMoveToObject( GetObjectByTag ( "WP_T3_JUMP" ), FALSE ) );

}
