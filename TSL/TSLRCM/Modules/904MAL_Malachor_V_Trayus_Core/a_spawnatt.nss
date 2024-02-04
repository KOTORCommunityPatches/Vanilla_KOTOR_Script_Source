void main() {
	if (((GetGlobalNumber("903_Atton_Sion") != 2) && IsAvailableCreature(0))) {
		object object1 = SpawnAvailableNPC(0, Location(Vector((-2.59703), (-37.46189), 0.4746), 85.155));
		AssignCommand(object1, ActionPlayAnimation(31, 1.0, (-1.0)));
	}
}