void main() {
	object oBaodur = GetObjectByTag("Baodur", 0);
	AssignCommand(oBaodur, ActionPlayAnimation(45, 1.0, 1.5));
	AssignCommand(oBaodur, ActionPlayAnimation(26, 1.0, (-1.0)));
}
