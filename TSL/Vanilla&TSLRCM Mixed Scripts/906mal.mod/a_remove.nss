void main() {
	string sParam = GetScriptStringParameter();
	object object1 = GetObjectByTag(sParam, 0);
	DestroyObject(object1, 0.0, 0, 0.0, 0);
	DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0);
	SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
}

