void main() {
	effect efVisual = EffectVisualEffect(3003, 0);
	AssignCommand(GetPartyLeader(), ActionForceMoveToLocation(GetLocation(GetObjectByTag("wp_det_sensor", 0)), 1, 30.0));
	DelayCommand(3.0, ApplyEffectAtLocation(0, efVisual, GetLocation(OBJECT_SELF), 0.0));
	DelayCommand(3.0, SoundObjectStop(GetObjectByTag("Alarm", 0)));
}

