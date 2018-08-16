/// skin_generate_surface( sprite, width, height )
/*
    Description:    
        Draw the sprite, resized at dimensions width,height
        on a surface and return this surface.
    Arguments:
        - sprite :          The sprite to resize
        - width,height :    The dimension to resize the skin.
    Returns:
        The surface created.
    NOTE:
        The sprite must follow the following rules:
            - Sub-image 0 to 3 are the corners:
                0. Top Left
                1. Top Right
                2. Bottom Right
                3. Bottom Left
            - Sub-image 4 to 7 are the borders:
                4. Top
                5. Right
                6. Bottom
                7. Left
            - Sub-image 8 is the center
        For more information, checkout the spr_tbskin_default
        to see how to make a valid textbox skin.
*/
//  --  Get arguments
    var S,W,H;
    S = argument[0];
    W = argument[1];
    H = argument[2];
//  --  Validate width and height
    var cW,cH;
    cW = sprite_get_width( S );
    cH = sprite_get_height( S );
    if( W <= cW*2 )
    {
        W = cW*2 + 1;
        show_debug_message( "WARNING: Width smaller than corners! Resizing..." );
    }
    if( H <= cH*2 )
    {
        H = cH*2 + 1;
        show_debug_message( "WARNING: Height smaller than corners! Resizing..." );
    }
//  --  Create the surface and prepare to draw on it
    var SS = surface_create( W,H );
    surface_set_target( SS );
//  --  Draw the corners
    draw_sprite( S,0,0,0 );
    draw_sprite( S,1,W-cW,0 );
    draw_sprite( S,2,W-cW,H-cH );
    draw_sprite( S,3,0,H-cH );
//  --  Draw the borders
    draw_sprite_stretched( S,4,cW,0,( W-(cW*2) ),cH );
    draw_sprite_stretched( S,5,W-cW,cH,cW,( H-(cH*2) ) );
    draw_sprite_stretched( S,6,cW,H-cH,( W-(cW*2) ),cH );
    draw_sprite_stretched( S,7,0,cH,cW,( H-(cH*2) ) );
//  --  Draw center
    draw_sprite_stretched( S,8,cW,cH,W-(cW*2),H-(cH*2) );
//  --  End drawing and return surface
    surface_reset_target();
return SS;