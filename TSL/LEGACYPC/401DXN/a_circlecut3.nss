void main() {
	object oWP_CIRCLECS_1 = GetObjectByTag("WP_CIRCLECS_1", 0);
	object oMaalraas_Scene = GetObjectByTag("Maalraas_Scene", 0);
	if ((!GetIsObjectValid(oMaalraas_Scene))) {
		return;
	}
	AssignCommand(oMaalraas_Scene, ClearAllActions());
	AssignCommand(oMaalraas_Scene, ActionMoveToObject(oWP_CIRCLECS_1, 1, 1.0));
}

