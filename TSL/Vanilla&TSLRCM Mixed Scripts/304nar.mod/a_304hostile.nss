// Prototypes
void sub1(string stringParam1);

void sub1(string stringParam1) {
	int int1 = 0;
	object object1 = GetObjectByTag(stringParam1, int1);
	while (GetIsObjectValid(object1)) {
		ChangeToStandardFaction(object1, 1);
		object1 = GetObjectByTag(stringParam1, (int1++));
	}
}

void main() {
	sub1("devthug");
	sub1("barpatronrod");
	sub1("twilekdomo");
	sub1("barpatronthug");
	sub1("aquathug");
	sub1("weeqthug");
	sub1("tranthug");
	sub1("gandthug");
	sub1("g_gandwar");
	DestroyObject(GetObjectByTag("Sullustan", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("RedCaptain", 0), 0.0, 0, 0.0, 0);
}

