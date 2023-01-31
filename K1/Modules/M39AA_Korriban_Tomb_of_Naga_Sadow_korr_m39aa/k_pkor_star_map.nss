#include "k_inc_utility"

void main() {
	
	object oNPC = GetPartyMemberByIndex(0);
	object oStarMap = GetObjectByTag("k39_plc_starmap", 0);
	int nTalked = GetLocalBoolean(OBJECT_SELF, SW_PLOT_HAS_TALKED_TO);
	
	if (((GetEnteringObject() == oNPC) && (nTalked == FALSE)))
		{
			object oMapSnd = GetObjectByTag("k39_snd_starmap", 0);
			
			SetLocalBoolean(OBJECT_SELF, SW_PLOT_HAS_TALKED_TO, TRUE);
			
			AddJournalQuestEntry("kor33_findstarmap", 40, 0);
			GivePlotXP("kor33_findstarmap", 100);
			
			ActionStartConversation(GetObjectByTag("kor_startalk", 0));
			
			DelayCommand(0.5, AssignCommand(oStarMap, UT_StarMap4RunStarMap()));
			
			DelayCommand(0.6, SoundObjectPlay(oMapSnd));
		}
}