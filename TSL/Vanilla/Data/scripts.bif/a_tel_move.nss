/*
Global Party Teleport Script for Telos.  Script Paramter (1)
is the destination.
1 = 201TEL
2 = 202TEL
3 = 203TEL
4 = 204TEL

Created by Anthony Davis-OEI
*/
void main()
{
    int tDest = GetScriptParameter( 1 );

    switch(tDest)
    {
        case 1:
        {
            StartNewModule("201TEL","WP_from_term");
        }break;
        case 2:
        {
            StartNewModule("202TEL","WP_from_term");
        }break;
        case 3:
        {
            StartNewModule("203TEL","WP_from_term");
        }break;
        case 4:
        {
            StartNewModule("204TEL","WP_from_term");
        }break;
        default:
        {
        }break;
    }
}
