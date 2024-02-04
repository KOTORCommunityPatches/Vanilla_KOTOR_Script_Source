void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 0:
			DelayCommand(3.0, SignalEvent(OBJECT_SELF, EventUserDefined(1)));
			break;
		case 1:
			PlayRoomAnimation("104perh", 1);
			PlayRoomAnimation("104pern", 1);
			DelayCommand(16.0, SignalEvent(OBJECT_SELF, EventUserDefined(10)));
			{
				object oFlameDamageArea2 = GetObjectByTag("FlameDamageArea2", 0);
				object oFlameDamageArea3 = GetObjectByTag("FlameDamageArea3", 0);
				DelayCommand(1.0, SignalEvent(oFlameDamageArea2, EventUserDefined(0)));
				DelayCommand(1.0, SignalEvent(oFlameDamageArea3, EventUserDefined(0)));
			}
			break;
		case 2:
			PlayRoomAnimation("104perh", 3);
			PlayRoomAnimation("104pern", 3);
			DelayCommand(32.0, SignalEvent(OBJECT_SELF, EventUserDefined(1)));
			{
				object object5 = GetObjectByTag("FlameDamageArea2", 0);
				object object7 = GetObjectByTag("FlameDamageArea3", 0);
				DelayCommand(1.0, SignalEvent(object5, EventUserDefined(1)));
				DelayCommand(1.0, SignalEvent(object7, EventUserDefined(1)));
			}
			break;
		case 5:
			PlayRoomAnimation("104peri", 3);
			PlayRoomAnimation("104perj", 1);
			PlayRoomAnimation("104perl", 3);
			PlayRoomAnimation("104perm", 1);
			PlayRoomAnimation("104pero", 3);
			PlayRoomAnimation("104perp", 1);
			DelayCommand(16.0, SignalEvent(OBJECT_SELF, EventUserDefined(6)));
			break;
		case 6:
			PlayRoomAnimation("104peri", 3);
			PlayRoomAnimation("104perj", 2);
			PlayRoomAnimation("104perl", 3);
			PlayRoomAnimation("104perm", 2);
			PlayRoomAnimation("104pero", 3);
			PlayRoomAnimation("104perp", 2);
			DelayCommand(16.0, SignalEvent(OBJECT_SELF, EventUserDefined(7)));
			break;
		case 7:
			PlayRoomAnimation("104peri", 1);
			PlayRoomAnimation("104perj", 3);
			PlayRoomAnimation("104perl", 1);
			PlayRoomAnimation("104perm", 3);
			PlayRoomAnimation("104pero", 1);
			PlayRoomAnimation("104perp", 3);
			DelayCommand(16.0, SignalEvent(OBJECT_SELF, EventUserDefined(8)));
			break;
		case 8:
			PlayRoomAnimation("104peri", 2);
			PlayRoomAnimation("104perj", 3);
			PlayRoomAnimation("104perl", 2);
			PlayRoomAnimation("104perm", 3);
			PlayRoomAnimation("104pero", 2);
			PlayRoomAnimation("104perp", 3);
			DelayCommand(16.0, SignalEvent(OBJECT_SELF, EventUserDefined(9)));
			break;
		case 9:
			PlayRoomAnimation("104peri", 1);
			PlayRoomAnimation("104perj", 3);
			PlayRoomAnimation("104perl", 1);
			PlayRoomAnimation("104perm", 3);
			PlayRoomAnimation("104pero", 1);
			PlayRoomAnimation("104perp", 3);
			DelayCommand(16.0, SignalEvent(OBJECT_SELF, EventUserDefined(5)));
			break;
		case 10:
			PlayRoomAnimation("104perh", 2);
			PlayRoomAnimation("104pern", 2);
			DelayCommand(16.0, SignalEvent(OBJECT_SELF, EventUserDefined(11)));
			break;
		case 11:
			PlayRoomAnimation("104perh", 1);
			PlayRoomAnimation("104pern", 1);
			DelayCommand(16.0, SignalEvent(OBJECT_SELF, EventUserDefined(2)));
			break;
	}
}