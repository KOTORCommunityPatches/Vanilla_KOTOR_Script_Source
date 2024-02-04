void main() {
	object oNearestZhugShooter = GetNearestObjectByTag("ZhugShooter", OBJECT_SELF, 1);
	object oGranVictim = GetObjectByTag("GranVictim", 0);
	ActionWait(5.2);
	ChangeToStandardFaction(oNearestZhugShooter, 2);
	ChangeToStandardFaction(oGranVictim, 4);
	ApplyEffectToObject(1, EffectAssuredHit(), oNearestZhugShooter, 5.0);
	DelayCommand(0.3, SetDialogPlaceableCamera(10));
	DelayCommand(0.5, AssignCommand(oNearestZhugShooter, ActionAttack(oGranVictim, 0)));
}