// a_glob_fastfade: A fast blackout to fade in. Useful for console->holorecord.
// BMA-OEI 8/25/2004

void main()
{
    AurPostString("a_glob_fastfade: do a fast fade out-in", 6, 6, 6.0);
    SetGlobalFadeOut(0.0, 0.0);
    SetGlobalFadeIn(0.5, 0.3);
}
