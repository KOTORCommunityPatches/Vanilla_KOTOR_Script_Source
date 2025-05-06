//This adjusts Hanharr's Strength and Intelligence.

void main()
{

    AdjustCreatureAttributes( GetObjectByTag ("Hanharr"), ABILITY_STRENGTH, 2);
    AdjustCreatureAttributes( GetObjectByTag ("Hanharr"), ABILITY_INTELLIGENCE, -2);
}
