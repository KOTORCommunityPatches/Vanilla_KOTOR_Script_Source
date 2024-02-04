void main() {
	if ((GetEnteringObject() != GetFirstPC())) {
		return;
	}
	CreateObject(1, "p_kreia", Location(Vector((-59.84895), (-23.00948), (-0.0)), 0.0), 0);
	object object4 = SpawnAvailableNPC(0, Location(Vector((-54.90763), (-32.26894), (-0.0)), 113.83197));
	AssignCommand(object4, ActionStartConversation(GetFirstPC(), "225attkreia", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}