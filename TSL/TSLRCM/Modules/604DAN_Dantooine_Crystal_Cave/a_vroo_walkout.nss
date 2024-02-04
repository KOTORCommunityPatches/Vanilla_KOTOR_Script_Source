void main() {
	ActionEquipMostDamagingMelee(OBJECT_INVALID, 0);
	DelayCommand(0.90000004, AssignCommand(GetObjectByTag("npc_vrook", 0), ActionMoveToObject(GetObjectByTag("wp_free_vrook1", 0), 0, 1.0)));
}