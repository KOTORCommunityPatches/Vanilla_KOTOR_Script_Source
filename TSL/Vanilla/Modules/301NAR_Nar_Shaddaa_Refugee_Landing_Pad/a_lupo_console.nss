void main() {
	object oLupo = GetObjectByTag("lupo", 0);
	if (GetIsObjectValid(oLupo)) {
		object oLupo_com = GetObjectByTag("lupo_com", 0);
		location location1;
		if (GetIsObjectValid(oLupo_com)) {
			ClearAllActions();
			location1 = GetLocation(oLupo_com);
			AssignCommand(oLupo, ActionForceMoveToLocation(location1, 1, 30.0));
			object oComputerpanel = GetObjectByTag("computerpanel", 0);
			vector vPosition = GetPosition(oComputerpanel);
			DelayCommand(3.0, ActionDoCommand(SetFacingPoint(vPosition)));
			DelayCommand(3.1, AssignCommand(OBJECT_SELF, SetLockOrientationInDialog(OBJECT_SELF, 1)));
			DelayCommand(4.0, ActionPlayAnimation(102, 1.0, 0.0));
			DelayCommand(5.0, ActionPlayAnimation(15, 1.0, (-1.0)));
		}
	}
}

