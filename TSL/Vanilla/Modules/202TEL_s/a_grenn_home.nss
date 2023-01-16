void main() {
	object o202_gren = GetObjectByTag("202_gren", 0);
	AssignCommand(o202_gren, ClearAllActions());
	AssignCommand(o202_gren, ActionMoveToLocation(GetLocation(GetObjectByTag("WP_gren", 0)), 0));
}

