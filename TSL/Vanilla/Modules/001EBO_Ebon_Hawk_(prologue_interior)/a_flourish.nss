void main() {
	string sParam = GetScriptStringParameter();
	if ((sParam == "")) {
		sParam = GetTag(OBJECT_SELF);
	}
	CreatureFlourishWeapon(GetObjectByTag(sParam, 0));
}

