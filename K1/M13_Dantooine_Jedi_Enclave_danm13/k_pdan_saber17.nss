void main() {
	
	ActionPauseConversation();
	
	ActionDoCommand(ExecuteScript("k_pdan_player01", GetFirstPC(), -1));
	
	DelayCommand(2.0, SetDialogPlaceableCamera(30));
}
