void main() {
	int int1 = 2;
	while ((int1 >= 0)) {
		{
			object oG_TURRETBL008 = GetObjectByTag("G_TURRETBL008", int1);
			AssignCommand(oG_TURRETBL008, SetIsDestroyable(0, 0, 0));
			ApplyEffectToObject(0, EffectDeath(0, 1, 0), oG_TURRETBL008, 0.0);
		}
		(int1--);
	}
	effect efVisual = EffectVisualEffect(3003, 0);
	AssignCommand(GetPartyLeader(), ActionForceMoveToLocation(GetLocation(GetObjectByTag("wp_dest_gen1", 0)), 1, 30.0));
	DelayCommand(3.0, ApplyEffectAtLocation(0, efVisual, GetLocation(OBJECT_SELF), 0.0));
	DelayCommand(3.0, ApplyEffectToObject(0, EffectDeath(0, 1, 0), OBJECT_SELF, 0.0));
	DelayCommand(3.0, DestroyObject(GetObjectByTag("Elc_Holding_Cell1", 0), 0.0, 0, 0.0, 0));
	DelayCommand(3.0, DestroyObject(GetObjectByTag("Generator1", 0), 0.0, 0, 0.0, 0));
	DelayCommand(3.0, SoundObjectPlay(GetObjectByTag("Generator1off", 0)));
}

