void main() {
	AssignCommand(GetObjectByTag("g0t0", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("g0t0", 0), ActionMoveToObject(GetObjectByTag("wp_goto_move", 0), 0, 1.0));
}