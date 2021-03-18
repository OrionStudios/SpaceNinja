draw_set_font(fnt_main);
draw_set_color(c_black);



draw_self();
draw_text_ext(x, y + 20, string(string_copy(sentence, 1, charIndex)), 20, 1000);

