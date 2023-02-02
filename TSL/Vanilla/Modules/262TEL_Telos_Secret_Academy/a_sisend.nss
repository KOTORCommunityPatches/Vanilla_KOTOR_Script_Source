// Prototypes
void sub1();

void sub1() {
	CreateObject(1, "n_darthtraya002", GetLocation(GetWaypointByTag("sp_atris_atrend1")), 0);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	object oLeader = GetPartyLeader();
	switch (nParam1) {
		case 0:
			DelayCommand(1.0, AssignCommand(oLeader, ActionMoveToObject(GetWaypointByTag("wp_hand_sisend"), 0, 1.0)));
			SetLockOrientationInDialog(oLeader, 1);
			break;
		case 1:
			SetGlobalFadeOut(1.0, 2.0, 0.0, 0.0, 0.0);
			{
				effect efDeath = EffectDeath(1, 0, 1);
				DelayCommand(2.4, ApplyEffectToObject(2, efDeath, GetObjectByTag("Sister1", 0), 0.0));
				DelayCommand(2.9, ApplyEffectToObject(2, efDeath, GetObjectByTag("Sister2", 0), 0.0));
				DelayCommand(2.5, ApplyEffectToObject(2, efDeath, GetObjectByTag("SisterFight", 2), 0.0));
				DelayCommand(2.3, ApplyEffectToObject(2, efDeath, GetObjectByTag("SisterFight", 1), 0.0));
				DelayCommand(2.1, ApplyEffectToObject(2, efDeath, GetObjectByTag("SisterFight", 0), 0.0));
				DelayCommand(3.0, AssignCommand(oLeader, ActionJumpToObject(GetWaypointByTag("sp_hand_atrend1"), 1)));
				DelayCommand(4.0, sub1());
				DelayCommand(4.0, AssignCommand(oLeader, ClearAllActions()));
				DelayCommand(4.0, AssignCommand(oLeader, ActionStartConversation(oLeader, "Atrend1", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
				SetLockOrientationInDialog(oLeader, 0);
			}
			break;
	}
}
