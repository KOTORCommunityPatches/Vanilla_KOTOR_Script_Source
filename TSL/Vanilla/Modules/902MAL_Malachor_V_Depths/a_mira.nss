// Byte code does not match

// Prototypes
void sub2();
void sub1();

void sub2() {
	ApplyEffectToObject(0, EffectHeal(GetMaxHitPoints(GetFirstPC())), GetFirstPC(), 0.0);
	SetMinOneHP(GetFirstPC(), 0);
	DestroyObject(GetObjectByTag("Hanharr", 0), 0.0, 0, 0.0, 0);
	SetGlobalBoolean("MAL_TURNINTO_REMOTE", 1);
	AssignCommand(GetFirstPC(), DelayCommand(0.5, StartNewModule("901MAL", "wp_remote_start", "", "", "", "", "", "")));
}

void sub1() {
	SwitchPlayerCharacter((-1));
}

void main() {
	int nParam1 = GetScriptParameter(1);
	object oLeader = GetPartyLeader();
	object oHanharr2 = GetObjectByTag("Hanharr2", 0);
	switch (nParam1) {
		case 0:
			AssignCommand(oLeader, SetFacing(0.0));
			CreateObject(1, "p_hanharr002", GetLocation(GetWaypointByTag("sp_hanharr")), 0);
			DelayCommand(0.4, AssignCommand(oLeader, ActionMoveToLocation(GetLocation(GetWaypointByTag("wp_mira")), 0)));
			SetLockOrientationInDialog(oLeader, 1);
			DelayCommand(0.4, SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0));
			break;
		case 1:
			DelayCommand(0.4, AssignCommand(oHanharr2, ActionMoveToLocation(GetLocation(GetWaypointByTag("wp_hanharr")), 0)));
			break;
		case 2:
			object oPortcullis2 = GetObjectByTag("Portcullis1", 0);
			DelayCommand(0.5, AssignCommand(oPortcullis2, ActionCloseDoor(oPortcullis2)));
			DelayCommand(1.5, SetLocked(oPortcullis2, 1));
			oPortcullis2 = GetObjectByTag("Portcullis2", 0);
			DelayCommand(0.5, AssignCommand(oPortcullis2, ActionCloseDoor(oPortcullis2)));
			DelayCommand(1.5, SetLocked(oPortcullis2, 1));
			ChangeToStandardFaction(oHanharr2, 1);
			break;
		case 3:
			AssignCommand(oLeader, ActionDoCommand(SetFacing(180.0)));
			AssignCommand(oHanharr2, ActionDoCommand(SetFacing(0.0)));
			break;
		case 4:
			SetGlobalFadeIn(0.5, 2.0, 0.0, 0.0, 0.0);
			SetLockOrientationInDialog(oLeader, 1);
			SetLockOrientationInDialog(oHanharr2, 1);
			break;
		case 5:
			AssignCommand(oLeader, ActionMoveToObject(GetObjectByTag("wp_mira_end", 0), 0, 1.0));
			break;
		case 6:
			SetGlobalFadeOut(0.5, 2.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			AssignCommand(oHanharr2, DelayCommand(3.0, sub1()));
			AssignCommand(oHanharr2, DelayCommand(3.2, sub2()));
			break;
		case 7:
			AssignCommand(oHanharr2, ActionMoveToObject(GetObjectByTag("wp_hanharr_end", 0), 0, 1.0));
			DelayCommand(4.0, AssignCommand(oLeader, ActionMoveToObject(GetObjectByTag("wp_mira_end", 0), 0, 1.0)));
			break;
		case 8:
			CreatureFlourishWeapon(oLeader);
			DelayCommand(2.0, SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0));
			break;
		case 9:
			SetGlobalFadeIn(0.1, 0.5, 0.0, 0.0, 0.0);
			AssignCommand(oHanharr2, ActionPlayAnimation(26, 1.0, (-1.0)));
			break;
	}
}
