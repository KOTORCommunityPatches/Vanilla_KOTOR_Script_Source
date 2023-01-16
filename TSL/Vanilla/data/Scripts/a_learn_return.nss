// a_learn_return
// DJS-OEI 9/11/2004
// Param1 - The Jedi Master teaching the player a Form.
// This function will return to the teacher's main dialogue
// from the global lrn_form dialogue.
void main()
{
    int nMaster = GetScriptParameter( 1 );
    object oMaster;
    switch( nMaster ) {
        case 1:
            oMaster = GetObjectByTag( "kavar" );
            break;
        case 2:
            oMaster = GetObjectByTag( "npc_vrook" );
            break;
        case 3:
            oMaster = GetObjectByTag( "zezkaiel" );
            break;
    }

    if( GetIsObjectValid( oMaster ) ) {
        DelayCommand( 0.1, AssignCommand( oMaster, ActionStartConversation( GetFirstPC() ) ) );
    }
}
