void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		AssignCommand(GetObjectByTag("civrobbed", 0), ActionMoveToObject(GetObjectByTag("wp_civilian_2", 0), 1, 1.0));
	}
}

