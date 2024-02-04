void main() {
	string sParam = GetScriptStringParameter();
	object object1 = GetObjectByTag(sParam, 0);
	SetLightsaberPowered(object1, 1, 1, 1);
}