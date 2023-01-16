void main() {
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(GetFirstPC(), ActionForceMoveToObject(GetObjectByTag("wp_t3m4", 0), 0, 1.0, 30.0));
}

