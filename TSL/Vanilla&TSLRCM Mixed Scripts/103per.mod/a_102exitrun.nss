void main() {
	ClearAllActions();
	object oT3M4 = GetObjectByTag("T3M4", 0);
	object oWP_T3_DEAD = GetObjectByTag("WP_T3_DEAD", 0);
	object oWP_T3_SMOKE = GetObjectByTag("WP_T3_SMOKE", 0);
	location location1 = GetLocation(oWP_T3_DEAD);
	location location3 = GetLocation(oWP_T3_SMOKE);
	DelayCommand(0.1, AssignCommand(oT3M4, ActionJumpToLocation(location1)));
	CreateObject(64, "stmventi001", location3, 0);
	DelayCommand(0.2, ApplyEffectToObject(0, EffectDeath(0, 1, 0), GetObjectByTag("T3M4", 0), 0.0));
	object oTO102PER = GetObjectByTag("TO102PER", 0);
	object oWP_PC_ENTER2 = GetObjectByTag("WP_PC_ENTER2", 0);
	location location5 = GetLocation(oWP_PC_ENTER2);
	ActionPauseConversation();
	object oPC = GetFirstPC();
	object oWP_grenade = GetObjectByTag("WP_grenade", 0);
	effect efVisual = EffectVisualEffect(3003, 0);
	ApplyEffectAtLocation(0, efVisual, GetLocation(oWP_grenade), 0.0);
	PlayRoomAnimation("103PERt", 1);
	DelayCommand(0.1, AssignCommand(oPC, ActionMoveToLocation(location5, 1)));
	DelayCommand(0.6, AssignCommand(oPC, PlayOverlayAnimation(oPC, 123)));
	DelayCommand(0.7, AssignCommand(oPC, ActionWait(0.3)));
	DelayCommand(0.8, AssignCommand(oPC, ActionPlayAnimation(100, 1.0, 0.0)));
	DelayCommand(0.1, AssignCommand(oTO102PER, ActionCloseDoor(oTO102PER)));
	DelayCommand(1.5, SetLocked(oTO102PER, 1));
	DelayCommand(5.0, ActionResumeConversation());
	object oElevatorBodyRoll = GetObjectByTag("ElevatorBodyRoll", 0);
	object oElevatorExplosionMain = GetObjectByTag("ElevatorExplosionMain", 0);
	DelayCommand(1.0, SoundObjectPlay(oElevatorBodyRoll));
}

