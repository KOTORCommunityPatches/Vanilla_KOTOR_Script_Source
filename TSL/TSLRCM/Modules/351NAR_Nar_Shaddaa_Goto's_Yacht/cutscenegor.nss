void main() {
	CreateObject(1, "n_hologram1", Location(Vector(12.67207, 106.85698, 11.05343), 0.0), 0);
	DelayCommand(0.2, AssignCommand(GetObjectByTag("n_hologram1", 0), ActionStartConversation(GetFirstPC(), "gotoucieka", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}