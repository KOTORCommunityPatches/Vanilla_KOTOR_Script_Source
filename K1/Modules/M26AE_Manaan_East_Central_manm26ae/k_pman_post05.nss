void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	if (nUser == 10)
		{
			ActionMoveToObject(GetObjectByTag("cut_man26_cutsel02", 0), 0, 1.0);
			ActionDoCommand(SignalEvent(GetObjectByTag("man26ae_cut01", 0), EventUserDefined(0)));
		}
	else if (nUser == 20)
		{
			ActionMoveToObject(GetObjectByTag("cut_man26_cutsel03", 0), 0, 1.0);
			ActionWait(1.0);
			ActionDoCommand(SignalEvent(GetObjectByTag("man26ae_cut01", 0), EventUserDefined(0)));
		}
}
