void main() {
	object oBaoDur = GetObjectByTag("BaoDur", 0);
	object oHK47 = GetObjectByTag("HK47", 0);
	AssignCommand(oBaoDur, ActionMoveToObject(oHK47, 0, 1.0));
}