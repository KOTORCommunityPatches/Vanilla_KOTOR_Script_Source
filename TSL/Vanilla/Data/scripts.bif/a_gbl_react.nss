//  a_gbl_react
/*
    Companions will react to you if you acted psychotic, cunning or good:

    0 = Psychotic Lines. These are played when the player does something... well, psychotic.
    1 = Cunning Lines. These are played when the player makes a particularly cunning choice.
    2 = Good Act responses. These are played when the player does something nice.

    You will need to place the invis_reaction placeable somewhere in the area for this to work.
*/
//  Modified: Tony Evans 10/14/04 (Added Header)

void main()
{

    //RWT-OEI 10/24/04
    //If there are no party members, don't do anything.
    if ( GetPartyMemberCount() < 2 )
    {
        return;
    }
    //Check to see if there was a runscript var set, such as from
    //the  Execute Script function.
    int nType = GetRunScriptVar();

/*  //If GetRunScriptVar() returns -1, then it was not set.
    //So see if a script parameter was passed in instead.
    if ( nType == -1 )
    {
        nType = GetScriptParameter(1);
    }
 */
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
