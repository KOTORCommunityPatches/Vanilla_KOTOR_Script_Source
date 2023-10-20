#include "k_inc_tar"

void main() {
	
	object oGate = GetObjectByTag("tar04_maingate", 0);
	object oRak = GetObjectByTag("hendarsfate", 0);
	object oHester = GetObjectByTag("OutcastWoman043", 0);
	object oEntering = GetEnteringObject();
	int nPty = (GetPartyMemberCount() - 1);
	
	if (oEntering == GetPartyMemberByIndex(nPty) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			Db_PostString("CLOSING GATE", 5, 5, 5.0);
			
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			UT_SetPlotBooleanFlag(oGate, SW_PLOT_BOOLEAN_01, FALSE);
			
			AssignCommand(oGate, ActionCloseDoor(oGate));
			
			DelayCommand(1.0, SignalEvent(oRak, EventUserDefined(3000)));
			
			AssignCommand(oHester, ActionResumeConversation());
		}
}
