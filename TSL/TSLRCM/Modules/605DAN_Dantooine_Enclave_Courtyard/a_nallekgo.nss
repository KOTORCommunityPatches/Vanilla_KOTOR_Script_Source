void main() {
	ClearAllEffects();
	ClearAllActions();
	DelayCommand(0.3, AssignCommand(GetObjectByTag("npc_nallek", 0), ActionMoveToObject(GetObjectByTag("FROM_601DAN", 0), 1, 1.0)));
	DelayCommand(3.0, ClearAllActions());
	DelayCommand(3.1, DestroyObject(GetObjectByTag("npc_nallek", 0), 0.0, 1, 0.0, 0));
}