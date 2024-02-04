void main() {
	AssignCommand(GetObjectByTag("hk50cut2", 0), ActionMoveToObject(GetObjectByTag("wp_hk_final_1", 0), 0, 1.0));
	AssignCommand(GetObjectByTag("hk501", 0), ActionMoveToObject(GetObjectByTag("wp_hk_final_0", 0), 0, 1.0));
	AssignCommand(GetObjectByTag("hk502", 0), ActionMoveToObject(GetObjectByTag("wp_hk_final_2", 0), 0, 1.0));
}