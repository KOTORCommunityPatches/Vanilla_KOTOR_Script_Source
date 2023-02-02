void main() {
	string sParam = GetScriptStringParameter();
	ChangeToStandardFaction(GetObjectByTag(sParam, 0), 1);
}
