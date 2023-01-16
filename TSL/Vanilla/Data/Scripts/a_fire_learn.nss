// a_fire_learn
// DJS-OEI 9/10/2004
// Param1 - The "ID" of the Jedi Master teaching the player.
// 1 = Kavar
// 2 = Vrook
// 3 = Zez-Kai Ell
void main()
{
    object oInvisoKreia = GetObjectByTag( "InvisoKreia" );
    if( !GetIsObjectValid( oInvisoKreia ) ) {
        AurPostString( "Could not find InvisoKreia for Form Learning cutscene.", 10, 10, 2.0 );
        return;
    }

    int nMaster = GetScriptParameter( 1 );

    // Vrook is teaching.
    SetLocalNumber( oInvisoKreia, 16, nMaster );
    DelayCommand( 0.1, AssignCommand( oInvisoKreia, ActionStartConversation( GetFirstPC(), "lrn_form", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE ) ) );
}
