void main() {
	int nParam1 = GetScriptParameter(1);
	if (nParam1) {
		MusicBackgroundPlay(GetArea(OBJECT_SELF));
	}
	else {
		MusicBackgroundStop(GetArea(OBJECT_SELF));
	}
}
