/// tb_DrawDialogue();
/*
    Description:
        Draws the dialogue on the screen at position x,y.
    Arguments: Nothing
    Returns: Nothing
*/
if( !visible ) return 0;
// First part - Draw the dialogue box
if( !surface_exists( surface ) ) surface = skin_generate_surface( skin, width, height );
if( surface_exists( surface ) ) draw_surface( surface, x, y );
// Second part - Draw the text with animation
if( currentMessage == noone )
{
    if( !ds_queue_empty( messages ) )
    {
        currentMessage = ds_queue_dequeue( messages );
        animPos = 0;
        isAnimating = true;
    }
    else
    {
        visible = false;
        // TODO: Add closing animation
    }
}
else
{
    var shouldUpdate;
    shouldUpdate = ( !surface_exists( textSurface ) || isAnimating || animPos != lastAnimPos );
    lastAnimPos = animPos;
    if( !surface_exists( textSurface ) ) textSurface = surface_create( width,height );
    if( shouldUpdate )
    {
        surface_set_target( textSurface );
            // Erase surface
            draw_clear_alpha( c_black, 0 );
            // Draw Message
            var i,m;
            for( i=0; i<ds_list_size( currentMessage ); i++ )
            {
                m = currentMessage[| i];
                draw_set_font( tk_getFont( m ) );
                draw_set_color( tk_getColor( m ) );
                draw_text( textX+tk_getXOffset( m ), textY+tk_getYOffset( m ), tk_getText( m ) );
            }
            // Erase part of text upon animation
            draw_set_blend_mode( bm_subtract );
            draw_set_color( c_black );
            draw_rectangle( animPos, 0, width, height, false );
            draw_sprite( spr_mask, 0, animPos-sprite_get_width( spr_mask ), 0 );
            draw_set_blend_mode( bm_normal );
        surface_reset_target();
    }
    draw_surface( textSurface, x, y );
}