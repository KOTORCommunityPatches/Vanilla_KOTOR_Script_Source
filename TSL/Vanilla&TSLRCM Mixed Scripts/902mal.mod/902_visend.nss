void main() {
	DestroyObject(GetObjectByTag("VisasMarr", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("Mand", 0), 0.0, 0, 0.0, 0);
	AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("wp_atton_return", 0), 1));
}

