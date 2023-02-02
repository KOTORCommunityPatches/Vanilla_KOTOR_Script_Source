#include "k_inc_kas"

void main() {
	
	object oZaalbar = GetObjectByTag("Zaalbar", 0);
	
	SetChuundarRewardGlobal(1);
	
	if (GetJournalEntry("kas23_rorworr") > 0 && GetJournalEntry("kas23_rorworr") < 60)
		{
			AddJournalQuestEntry("kas23_rorworr", 80);
		}
	
	SetNPCSelectability(8, 1);
	SetGlobalBoolean("tat_ZaalbarTaken", 0);
	
	DelayCommand(1.0, ShowPartySelectionGUI("k_pkas_leavetown"));
	DelayCommand(1.0, DestroyObject(oZaalbar));
}
