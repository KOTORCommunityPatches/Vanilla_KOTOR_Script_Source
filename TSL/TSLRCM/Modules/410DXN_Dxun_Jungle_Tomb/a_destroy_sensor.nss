void main() {
	DestroyObject(GetItemPossessedBy(GetFirstPC(), "g_410demolitions"), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("perim_sensor", 0), 0.0, 1, 0.0, 0);
	SoundObjectStop(GetObjectByTag("Alarm", 0));
	effect efVisual = EffectVisualEffect(3003, 0);
	AssignCommand(GetPartyLeader(), ActionForceMoveToLocation(GetLocation(GetObjectByTag("wp_det_sensor", 0)), 1, 30.0));
	DelayCommand(3.0, ApplyEffectAtLocation(0, efVisual, GetLocation(OBJECT_SELF), 0.0));
	DelayCommand(3.0, SoundObjectStop(GetObjectByTag("Alarm", 0)));
}