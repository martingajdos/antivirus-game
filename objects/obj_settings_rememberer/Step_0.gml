if (_FULLSCREEN == 1)
    window_set_fullscreen(true);
else if (_FULLSCREEN == -1)
    window_set_fullscreen(false);
    
if (_MOUSE == 1) {
    window_set_cursor(cr_none);
    window_center();
} else if (_MOUSE == -1) {
    window_set_cursor(cr_default);
}

