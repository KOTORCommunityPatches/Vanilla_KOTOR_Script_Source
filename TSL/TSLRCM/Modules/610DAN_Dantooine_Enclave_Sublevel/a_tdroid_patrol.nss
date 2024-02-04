void main() {
	if ((OBJECT_SELF == GetObjectByTag("tdroid", 0))) {
		SetLocalBoolean(GetObjectByTag("comp_port", 0), 41, 1);
	}
	if ((OBJECT_SELF == GetObjectByTag("tdroid2", 0))) {
		SetLocalBoolean(GetObjectByTag("comp_port", 0), 42, 1);
	}
	if ((OBJECT_SELF == GetObjectByTag("tdroid3", 0))) {
		SetLocalBoolean(GetObjectByTag("comp_port", 0), 43, 1);
	}
}