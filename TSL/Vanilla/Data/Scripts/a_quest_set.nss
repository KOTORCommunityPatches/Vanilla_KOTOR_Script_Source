//  a_quest_set
/*
    Sets the journal entry to a given number

    sQuest      The tag of the quest
    iEntry      The number of the journal entry to set the quest to
    iOverride   Override if journal is already set to a higher number
*/
// TDE 9/9/04

void main()
{
    string sQuest = GetScriptStringParameter();
    int iEntry = GetScriptParameter(1);
    int iOverride = GetScriptParameter(2);

    AddJournalQuestEntry(sQuest, iEntry, iOverride);
}
