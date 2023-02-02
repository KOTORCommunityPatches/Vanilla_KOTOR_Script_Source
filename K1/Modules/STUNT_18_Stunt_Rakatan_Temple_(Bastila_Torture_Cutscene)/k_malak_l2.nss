void main() {
	
	object oBastila = GetObjectByTag("Bastila", 0);
	object oMalak = GetObjectByTag("DarthMalak", 0);
	object oInvis = GetObjectByTag("Invisible", 0);
	effect eBeamRH = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, oMalak, BODY_NODE_HAND_RIGHT, FALSE);
	effect eBeamLH = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, oMalak, BODY_NODE_HAND_LEFT, FALSE);
	effect eLgtning = EffectVisualEffect(VFX_PRO_LIGHTNING_L, FALSE);
	
	DelayCommand(0.0, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeamRH, oInvis, 1.5));
	DelayCommand(0.0, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeamLH, oInvis, 1.5));
	DelayCommand(0.0, PlayRoomAnimation("StuntRoom44aa", ANIMATION_ROOM_SCRIPTLOOP02));
	DelayCommand(1.5, PlayRoomAnimation("StuntRoom44aa", ANIMATION_ROOM_SCRIPTLOOP01));
	DelayCommand(2.0, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeamRH, oBastila, 3.0));
	DelayCommand(2.0, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeamLH, oBastila, 3.0));
	DelayCommand(3.0, PlayRoomAnimation("StuntRoom44aa", ANIMATION_ROOM_SCRIPTLOOP02));
	DelayCommand(2.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, eLgtning, oBastila));
	DelayCommand(2.7, ApplyEffectToObject(DURATION_TYPE_INSTANT, eLgtning, oBastila));
	DelayCommand(3.4, ApplyEffectToObject(DURATION_TYPE_INSTANT, eLgtning, oBastila));
	DelayCommand(4.1, ApplyEffectToObject(DURATION_TYPE_INSTANT, eLgtning, oBastila));
}
