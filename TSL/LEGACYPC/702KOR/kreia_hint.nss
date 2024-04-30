void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	if ((!GetIsObjectValid(oKreia))) {
		return;
	}
	object oDoor_enter = GetObjectByTag("door_enter", 0);
	if ((!GetIsObjectValid(oDoor_enter))) {
		return;
	}
	SetLocked(oDoor_enter, 0);
	DelayCommand(0.5, AssignCommand(oDoor_enter, ActionOpenDoor(oDoor_enter)));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("SithAssassin", 0), 1));
	DelayCommand(0.3, ExecuteScript("a_force_combat", GetObjectByTag("SithAssassin", 0), 0xFFFFFFFF));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("SithAssassin", 1), 1));
	DelayCommand(0.3, ExecuteScript("a_force_combat", GetObjectByTag("SithAssassin", 1), 0xFFFFFFFF));
}

