void main() {
	string sParam = GetScriptStringParameter();
	AssignCommand(GetPartyLeader(), ActionJumpToObject(GetObjectByTag(sParam, 0), 1));
}
