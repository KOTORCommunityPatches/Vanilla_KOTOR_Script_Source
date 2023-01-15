// c_quest_bet
/*
    Returns true if the journal entry is between two given numbers

    sQuest  The tag of the quest
    iLow    The low number to check
    iHigh   The high number to check

*/
// TDE 9/9/04

int StartingConditional()
{
    string sQuest = GetScriptStringParameter();
    int iLow = GetScriptParameter(1);
    int iHigh = GetScriptParameter(2);

    if (GetJournalEntry(sQuest) >= iLow && GetJournalEntry(sQuest) <= iHigh) return TRUE;

    return FALSE;
}

