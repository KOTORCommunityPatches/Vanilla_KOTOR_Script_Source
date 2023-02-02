void main() {
	int nParam1 = GetScriptParameter(1);
	object oWp_kavar;
	switch (nParam1) {
		case 0:
			oWp_kavar = GetObjectByTag("wp_kavar", 0);
			ActionMoveToObject(oWp_kavar, 0, 1.0);
			SetFacing(90.0);
			ActionPlayAnimation(15, 1.0, 6.0);
			SetLocalBoolean(OBJECT_SELF, 40, 1);
			break;
	}
}
