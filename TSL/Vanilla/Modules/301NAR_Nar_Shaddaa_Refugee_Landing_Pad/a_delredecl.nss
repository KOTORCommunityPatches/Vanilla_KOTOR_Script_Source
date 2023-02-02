void main() {
	object oREThug1 = GetObjectByTag("REThug1", 0);
	object oREThug2 = GetObjectByTag("REThug2", 0);
	object oREThug3 = GetObjectByTag("REThug3", 0);
	object oRECapt = GetObjectByTag("RECapt", 0);
	object oQuello = GetObjectByTag("Quello", 0);
	DestroyObject(oREThug1, 0.0, 0, 0.0, 0);
	DestroyObject(oREThug2, 0.0, 0, 0.0, 0);
	DestroyObject(oREThug3, 0.0, 0, 0.0, 0);
	DestroyObject(oRECapt, 0.0, 0, 0.0, 0);
	DelayCommand(0.5, DestroyObject(oQuello, 0.0, 0, 0.0, 0));
}
