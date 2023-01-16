void main()
{
int nDxnOpen;
if(GetGlobalNumber("500OND_Civil_War") > 1) nDxnOpen = 1; else nDxnOpen = 0;
int nDanOpen;
if(GetGlobalNumber("602DAN_End") > 0) nDanOpen = 1; else nDanOpen = 0;
int nDxnEst = GetGlobalNumber("301NAR_Geeda_Dxn");
int nDanEst = GetGlobalNumber("301NAR_Geeda_Dan");

int nJournal = GetJournalEntry("NewTradeRoutes");

if (nJournal == 0) return;

if(nDxnEst == 1 && nDanEst == 1)
    {
        AddJournalQuestEntry("NewTradeRoutes", 33);
        return;
    }
if(nDxnEst == 1)
    {
        AddJournalQuestEntry("NewTradeRoutes", 13, TRUE);
        return;
    }
if(nDanEst == 1)
    {
        AddJournalQuestEntry("NewTradeRoutes", 31);
        return;
    }
if(nDanOpen == 1 && nDxnOpen ==1)
     {
        AddJournalQuestEntry("NewTradeRoutes", 22);
        return;
     }
if(nDanOpen == 1)
     {
        AddJournalQuestEntry("NewTradeRoutes", 21);
        return;
     }
if(nDxnOpen == 1)
     {
        AddJournalQuestEntry("NewTradeRoutes", 12);
        return;
     }
AddJournalQuestEntry("NewTradeRoutes", 11);



}
