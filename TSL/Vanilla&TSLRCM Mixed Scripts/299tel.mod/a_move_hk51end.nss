void main() {
	object oHK51cs = GetObjectByTag("HK51cs", 0);
	AssignCommand(oHK51cs, ActionForceMoveToObject(GetObjectByTag("WP_HK51_CS", 0), 0, 1.0, 30.0));
}

