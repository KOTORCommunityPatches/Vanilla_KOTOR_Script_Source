// c_quest_lt
/*
    Returns true if the journal entry is less than a given number

    sQuest  The tag of the quest
    iNum    The number to check if less than

*/
// TDE 9/9/04

int StartingConditional()
{
    string sQuest = GetScriptStringParameter();
    int iNum = GetScriptParameter(1);

    if (GetJournalEntry(sQuest) < iNum) return TRUE;

    return FALSE;
}
