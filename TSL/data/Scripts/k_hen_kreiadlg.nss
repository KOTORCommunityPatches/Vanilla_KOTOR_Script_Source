//:: k_hen_kreiadlg
/*
    DJS-OEI 2/19/2004
    This is a specialized On Dialogue Script for henchmen
    in KotOR2. The designers wanted a method for allowing the
    DLG to be selected based on the current area (or
    anything else for that matter). This helps split up the
    dialogues to make them more manageable. Since the default henchman
    script calls k_ai_master, there was no way to use anything
    other than the attached DLG. Below, I have copied all of the
    relevant script from k_ai_master, allowing selection of the
    DLG without compromising the current functionality. We just
    need to be sure that if the k_ai_master script changes in the
    Henchman OnDialogue event, we'll need to mirror that here. It's
    unlikely to happen, though.
*/

#include "k_inc_debug"
#include "k_inc_generic"

void SelectAndRunDLG() {

        //prevent FMP 7722 kds
    if ( GetPartyLeader() == OBJECT_SELF )
    {
        BeginConversation();
        return;
    }

    // If player has done psychotic behavior, call the react script.
    // JAB-OEI 7/27/04
    // this needs to happen so things don't break when we use debug warp
    if ( GetFirstPC() == OBJECT_SELF )
    {
        BeginConversation("");
        return;
    }
    else if( GetGlobalNumber ( "000_Psychotic" ) == 1  ) {
        BeginConversation( "000react" );
        return;
    }

    // If Kreia is in the rebuilt Jedi Enclave and all the masters are dead.
    else if ( ( GetModuleName() == "650DAN" ) && ( GetGlobalNumber ("650DAN_Revelation" ) == 1 ) ) {
        BeginConversation( "krealone" );
    }

    // If Kreia is in the icy plateau that hides the Jedi Academy!
    else if( GetModuleName() == "262TEL"  ) {
        BeginConversation( "262Kreia" );
    }

    // If Kreia is on the Ebon Hawk after escaping Peragus.
    else if( (GetModuleName() == "003EBO") && (GetGlobalNumber("262TEL_Escape_Telos") == 0) )
    {
        BeginConversation( "003Kreia" );
    }

    // If Kreia is on 101PER and hasn't joined your party yet.
    else if( GetModuleName() == "101PER" && GetGlobalNumber("101PER_Kreia_Joined") == 0 ) {
        BeginConversation( "101Kreia" );
    }

    // Add as many else if()'s as you want for selecting
    // various DLGs, but leave the 'else' below as the default
    // case.
    else {

        // This uses the DLG attached in the editor.
        BeginConversation();
    }
}

void main()
{
    int nMatch = GetListenPatternNumber();
    if(!GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
    {
        if(GetCommandable())
        {
            object oShouter = GetLastSpeaker();
            object oIntruder;
            if (nMatch == -1)
            {
                ClearAllActions();
                SelectAndRunDLG();
                // JAB-OEI 6/4/04
                // user defined event needs to be called
                if(GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_DIALOGUE))
                {
                    SignalEvent(OBJECT_SELF, EventUserDefined(1004));
                }
                return;
            }
            else
            {
                GN_RespondToShout(oShouter, nMatch, GetLastHostileActor(oShouter));
            }
        }
    }
    if( nMatch == -1 )
    {
        ResetDialogState();
    }
    if(GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_DIALOGUE))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1004));
    }

//    Original script
//    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_HENCH_EVENT_ON_DIALOGUE);
}
