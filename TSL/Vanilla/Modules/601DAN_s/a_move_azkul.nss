void main() {
	AssignCommand(GetObjectByTag("npc_azkul", 0), ClearAllActions());
	DelayCommand(0.1, AssignCommand(GetObjectByTag("npc_azkul", 0), ActionMoveToObject(GetObjectByTag("ws_azkhul", 0), 0, 1.0)));
}

