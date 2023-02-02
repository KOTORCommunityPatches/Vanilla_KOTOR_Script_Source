void main() {
	effect efVisual = EffectVisualEffect(3003, 0);
	AssignCommand(GetPartyLeader(), ActionForceMoveToLocation(GetLocation(GetObjectByTag("wp_dest_gen2", 0)), 1, 30.0));
	DelayCommand(3.0, ApplyEffectAtLocation(0, efVisual, GetLocation(OBJECT_SELF), 0.0));
	DelayCommand(3.0, ApplyEffectToObject(0, EffectDeath(0, 1, 0), OBJECT_SELF, 0.0));
	DelayCommand(3.0, DestroyObject(GetObjectByTag("Elc_Holding_Cell2", 0), 0.0, 0, 0.0, 0));
	DelayCommand(3.0, DestroyObject(GetObjectByTag("Generator2", 0), 0.0, 0, 0.0, 0));
	DelayCommand(3.0, SoundObjectPlay(GetObjectByTag("Generator2off", 0)));
}
