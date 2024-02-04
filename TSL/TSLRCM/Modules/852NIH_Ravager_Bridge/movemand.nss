void main() {
	location location1 = Location(Vector((-73.99644), 37.21299, 11.81819), 0.0);
	AssignCommand(GetObjectByTag("Mand", 0), ActionMoveToLocation(location1, 0));
}