void main() {
	if ((GetGlobalNumber("101PER_Sion_Arrives") == 1)) {
		object oSithspawn = GetObjectByTag("sithspawn", 0);
		effect efVisual = EffectVisualEffect(8001, 0);
		object oSithassassin = GetObjectByTag("sithassassin", 0);
		object object5 = GetObjectByTag("sithassassin", 1);
		object oWP_sithass1_move = GetObjectByTag("WP_sithass1_move", 0);
		object oWP_sithass2_move = GetObjectByTag("WP_sithass2_move", 0);
		AssignCommand(oSithassassin, ActionMoveToObject(oWP_sithass1_move, 0, 1.0));
		AssignCommand(object5, ActionMoveToObject(oWP_sithass2_move, 0, 1.0));
		object oBeltItem = GetItemInSlot(10, oSithassassin);
		object object13 = GetItemInSlot(10, object5);
		DelayCommand(0.5, ApplyEffectToObject(1, efVisual, oSithassassin, 2.0));
		DelayCommand(0.5, ApplyEffectToObject(1, efVisual, object5, 2.0));
		DelayCommand(1.0, AssignCommand(oSithassassin, ActionUseSkill(2, oSithassassin, 0, oBeltItem)));
		DelayCommand(1.0, AssignCommand(object5, ActionUseSkill(2, object5, 0, object13)));
		DelayCommand(4.0, DestroyObject(oSithassassin, 0.0, 1, 0.0, 0));
		DelayCommand(4.0, DestroyObject(object5, 0.0, 1, 0.0, 0));
	}
}
