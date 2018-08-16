/// tb_parseString( text, lineHeight );
/*
    Parses the string to create the tokens.
    Arguments:
        - text:         The text to parse
        - lineHeight:   Optional. The height of a newline
    Returns: A tokenized text ( as an array )
    NOTE:
        No automatic wrap is done.
        It's up to you to make sure stuff wraps correctly.
*/
//  --  Get arguments
    var T,LINE;
    T = argument[0];
    if( argument_count < 2 ) LINE = 36; else LINE = argument[1];
//  --  Parse
    var C,P,W,L,DX,DY,CL,DF,TK,TOKs;
    C = "";
    P = 1;
    W = "";
    L = string_length( T );
    DX = 0;
    DY = 0;
    CL = colors[? "default"];
    DF = fonts[? "default"];
    TK = 0;
    TOKs = ds_list_create();
    for( P=1; P<=L; P++ )
    {
        TK=0;
        C = string_char_at( T,P );
        if( C == "#" )
        {
            if( W != "" )
            {
                TK = tb_createToken( W, DF, CL, DX,DY );
                ds_list_add( TOKs, TK );
                W = "";
            }
            DX = 0;
            DY += LINE;
        }
        else if( C == "[" )
        {
            var hadStuff = false;
            if( W != "" )
            {
                TK = tb_createToken( W, DF, CL, DX,DY );
                ds_list_add( TOKs, TK );
                draw_set_font( DF );
                DX += string_width( W );
                W = "";
                hadStuff = true;
            }
            P++;
            var stopParsingTag = false;
            while( P<=L && !stopParsingTag )
            {
                C = string_char_at( T,P );
                if( C == "]" )
                {
                    var FP,LP;
                    if( string_length( W ) < 3 || string_pos( ":", W ) == 0 )
                    {
                        FP = "";
                        LP = "";
                        show_debug_message( "Tag without ':'" );
                    }
                    else
                    {
                        var sepPos = string_pos( ":",W );
                        FP = string_copy( W, 1, sepPos-1 );
                        LP = string_copy( W, sepPos+1, string_length( W )-sepPos );
                        show_debug_message( "Found [ "+FP+" : "+LP+" ] " );
                    }
                    switch( FP )
                    {
                        case "c": if( ds_map_exists( colors, LP ) ) CL = colors[? LP]; break;
                        case "f": if( ds_map_exists( fonts, LP ) ) DF = fonts[? LP]; break;
                        case "test": if( LP == "answer" ) show_debug_message( "Test worked." ); break;
                        default:
                            if( hadStuff )
                            {
                                var FONT,COLOR;
                                show_debug_message( "Value of 'W' is '"+W+"'" );
                                W = tk_getText( T ) + "["+W+"]";
                                FONT = tk_getFont( T );
                                COLOR = tk_getColor( T );
                                DX = tk_getXOffset( T );
                                DY = tk_getYOffset( T );
                                ds_list_replace( TOKs, ds_list_size( TOKs )-1, tb_createToken( W,FONT,COLOR,DX,DY ) );
                                draw_set_font( FONT );
                            }
                            else
                            {
                                W = "["+W+"]";
                                TK = tb_createToken( W,DF,CL,DX,DY );
                                ds_list_add( TOKs, TK );
                                draw_set_font( DF );
                            }
                            DX += string_width( W );
                        break;
                    }
                    W = "";
                    stopParsingTag = true;
                }
                else
                {
                    W += C;
                    P++;
                }
            }
        }
        else
        {
            W += C;
        }
    }
    if( W != "" )
    {
        TK = tb_createToken( W, DF, CL, DX,DY );
        ds_list_add( TOKs, TK );
        W = "";
    }
//  --  Return token list
    return TOKs;
