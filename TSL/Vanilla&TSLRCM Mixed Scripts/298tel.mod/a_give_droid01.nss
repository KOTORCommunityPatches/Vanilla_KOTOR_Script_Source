void main() {
	CreateItemOnObject("datapaddroidplan", GetFirstPC(), 1, 0);
	DelayCommand(0.5, DisplayDatapad(GetObjectByTag("datapaddroidplan", 0)));
}

