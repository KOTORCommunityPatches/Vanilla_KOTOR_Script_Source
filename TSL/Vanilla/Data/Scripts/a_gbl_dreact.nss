
//:: Script Name
/*
    Desc
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


void main()
{
    //RWT-OEI 10/24/04
    //If there are no party members, do nothing
    if ( GetPartyMemberCount() < 2 )
    {
        return;
    }

    int nType = GetScriptParameter(1);

    if ( nType < 0 || nType > 2 ) {
        AurPostString( "a_gbl_react: Invalid parameter value passed in.", 10, 15, 15.0f );
        return;//Error out, invalid value
    }

    SetGlobalNumber( "000_React", nType );

    object oInvisObject = GetObjectByTag( "invis_reaction" );

    if ( !(GetIsObjectValid( oInvisObject )))
    {
        AurPostString( "a_gbl_react: Unable to locate 'invis_reaction' object.", 10, 20, 15.0f );
        return;//Error out, invalid object
    }

    object oPC = GetFirstPC();
    AssignCommand( oInvisObject, ClearAllActions() );


    DelayCommand(3.0, AssignCommand( oInvisObject, ActionStartConversation(oPC, "000react" )));
}
