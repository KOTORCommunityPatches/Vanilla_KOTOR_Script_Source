void main() {
	ActionPauseConversation();
	CreateObject(1, "g_blkvulkgang008", GetLocation(GetObjectByTag("sp_thug4", 0)), 0);
	CreateObject(64, "gas", GetLocation(GetObjectByTag("Kreia", 0)), 0);
	CreateObject(64, "gas", GetLocation(GetObjectByTag("Kreia", 0)), 0);
	CreateObject(64, "gas", GetLocation(GetObjectByTag("Kreia", 0)), 0);
	CreateObject(64, "gas", GetLocation(GetObjectByTag("Kreia", 0)), 0);
	CreateObject(64, "gas", GetLocation(GetObjectByTag("Kreia", 0)), 0);
	CreateObject(64, "gas", GetLocation(GetObjectByTag("Kreia", 0)), 0);
	CreateObject(64, "gas", GetLocation(GetObjectByTag("Kreia", 0)), 0);
	CreateObject(64, "gas", GetLocation(GetObjectByTag("Kreia", 0)), 0);
	SetGlobalFadeOut(1.5, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(4.0, ActionResumeConversation());
}

