void main() {
	int nParam1 = GetScriptParameter(1);
	object oAtton = GetObjectByTag("Atton", 0);
	object oDisciple = GetObjectByTag("Disciple", 0);
	switch (nParam1) {
		case 1:
			AssignCommand(oAtton, ActionPlayAnimation(15, 1.0, (-1.0)));
			SetLockOrientationInDialog(oAtton, 0);
			break;
		case 20:
			AssignCommand(oDisciple, ActionPlayAnimation(3, 1.0, (-1.0)));
			break;
		case 21:
			AssignCommand(oDisciple, ActionWait(0.2));
			AssignCommand(oDisciple, ActionDoCommand(SetFacingPoint(GetPosition(oAtton))));
			AssignCommand(oDisciple, ActionPlayAnimation(2, 1.0, (-1.0)));
			break;
		case 22:
			AssignCommand(oAtton, ActionMoveToObject(GetObjectByTag("WP_disc_cut_4", 0), 0, 1.0));
			break;
	}
}
