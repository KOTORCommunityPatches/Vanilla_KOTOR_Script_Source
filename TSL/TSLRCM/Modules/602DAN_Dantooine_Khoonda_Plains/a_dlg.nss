void main() {
	string sParam = GetScriptStringParameter();
	DelayCommand(0.1, AssignCommand(GetObjectByTag(sParam, 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}