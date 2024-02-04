void main() {
	ActionPauseConversation();
	object oAtton = GetObjectByTag("Atton", 0);
	AssignCommand(oAtton, ActionJumpToObject(GetObjectByTag("WP_gspawn_atton", 0), 1));
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	if (IsAvailableCreature(4)) {
		SpawnAvailableNPC(4, GetLocation(GetObjectByTag("WP_gspawn_handmaiden", 0)));
	}
	else {
		if (IsAvailableCreature(11)) {
			SpawnAvailableNPC(11, GetLocation(GetObjectByTag("WP_gspawn_handmaiden", 0)));
		}
		else {
			if (IsAvailableCreature(9)) {
				SpawnAvailableNPC(9, GetLocation(GetObjectByTag("WP_gspawn_handmaiden", 0)));
			}
			else {
				if (IsAvailableCreature(1)) {
					SpawnAvailableNPC(1, GetLocation(GetObjectByTag("WP_gspawn_handmaiden", 0)));
				}
			}
		}
	}
	SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
	DelayCommand(3.0, ActionResumeConversation());
}