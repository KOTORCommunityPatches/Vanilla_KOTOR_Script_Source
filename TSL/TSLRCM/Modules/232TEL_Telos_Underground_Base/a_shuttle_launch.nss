// Prototypes
void sub1();

void sub1() {
	PlayMovie("TelMov07", 0);
}

void main() {
	SetGlobalFadeOut(0.0, 0.1, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	sub1();
}