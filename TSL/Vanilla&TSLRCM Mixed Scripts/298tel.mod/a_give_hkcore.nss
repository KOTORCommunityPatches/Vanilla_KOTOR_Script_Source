void main() {
	CreateItemOnObject("datapadhkcore", GetFirstPC(), 1, 0);
	DelayCommand(0.5, DisplayDatapad(GetObjectByTag("datapadhkcore", 0)));
}

