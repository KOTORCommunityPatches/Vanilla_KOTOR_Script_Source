#include "k_inc_utility"

void main() {

	//object oSelf = OBJECT_SELF;
	object oRodian = GetObjectByTag("taproomvic031", 0);
	object oTwilek1 = GetObjectByTag("taproomvic032", 0);
	object oTwilek2 = GetObjectByTag("taproomvic033", 0);
	object oCalo = GetObjectByTag("calo031", 0);
	
	UT_SetTalkedToBooleanFlag(oCalo, TRUE);
	// SW_FLAG_AI_OFF
	AssignCommand(oCalo, UT_SetPlotBooleanFlag(62, TRUE));
	
	ActionPauseConversation();
	
	ChangeToStandardFaction(oCalo, STANDARD_FACTION_FRIENDLY_1);
	ChangeToStandardFaction(oRodian, STANDARD_FACTION_FRIENDLY_2);
	ChangeToStandardFaction(oTwilek1, STANDARD_FACTION_FRIENDLY_2);
	ChangeToStandardFaction(oTwilek2, STANDARD_FACTION_FRIENDLY_2);
	
	AssignCommand(oCalo, PlayAnimation(ANIMATION_FIREFORGET_THROW_LOW));
	DelayCommand(0.6, PlaySound("cs_grentoss"));
	
	DelayCommand(1.2, ActionResumeConversation());
}
