void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	switch (GetScriptParameter(1)) {
		case 0:
			AssignCommand(oVisasMarr, ActionJumpToLocation(GetLocation(GetWaypointByTag("wp_council_visas"))));
			break;
		case 1:
			AssignCommand(oVisasMarr, ActionMoveToObject(GetWaypointByTag("WP_KREIA_JEDI_1"), 0, 3.0));
			break;
		case 2:
			AssignCommand(oKreia, ClearAllActions());
			AssignCommand(oKreia, ActionJumpToLocation(GetLocation(GetWaypointByTag("WP_KREIA_JEDI_1"))));
			AssignCommand(oKreia, ActionCastFakeSpellAtObject(9, oVisasMarr, 0));
			AssignCommand(oVisasMarr, SetIsDestroyable(0, 1, 1));
			DelayCommand(1.0, ApplyEffectToObject(1, EffectChoke(), oVisasMarr, 3.0));
			DelayCommand(1.0, ApplyEffectToObject(0, EffectVisualEffect(1004, 0), oVisasMarr, 0.0));
			DelayCommand(3.5, ApplyEffectToObject(0, EffectDeath(0, 1, 0), oVisasMarr, 0.0));
			break;
	}
}

