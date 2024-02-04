void main() {
	CreateObject(1, "c_sensorball", GetLocation(GetObjectByTag("WP_SENSORBALL", 0)), 0);
	DelayCommand(2.5, SetDialogPlaceableCamera(9));
	DelayCommand(2.5, DisableVideoEffect());
}