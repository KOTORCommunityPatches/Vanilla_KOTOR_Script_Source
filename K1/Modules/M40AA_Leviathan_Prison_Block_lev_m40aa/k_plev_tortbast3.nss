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

void main() {
	
	object oBastila = GetObjectByTag("bastila", 0);
	
	Torture(GetNearestObjectByTag("lev40_tortcage", oBastila, 1), oBastila, 6.0);
}