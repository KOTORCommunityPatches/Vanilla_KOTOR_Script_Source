void main() {
	object oHK50cs3 = GetObjectByTag("HK50cs3", 0);
	AssignCommand(oHK50cs3, ActionForceMoveToObject(GetObjectByTag("WP_HK50_END", 0), 0, 1.0, 30.0));
}

