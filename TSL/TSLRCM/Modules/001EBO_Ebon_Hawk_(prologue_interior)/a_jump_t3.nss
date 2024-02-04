void main() {
	object oT3m4 = GetObjectByTag("T3m4", 0);
	AssignCommand(oT3m4, ActionForceMoveToObject(GetObjectByTag("wp_t3m4", 0), 0, 1.0, 30.0));
}