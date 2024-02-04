void main() {
	object oKreiaEvil = GetObjectByTag("KreiaEvil", 0);
	if (GetIsObjectValid(oKreiaEvil)) {
		AssignCommand(oKreiaEvil, SetFacing(90.0));
	}
}

