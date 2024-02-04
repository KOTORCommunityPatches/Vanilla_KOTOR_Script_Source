void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			SetGlobalBoolean("601DAN_PC_DOOR_DEFEND", 0);
			break;
		case 1:
			SetGlobalBoolean("601DAN_PC_DOOR_DEFEND", 1);
			break;
	}
}