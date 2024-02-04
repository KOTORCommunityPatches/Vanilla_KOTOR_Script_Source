void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			{
				object oSithAssassin = GetObjectByTag("SithAssassin", 0);
				object object3 = GetObjectByTag("SithAssassin", 1);
				DelayCommand(0.5, AssignCommand(oSithAssassin, ActionMoveToObject(GetObjectByTag("wp_sith_walk1", 0), 0, 1.0)));
				DelayCommand(0.5, AssignCommand(object3, ActionMoveToObject(GetObjectByTag("wp_sith_walk2", 0), 0, 1.0)));
				DelayCommand(0.5, AssignCommand(oSithAssassin, ActionMoveToObject(GetObjectByTag("wp_sith_move1", 0), 0, 1.0)));
				DelayCommand(0.5, AssignCommand(object3, ActionMoveToObject(GetObjectByTag("wp_sith_move2", 0), 0, 1.0)));
				effect efVisual = EffectVisualEffect(8001, 0);
				DelayCommand(2.4, AssignCommand(oSithAssassin, ClearAllEffects()));
				DelayCommand(2.4, AssignCommand(object3, ClearAllEffects()));
				DelayCommand(2.5, ApplyEffectToObject(1, efVisual, oSithAssassin, 5.0));
				DelayCommand(2.5, ApplyEffectToObject(1, efVisual, object3, 5.0));
				object oDoor_enter = GetObjectByTag("door_enter", 0);
				AssignCommand(oDoor_enter, ActionOpenDoor(oDoor_enter));
			}
			break;
		case 1:
			{
				object object11 = GetObjectByTag("SithAssassin", 0);
				object object13 = GetObjectByTag("SithAssassin", 1);
				DelayCommand(0.8, AssignCommand(object11, ActionMoveToObject(GetObjectByTag("wp_sith_move1a", 0), 1, 1.0)));
				DelayCommand(0.8, AssignCommand(object13, ActionMoveToObject(GetObjectByTag("wp_sith_move2a", 0), 1, 1.0)));
				DelayCommand(0.90000004, AssignCommand(object11, ActionDoCommand(ChangeToStandardFaction(object11, 1))));
				DelayCommand(0.90000004, AssignCommand(object13, ActionDoCommand(ChangeToStandardFaction(object13, 1))));
			}
			break;
		case 2:
			{
				object object17 = GetObjectByTag("door_enter", 0);
				AssignCommand(object17, ActionCloseDoor(object17));
			}
			break;
		case 3:
			{
				object object19 = GetObjectByTag("SithAssassin", 0);
				object object21 = GetObjectByTag("SithAssassin", 1);
				effect effect3 = EffectVisualEffect(8000, 0);
				ApplyEffectToObject(1, effect3, object19, 20.0);
				ApplyEffectToObject(1, effect3, object21, 20.0);
				object oDarthSion = GetObjectByTag("DarthSion", 0);
				AssignCommand(oDarthSion, ActionPlayAnimation(35, 1.0, (-1.0)));
				DelayCommand(6.0, SetDialogPlaceableCamera(8));
			}
			break;
		case 4:
			DelayCommand(3.0, DestroyObject(GetObjectByTag("DarthSion", 0), 0.0, 0, 0.0, 0));
			break;
	}
}