#include "k_inc_tat"

void main() {
	
	object oGurke = GetObjectByTag("tat18_12gurke_01", 0);
	object oNarkal = GetObjectByTag("tat18_12narka_01", 0);
	object oUgzak = GetObjectByTag("tat18_12ugzak_01", 0);
	object oWP_gurexit = GetObjectByTag("tat18aa_gurexit", 0);
	object oWP_ugzexit = GetObjectByTag("tat18aa_ugzexit", 0);
	object oWP_narexit = GetObjectByTag("tat18aa_narexit", 0);
	
	ActionPauseConversation();
	DelayCommand(3.0, ActionResumeConversation());
	
	SetGlobalFadeOut(0.0, 3.0);
	DelayCommand(4.0, SetGlobalFadeIn(0.0, 3.0));
	
	SetGammoreanBribeGlobal(TRUE);
	
	AssignCommand(oUgzak, ClearAllActions());
	AssignCommand(oUgzak, ActionForceMoveToObject(oWP_ugzexit, TRUE, 1.0, 3.0));
	AssignCommand(oUgzak, ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, TRUE)));
	
	AssignCommand(oNarkal, ClearAllActions());
	AssignCommand(oNarkal, ActionForceMoveToObject(oWP_narexit, TRUE, 1.0, 3.0));
	AssignCommand(oNarkal, ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, TRUE)));
	
	AssignCommand(oGurke, ClearAllActions());
	AssignCommand(oGurke, ActionForceMoveToObject(oWP_gurexit, TRUE, 1.0, 3.0));
	AssignCommand(oGurke, ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, TRUE)));
}