void Spawn(object oObject) {
}

void main() {
	
	ActionPauseConversation();
	
	DelayCommand(1.0, Spawn(CreateObject(OBJECT_TYPE_CREATURE, "unk41_holo", GetLocation(GetObjectByTag("spawn1", 0)), TRUE)));
	
	ActionWait(3.0);
	ActionResumeConversation();
}