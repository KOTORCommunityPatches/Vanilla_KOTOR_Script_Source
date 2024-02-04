void main() {
	object oHK511 = GetObjectByTag("HK511", 0);
	object oHK512 = GetObjectByTag("HK512", 0);
	object oHK513 = GetObjectByTag("HK513", 0);
	AssignCommand(oHK511, ActionForceMoveToObject(GetObjectByTag("WP_HK51_4", 0), 0, 1.0, 30.0));
	AssignCommand(oHK512, ActionForceMoveToObject(GetObjectByTag("WP_HK51_5", 0), 0, 1.0, 30.0));
	AssignCommand(oHK513, ActionForceMoveToObject(GetObjectByTag("WP_HK51_6", 0), 0, 1.0, 30.0));
}