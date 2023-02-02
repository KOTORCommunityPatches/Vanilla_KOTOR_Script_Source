void main() {
	object oExchangeDoor = GetObjectByTag("ExchangeDoor", 0);
	SetLocked(oExchangeDoor, 0);
	DelayCommand(1.0, AssignCommand(oExchangeDoor, ActionOpenDoor(oExchangeDoor)));
}
