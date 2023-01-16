void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	if (nUser == 10)
		{
			ChangeToStandardFaction(GetObjectByTag("end_reinforce1", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("end_reinforce2", 0), 1);
		}
	ActionResumeConversation();
}
