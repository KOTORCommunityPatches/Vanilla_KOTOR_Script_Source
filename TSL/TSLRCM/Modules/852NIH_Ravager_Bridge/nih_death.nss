void main() {
	location location1 = Location(Vector((-149.67337), 38.39992, 12.337), 0.0);
	object object1 = SpawnAvailableNPC(2, location1);
	AssignCommand(object1, ActionStartConversation(GetFirstPC(), "852end", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}