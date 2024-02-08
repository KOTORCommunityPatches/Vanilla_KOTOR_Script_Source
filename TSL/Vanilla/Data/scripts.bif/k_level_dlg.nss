
// k_level_dlg
// DJS-OEI 7/27/2004
// This script is called directly by the game code when the player's
// character gets enough XP to hit level 2. The code will prevent
// this from getting called more than once.
void main() {

    if( GetModuleName() == "101PER" ) {
        AurPostString("k_level_dlg: Teach PC to Level...", 5, 5, 6.0);
        object oKreia = GetObjectByTag( "kreia" );
        if( GetIsObjectValid( oKreia ) ) {
            AssignCommand( oKreia, ClearAllActions());
            AssignCommand( oKreia, ActionStartConversation( GetFirstPC(), "000level", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE ) );
        }
    }
}
