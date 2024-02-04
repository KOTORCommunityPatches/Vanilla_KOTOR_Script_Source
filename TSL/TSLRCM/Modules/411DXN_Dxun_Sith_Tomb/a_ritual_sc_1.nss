void main() {
	object oElectricalArcSingles = GetObjectByTag("ritual_follower", 0);
	AssignCommand(oElectricalArcSingles, ClearAllActions());
	AssignCommand(oElectricalArcSingles, ActionPlayAnimation(19, 1.0, (-1.0)));
	oElectricalArcSingles = GetObjectByTag("ritual_follower", 1);
	AssignCommand(oElectricalArcSingles, ClearAllActions());
	AssignCommand(oElectricalArcSingles, ActionPlayAnimation(19, 1.0, (-1.0)));
	oElectricalArcSingles = GetObjectByTag("ritual_follower", 2);
	AssignCommand(oElectricalArcSingles, ClearAllActions());
	AssignCommand(oElectricalArcSingles, ActionPlayAnimation(19, 1.0, (-1.0)));
	DelayCommand(0.5, ApplyEffectToObject(0, EffectDamage(1000, 8, 0), GetObjectByTag("ritual_follower", 2), 0.0));
	DestroyObject(GetObjectByTag("sith_gas", 0), 0.0, 0, 0.0, 0);
	DelayCommand(0.5, ApplyEffectToObject(2, EffectBeam(2038, GetObjectByTag("ritual_source", 0), 2, 0), GetObjectByTag("ritual_follower", 2), 0.0));
	DelayCommand(2.5, PlayRoomAnimation("411dxnr", 2));
	DelayCommand(3.2, PlayRoomAnimation("411dxnr", 3));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("ritual_follower", 0), ActionMoveToObject(GetWaypointByTag("wp_ritual_fo1"), 0, 1.0)));
	DelayCommand(1.3, AssignCommand(GetObjectByTag("ritual_follower", 1), ActionMoveToObject(GetWaypointByTag("wp_ritual_fo2"), 0, 1.0)));
	oElectricalArcSingles = GetObjectByTag("DarkForceBigger", 0);
	DelayCommand(3.2, SoundObjectStop(oElectricalArcSingles));
	int int1;
	int1;
	while ((int1 < 4)) {
		oElectricalArcSingles = GetObjectByTag("ElectricalArcSingles", int1);
		DelayCommand(3.2, SoundObjectStop(oElectricalArcSingles));
		(int1++);
	}
}