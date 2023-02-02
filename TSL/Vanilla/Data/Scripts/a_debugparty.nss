//RWT-OEI 05/28/04 - This script will allow quick NPC Availability control
//It operates off of Parameter 1.
//If Parameter 1 == 0, it removes all party members and NPCs.
//If Parameter 1 == 1, it gives everyone and Mira and Handmaiden
//If Parameter 1 == 2, it gives everyone and Hanharr and Handmaiden
//If Parameter 1 == 3, it gives everyone and Mira and Disciple
//If Parameter 1 == 4, it gives everyone and Hanharr and Disciple

//This function removes all party members from being available
void RemoveAllPartyMembers()
{
    //ATTON
    if ( IsNPCPartyMember( NPC_ATTON ) )
        RemovePartyMember( NPC_ATTON );
    RemoveAvailableNPC( NPC_ATTON );

    //Bao Dur
    if ( IsNPCPartyMember( NPC_BAO_DUR ) )
        RemovePartyMember( NPC_BAO_DUR );
    RemoveAvailableNPC( NPC_BAO_DUR );

    //Canderous
    if ( IsNPCPartyMember( NPC_CANDEROUS ) )
        RemovePartyMember( NPC_CANDEROUS );
    RemoveAvailableNPC( NPC_CANDEROUS );

    //G0T0
    if ( IsNPCPartyMember( NPC_G0T0 ) )
        RemovePartyMember( NPC_G0T0 );
    RemoveAvailableNPC( NPC_G0T0 );

    //Handmaiden - this also clears disciple
    if ( IsNPCPartyMember( NPC_HANDMAIDEN ) )
        RemovePartyMember( NPC_HANDMAIDEN );
    RemoveAvailableNPC( NPC_HANDMAIDEN );

    //HK-47
    if ( IsNPCPartyMember( NPC_HK_47 ) )
        RemovePartyMember( NPC_HK_47 );
    RemoveAvailableNPC( NPC_HK_47 );

    //Kreia
    if ( IsNPCPartyMember( NPC_KREIA ) )
        RemovePartyMember( NPC_KREIA );
    RemoveAvailableNPC( NPC_KREIA );

    //Mira - this also removes Hanharr
    if ( IsNPCPartyMember( NPC_MIRA ) )
        RemovePartyMember( NPC_MIRA );
    RemoveAvailableNPC( NPC_MIRA );

    //T3-M4
    if ( IsNPCPartyMember( NPC_T3_M4 ) )
        RemovePartyMember( NPC_T3_M4 );
    RemoveAvailableNPC( NPC_T3_M4 );

    //Visas
    if ( IsNPCPartyMember( NPC_VISAS ) )
        RemovePartyMember( NPC_VISAS );
    RemoveAvailableNPC( NPC_VISAS );
}





void main()
{
    //Always call RemovePartyMembers first to have a clean slate
    RemoveAllPartyMembers();

    int nParam = GetScriptParameter(1);

    if ( nParam == 0 )
        return;//Just return. Parameter = 0 means remove all members.

    //If we get this far, add all of the constants first, since they
    //never change
    AddAvailableNPCByTemplate(NPC_ATTON, "p_atton" );
    AddAvailableNPCByTemplate(NPC_BAO_DUR, "p_baodur" );
    AddAvailableNPCByTemplate(NPC_CANDEROUS, "p_mand" );
    AddAvailableNPCByTemplate(NPC_G0T0, "p_g0t0" );
    AddAvailableNPCByTemplate(NPC_HK_47, "p_hk47" );
    AddAvailableNPCByTemplate(NPC_KREIA, "p_kreia" );
    AddAvailableNPCByTemplate(NPC_T3_M4, "p_t3m4" );
    AddAvailableNPCByTemplate(NPC_VISAS, "p_visas" );

    //Now we have to see which special case we have to add
    //the remaining two.
    if ( nParam == 1 )
    {
        AddAvailableNPCByTemplate(NPC_MIRA, "p_mira" );
        AddAvailableNPCByTemplate(NPC_HANDMAIDEN, "p_handmaiden" );
    }
    else if ( nParam == 2 )
    {
        AddAvailableNPCByTemplate(NPC_HANHARR, "p_hanharr" );
        AddAvailableNPCByTemplate(NPC_HANDMAIDEN, "p_handmaiden" );
    }
    else if ( nParam == 3 )
    {
        AddAvailableNPCByTemplate(NPC_MIRA, "p_mira" );
        AddAvailableNPCByTemplate(NPC_DISCIPLE, "p_disciple" );
    }
    else if ( nParam == 4 )
    {
        AddAvailableNPCByTemplate(NPC_HANHARR, "p_hanharr" );
        AddAvailableNPCByTemplate(NPC_DISCIPLE, "p_disciple" );
    }
}
