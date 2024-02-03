struct structtype1 {
	float float1;
	float float3;
};

// Globals
	int intGLOB_1 = 25;

void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	if ((GetEnteringObject() == GetFirstPC())) {
		object oAtton = GetObjectByTag("Atton", 0);
		if ((!GetIsObjectValid(oAtton))) {
			return;
		}
		else {
			object oConsole = GetObjectByTag("console", 0);
			vector struct2 = GetPositionFromLocation(GetLocation(oConsole));
			;
		}
	}
}

