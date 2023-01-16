// This plays the Kreia Fall movie, and following that, re-initiate dialogue with the player.
// CFA 10-10-04

void main()
{

    PlayMovie ("KreMov01");

    // Then after the movie, have Kreia talk to the player again.
    object oKreia = GetObjectByTag ("Kreia");

    AssignCommand( oKreia, ClearAllActions() );
    AssignCommand( oKreia, ActionStartConversation( GetFirstPC() ) );

}
