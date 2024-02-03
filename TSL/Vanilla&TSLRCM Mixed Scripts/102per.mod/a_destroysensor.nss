void main() {
	object oSensorBall = GetObjectByTag("SensorBall", 0);
	if (GetIsObjectValid(oSensorBall)) {
		DestroyObject(oSensorBall, 0.0, 0, 0.0, 0);
	}
}

