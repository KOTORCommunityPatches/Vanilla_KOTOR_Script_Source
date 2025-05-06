// a_playsndobj
// Param1 - The delay that will be applied before playing the sound.
// String Param - The Tag of the Sound Object in the world to play.
// This script will play the sound object indicated by
// the tag passed in.
void main() {
    int nDelay = GetScriptParameter( 1 );
    string sTag = GetScriptStringParameter();
    object oSoundObject = GetObjectByTag( sTag );
    if( GetIsObjectValid( oSoundObject ) ) {
        DelayCommand( IntToFloat( nDelay ), SoundObjectPlay( oSoundObject ) );
    }
}
