/// tb_UpdateDialogue();
/*
    Description:
        Updates the animation of the text and
        updates keyboard and mouse inputs.
    Arguments: Nothing
    Returns: Nothing
*/
// Check the inputs
var advance = false;
var showHide = false;
if( useMouse )
{
    if( mouse_check_button_pressed( mAdvance ) ) advance = true;
    if( mouse_check_button_pressed( mShowHide ) ) showHide = true;
}
if( useKeyboard )
{
    if( keyboard_check_pressed( kAdvance ) ) advance = true;
    if( keyboard_check_pressed( kShowHide ) ) showHide = true;
}
// Change visibility ( TODO: add animation support )
if( showHide && visible ) visible = false;
else if( showHide ) visible = true;
// Advance text
if( advance && visible )
{
    if( animPos < width && !isAnimating ) isAnimating = true;
    else if( animPos < width )
    {
        animSpeed = defAnimSpeed*3;
    }
    else
    {
        animPos = 0;
        isAnimating = false;
        ds_list_clear( currentMessage );
        currentMessage = noone;
    }
}
// Update animation
if( visible )
{
    if( animPos < width ) animPos += animSpeed;
    else
    {
        isAnimating = false;
        animSpeed = defAnimSpeed;
    }
}
