// c_quest_status (string S &optional int Y1, Y2, Y3, Y4, Y5)
// checks the player's quest status for quest S
//
// S is the quest's tag.
//
// if Y1 > 0, then returns TRUE when
//             the player at state Y1, Y2, Y3, or Y4
//
// if Y1 = 0, then returns TRUE when the player's state is not zero.
// if Y1 = -1, then returns TRUE when the player's state is zero (pre NOT operator).
//
//
// >> OLD (pre-string parameter):
// >> c_quest_status (int X &optional int Y1, Y2, Y3, Y4)
// >>
// >>
// >> X is the quest's numeric ID.  Ideally, this is equal to its tag in the
// >> journal editor. Otherwise, it can be anything and specified in the case
// >> statement below. Suggested numeric ID = <planet#><quest#> (i.e., 30001 is
// >> quest 01 for the 300 series).
// >>
// >> if Y1 > 0, then returns TRUE when
// >>           the player at state Y1, Y2, Y3, or Y4
// >>
// >> if Y1 = 0, then returns TRUE when the player's state is not zero.
// > if Y1 = -1, then returns TRUE when the player's state is zero (pre NOT operator).
//
// KDS 06/08/04


int StartingConditional()
{

    int nJournalStatus1;
    int nJournalStatus2;
    int nJournalStatus3;
    int nJournalStatus4;
    int nJournalStatus5;
    int nJournalCurrent;

    string sStringParameter = GetScriptStringParameter();
    string sJournalEntry;

    if(sStringParameter == "")
        {
            sJournalEntry = IntToString(GetScriptParameter(1));
            nJournalStatus1 = GetScriptParameter(2);
            nJournalStatus2 = GetScriptParameter(3);
            nJournalStatus3 = GetScriptParameter(4);
            nJournalStatus4 = GetScriptParameter(5);
            nJournalStatus5 = 9999;
        }
        else
        {
            sJournalEntry = sStringParameter;
            nJournalStatus1 = GetScriptParameter(1);
            nJournalStatus2 = GetScriptParameter(2);
            nJournalStatus3 = GetScriptParameter(3);
            nJournalStatus4 = GetScriptParameter(4);
            nJournalStatus5 = GetScriptParameter(5);
        }

    if(nJournalStatus2 == 0) nJournalStatus2 = 9999;
    if(nJournalStatus3 == 0) nJournalStatus3 = 9999;
    if(nJournalStatus4 == 0) nJournalStatus4 = 9999;
    if(nJournalStatus5 == 0) nJournalStatus5 = 9999;

    nJournalCurrent = GetJournalEntry(sJournalEntry);


    if(nJournalStatus1 == 0)
                return GetJournalEntry(sJournalEntry);
    if(nJournalStatus1 == -1)
                return !GetJournalEntry(sJournalEntry);
    return(nJournalStatus1 == nJournalCurrent ||
           nJournalStatus2 == nJournalCurrent ||
           nJournalStatus3 == nJournalCurrent ||
           nJournalStatus4 == nJournalCurrent ||
           nJournalStatus5 == nJournalCurrent);

}
