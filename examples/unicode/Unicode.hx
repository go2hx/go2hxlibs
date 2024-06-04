package;

function main() {
    for (c in "\x085Ὂg̀9! ℃ᾭG".split("")) {
        trace('For \'$c\':');
        final c = c.charCodeAt(0);
        if (stdgo.unicode.Unicode.isControl(c)) {
            trace("\tis control rune");
        }
        if (stdgo.unicode.Unicode.isDigit(c)) {
            trace("\tis digit rune");
        }
        if (stdgo.unicode.Unicode.isGraphic(c)) {
            trace("\tis graphic rune");
        }
        if (stdgo.unicode.Unicode.isLetter(c)) {
            trace("\tis letter rune");
        }
        if (stdgo.unicode.Unicode.isLower(c)) {
            trace("\tis lower case rune");
        }
        if (stdgo.unicode.Unicode.isMark(c)) {
            trace("\tis mark rune");
        }
        if (stdgo.unicode.Unicode.isNumber(c)) {
            trace("\tis number rune");
        }
        if (stdgo.unicode.Unicode.isPrint(c)) {
            trace("\tis printable rune");
        }
        if (stdgo.unicode.Unicode.isPunct(c)) {
            trace("\tis punct rune");
        }
        if (stdgo.unicode.Unicode.isSpace(c)) {
            trace("\tis space rune");
        }
        if (stdgo.unicode.Unicode.isSymbol(c)) {
            trace("\tis symbol rune");
        }
        if (stdgo.unicode.Unicode.isTitle(c)) {
            trace("\tis title rune");
        }
        if (stdgo.unicode.Unicode.isUpper(c)) {
            trace("\tis upper rune");
        }
    }
}

