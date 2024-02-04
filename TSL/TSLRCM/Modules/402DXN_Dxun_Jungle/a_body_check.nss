void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	switch (nParam1) {
		case 0:
			{
				object oKreia;
				if ((nParam2 == 1)) {
				oKreia = GetObjectByTag("Mira", 0);
				}
				else {
				oKreia = GetObjectByTag("Kreia", 0);
				}
				AssignCommand(oKreia, ActionJumpToObject(GetObjectByTag("WP_CHECKBODY1", 0), 1));
				AssignCommand(oKreia, ActionMoveToObject(GetObjectByTag("WP_CHECKBODY2", 0), 0, 1.0));
				AssignCommand(oKreia, ActionPlayAnimation(33, 1.0, 1.0));
			}
			break;
	}
}