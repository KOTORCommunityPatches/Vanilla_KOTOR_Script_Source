// a_262imprison
// This causes Atton and Kreia to be placed in cells. And
// puts the player right outside the council chamber. Then
// Atton starts up conversation all on his own after the fade
// in occurs.
// CFA: 1-10-04

void main()
{
    int nScene = GetScriptParameter(1);

    switch(nScene)
    {
        case 1://fade out
        {
            // Set up fade in.
            SetGlobalFadeOut( 0.0, 1.0 );

            // Set up fade in.
            SetFadeUntilScript();
        }break;
        case 2://jump and scoot
        {
            object wpAttonPrison = GetWaypointByTag( "WP_Atton_Prison" );
            object wpKreiaPrison = GetWaypointByTag( "WP_Kreia_Prison" );
            object wpPCCouncil = GetWaypointByTag( "WP_PC_Council" );
            object oAtton = GetObjectByTag ( "Atton" );
            object oKreia = GetObjectByTag ( "Kreia" );

            // Put Atton and Kreia in cells, put PC in the corridor
            // outside council chamber.
            AssignCommand( oAtton, ClearAllActions() );
            AssignCommand( oKreia, ClearAllActions() );
            AssignCommand( GetFirstPC(), ClearAllActions() );
            AssignCommand( oAtton, ActionJumpToObject( wpAttonPrison ) );
            AssignCommand( oKreia, ActionJumpToObject( wpKreiaPrison ) );
            AssignCommand( GetFirstPC(), ActionJumpToObject( wpPCCouncil ) );

            // This gives Atton's dialogue the right starting conditional.
            SetGlobalNumber( "262TEL_Atton_Talk", 1 );

            // Auto-initiate Atton's dialogue.

            // Unequip PC's weapon(s), script from Tony Evans.
            object oWeapLeft = GetItemInSlot( INVENTORY_SLOT_LEFTWEAPON, GetFirstPC() );
            object oWeapRight = GetItemInSlot( INVENTORY_SLOT_RIGHTWEAPON, GetFirstPC() );
            AssignCommand(GetFirstPC(), ActionUnequipItem(oWeapLeft));
            AssignCommand(GetFirstPC(), ActionUnequipItem(oWeapRight));

        }break;
        case 3://start conversation
        {
            object oAtton = GetObjectByTag ( "Atton" );
            AssignCommand( oAtton, ActionStartConversation ( GetFirstPC(), "262atton", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE ) );
        }break;
    }
}

