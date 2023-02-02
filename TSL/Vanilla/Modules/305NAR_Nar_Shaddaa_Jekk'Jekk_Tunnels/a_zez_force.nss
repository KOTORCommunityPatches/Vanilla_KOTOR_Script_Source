void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		AssignCommand(GetObjectByTag("Zez", 0), ActionPlayAnimation(121, 1.0, 0.0));
	}
}
