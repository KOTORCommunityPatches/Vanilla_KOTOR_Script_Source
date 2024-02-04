// Byte code does not match

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			SetGlobalNumber("901MAL_REMOTE", 1);
			DelayCommand(1.0, AssignCommand(GetPartyLeader(), ActionMoveToLocation(GetLocation(GetObjectByTag("wp_remote_move", 0)), 0)));
			SetLockOrientationInDialog(GetObjectByTag("BaoDur", 0), 1);
			AssignCommand(GetObjectByTag("BaoDur", 0), SetFacing(GetFacing(GetWaypointByTag("wp_baodur"))));
			object oRemote = GetObjectByTag("remote", 0);
			effect efSpeedInc = EffectMovementSpeedIncrease(99);
			ApplyEffectToObject(2, efSpeedInc, oRemote, 0.0);
			SetMinOneHP(GetPartyLeader(), 0);
			break;
		case 1:
			DelayCommand(1.0, AssignCommand(GetObjectByTag("BaoDur", 0), ActionJumpToLocation(GetLocation(GetWaypointByTag("wp_baodur")))));
			break;
		case 2:
			DestroyObject(GetObjectByTag("BaoDur", 0), 0.0, 0, 0.0, 0);
			break;
	}
}