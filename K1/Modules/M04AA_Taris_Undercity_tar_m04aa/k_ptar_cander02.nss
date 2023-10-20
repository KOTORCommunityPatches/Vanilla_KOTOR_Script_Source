#include "k_inc_generic"

void main() {
	
	if (GetGlobalNumber("tar_canderous") == 0)
		{
			
			object oRak1 = CreateObject(OBJECT_TYPE_CREATURE, "tar04_rakghoulco", GetLocation(GetObjectByTag("tar04_ghoulsp00", 0)));
			object oRak2 = CreateObject(OBJECT_TYPE_CREATURE, "tar04_rakghoulco", GetLocation(GetObjectByTag("tar04_ghoulsp01", 0)));
			object oRak3 = CreateObject(OBJECT_TYPE_CREATURE, "tar04_rakghoulco", GetLocation(GetObjectByTag("tar04_ghoulsp02", 0)));
			object oRak4 = CreateObject(OBJECT_TYPE_CREATURE, "tar04_rakghoulco", GetLocation(GetObjectByTag("tar04_ghoulsp04", 0)));
			object oCanMook041 = GetObjectByTag("Daviktroop041", 0);
			object oCanMook042 = GetObjectByTag("Daviktroop042", 0);
			object oCanMook043 = GetObjectByTag("Daviktroop043", 0);
			object oCanderous = OBJECT_SELF;
			
			DelayCommand(3.5, AssignCommand(oRak1, ActionMoveToObject(GetObjectByTag("tar04_wpmvg1", 0), TRUE)));
			DelayCommand(4.5, AssignCommand(oRak2, ActionMoveToObject(GetObjectByTag("tar04_wpmvg2", 0), TRUE)));
			DelayCommand(5.5, AssignCommand(oRak3, ActionMoveToObject(GetObjectByTag("tar04_wpmvg3", 0), TRUE)));
			DelayCommand(6.5, AssignCommand(oRak4, ActionMoveToObject(GetObjectByTag("tar04_wpmvg4", 0), TRUE)));
			
			ActionPauseConversation();
			ActionWait(4.5);
			ActionResumeConversation();
		}
	
	SetGlobalNumber("Tar_Canderous", 1);
}
