#include "k_inc_lev"

void PrisonerAnim(float fLength) {
	ActionPlayAnimation(ANIMATION_LOOPING_SPASM, 1.0, fLength / 3.0);
	ActionPlayAnimation(ANIMATION_LOOPING_HORROR, 1.0, fLength / 3.0);
	ActionPlayAnimation(ANIMATION_LOOPING_SPASM, 1.0, fLength / 3.0);
}

void ApplyVFX(object oTarget, object oNPC, float fDuration) {
	AssignCommand(oNPC, PrisonerAnim(fDuration));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectBeam(VFX_BEAM_LIGHTNING_DARK_S, oTarget, BODY_NODE_HEAD, FALSE), oNPC, fDuration);
}

void Torture(object oTarget, object oNPC, float fDuration) {
	object oSnd = GetObjectByTag("lev40_tortsnd", 0);
	ApplyVFX(oTarget, oNPC, fDuration);
	SoundObjectPlay(oSnd);
	DelayCommand(fDuration, SoundObjectStop(oSnd));
}

void TortureTarget(object oNearestTo) {
	Torture(GetNearestObjectByTag("lev40_tortcage", oNearestTo, 1), oNearestTo, 8.0);
}

void main() {
	
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	object oDoor = GetObjectByTag("lev40_celldoor", 0);
	object object7;
	
	ActionPauseConversation();
	
	TortureTarget(oBastila);
	TortureTarget(oCarth);
	
	PlaySound("cs_carthscrm");
	
	TortureTarget(GetFirstPC());
	
	DelayCommand(5.0, SetGlobalFadeOut(0.0, 3.0));
	DelayCommand(7.0, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
	
	ActionPauseConversation();
	ActionMoveToObject(GetNearestObjectByTag("plev_wpnpcext", OBJECT_SELF, 1));
	ActionResumeConversation();
}
