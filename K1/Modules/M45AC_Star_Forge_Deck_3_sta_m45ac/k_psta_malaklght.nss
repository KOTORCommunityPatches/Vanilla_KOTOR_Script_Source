// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

#include "k_inc_generic"

void main() {
	
	object oJedi1 = GetObjectByTag("sta_jedivic1", 0);
	object oJedi2 = GetObjectByTag("sta_jedivic2", 0);
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	event eUser = EventUserDefined(345);
	object oPC = GetFirstPC();
	
	ActionPauseConversation();
	
	ChangeToStandardFaction(oMalak, STANDARD_FACTION_FRIENDLY_1);
	ChangeToStandardFaction(oJedi2, STANDARD_FACTION_FRIENDLY_2);
	DelayCommand(6.2, ChangeToStandardFaction(oJedi1, STANDARD_FACTION_FRIENDLY_2));
	
	ClearAllActions();
	
	SetDialogPlaceableCamera(8);
	
	DelayCommand(0.4, AssignCommand(oMalak, ActionEquipMostDamagingMelee(OBJECT_INVALID, FALSE)));
	
	AssignCommand(oPC, SetFacing(GetFacing(GetObjectByTag("STA_JUMP0_WP", 0))));
	
	DelayCommand(0.95000005, SetDialogPlaceableCamera(40));
	DelayCommand(1.7, SetDialogPlaceableCamera(9));
	
	talent tSaberThrow = TalentSpell(FORCE_POWER_LIGHT_SABER_THROW_ADVANCED);
	
	DelayCommand(2.1, SetDialogPlaceableCamera(45));
	
	DelayCommand(2.3, AssignCommand(oMalak, PlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_RIGHT)));
	
	DelayCommand(3.6, SetDialogPlaceableCamera(41));
	
	DelayCommand(3.79, AssignCommand(oMalak, ClearAllActions()));
	DelayCommand(3.8, AssignCommand(oMalak, PlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_LEFT)));
	DelayCommand(4.5, AssignCommand(oMalak, ClearAllActions()));
	
	DelayCommand(4.4100003, SetDialogPlaceableCamera(38));
	
	DelayCommand(4.51, AssignCommand(oMalak, SetFacingPoint(GetPosition(oJedi2))));
	DelayCommand(5.01, AssignCommand(oMalak, ClearAllActions()));
	DelayCommand(5.05, AssignCommand(oMalak, ActionUseTalentOnObject(tSaberThrow, oJedi2)));
	
	effect efDeath = EffectDeath(FALSE, TRUE);
	
	DelayCommand(7.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, efDeath, oJedi2, 0.0));
	
	DelayCommand(5.02, SetDialogPlaceableCamera(39));
	
	talent tLightning = TalentSpell(FORCE_POWER_LIGHTNING);
	
	DelayCommand(6.2799997, CancelCombat(oMalak));
	
	DelayCommand(6.29, SetDialogPlaceableCamera(43));
	
	DelayCommand(6.3500004, AssignCommand(oMalak, ActionUseTalentOnObject(tLightning, oJedi1)));
	
	DelayCommand(6.8900003, SetDialogPlaceableCamera(42));
	
	DelayCommand(9.89, CancelCombat(oMalak));
	
	ActionWait(9.2);
	
	DelayCommand(7.2, ApplyEffectToObject(DURATION_TYPE_INSTANT, efDeath, oJedi1, 0.0));
	
	DelayCommand(7.82, SetDialogPlaceableCamera(44));
	
	DelayCommand(9.0, CancelCombat(oMalak));
	DelayCommand(9.1, AssignCommand(oMalak, ClearAllActions()));
	
	ActionResumeConversation();
}
