void main() {
	SetGlobalNumber("402DXN_ScoutHunt", 4);
	AurPostString("Kelborn cloaking", 5, 10, 5.0);
	SetLocalBoolean(OBJECT_SELF, 20, 1);
	effect efVisual = EffectVisualEffect(8002, 0);
	effect effect3 = EffectVisualEffect(8000, 0);
	ApplyEffectToObject(1, efVisual, OBJECT_SELF, 2.0);
	DelayCommand(1.0, ActionMoveToObject(GetWaypointByTag("wp_scoutq_end"), 1, 1.0));
	DelayCommand(2.0, ApplyEffectToObject(2, effect3, OBJECT_SELF, 2.0));
}

