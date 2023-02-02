void main() {
	if ((GetEnteringObject() == GetFirstPC())) {
		SetPlayerRestrictMode(1);
		effect effect1 = EffectDisguise(279);
		ApplyEffectToObject(2, effect1, GetFirstPC(), 0.0);
		SetGlobalBoolean("G_PER_IN_SPACE_SUIT", 1);
		if ((GetGlobalNumber("101PER_Sion_Arrives") > 0)) {
			PlayRoomAnimation("104perg", 3);
		}
		else {
			PlayRoomAnimation("104perg", 1);
		}
	}
}
