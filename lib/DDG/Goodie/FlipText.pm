package DDG::Goodie::FlipText;

use DDG::Goodie;

triggers startend => "flip", "mirror", "spin", "rotate";

zci is_cached => 1;
zci answer_type => "flip_text";

my %charMap = (
	"a" => "\x{0250}",
    "\x{0250}" => "a",
	"b" => "q",
	"c" => "\x{0254}",
    "\x{0254}" => "c",
	"d" => "p",
	"e" => "\x{01DD}",
    "\x{01DD}" => "e",
	"f" => "\x{025F}",
    "\x{025F}" => "f",
	"g" => "\x{0183}",
    "\x{0183}" => "g",
	"h" => "\x{0265}",
    "\x{0265}" => "h",
	"i" => "\x{0131}",
    "\x{0131}" => "i",
	"j" => "\x{027E}",
    "\x{027E}" => "j",
	"k" => "\x{029E}",
    "\x{029E}" => "k",
	"l" => "l",
	"m" => "\x{026F}",
    "\x{026F}" => "m",
	"n" => "u",
	"o" => "o",
	"p" => "d",
	"q" => "b",
	"r" => "\x{0279}",
    "\x{0279}" => "r",
	"s" => "s",
	"t" => "\x{0287}",
    "\x{0287}" => "t",
	"u" => "n",
	"v" => "\x{028C}",
    "\x{028C}" => "v",
	"w" => "\x{028D}",
    "\x{028D}" => "w",
	"x" => "x",
	"y" => "\x{028E}",
    "\x{028E}" => "y",
	"z" => "z",
	"A" => "\x{2200}",
    "\x{2200}" => "A",
	"B" => "B",
	"C" => "\x{0186}",
    "\x{0186}" => "C",
	"D" => "D",
	"E" => "\x{018E}",
    "\x{018E}" => "E",
	"F" => "\x{2132}",
    "\x{2132}" => "F",
	"G" => "\x{05E4}",
    "\x{05E4}" => "G",
	"H" => "H",
	"I" => "I",
	"J" => "\x{017F}",
    "\x{017F}" => "J",
	"K" => "K",
	"L" => "\x{02E5}",
    "\x{02E5}" => "L",
	"M" => "W",
	"N" => "N",
	"O" => "O",
	"P" => "\x{0500}",
    "\x{0500}" => "P",
	"Q" => "Q",
	"R" => "R",
	"S" => "S",
	"T" => "\x{2534}",
    "\x{2534}" => "T",
	"U" => "\x{2229}",
    "\x{2229}" => "U",
	"V" => "\x{039B}",
    "\x{039B}" => "V",
	"W" => "M",
	"X" => "X",
	"Y" => "\x{2144}",
    "\x{2144}" => "Y",
	"Z" => "Z",
	"0" => "0",
	"1" => "\x{0196}",
    "\x{0196}" => "1",
#	"2" => "\x{1105}", Doesn't display in tests
	"3" => "\x{0190}",
    "\x{0190}" => "3",
#	"4" => "\x{3123}", Doesn't display in tests
#	"5" => "\x{03DB}", Doesn't really look like a 5
	"6" => "9",
#	"7" => "\x{3125}", Doesn't display in tests
	"8" => "8",
	"9" => "6",
	"," => "'",
	"." => "\x{02D9}",
    "\x{02D9}" => ".",
	"?" => "\x{00BF}",
    "\x{00BF}" => "?",
	"!" => "\x{00A1}",
    "\x{00A1}" => "!",
	'"' => ",,",
	"'" => ",",
	"`" => ",",
	"(" => ")",
	")" => "(",
	"[" => "]",
	"]" => "[",
	"{" => "}",
	"}" => "{",
	">" => "<",
	"<" => ">",
	"_" => "\x{203E}",
    "\x{203E}" => "_",
    );

handle remainder => sub {

	my @string = split(//, reverse $_);
	my $flippedString; 

	for (@string) {

		# Not all uppercase letters can be flipped
		$_ = lc;

		if ( exists $charMap{$_}) {
			$flippedString .= $charMap{$_};
            return $_;
		}
		else {
			$flippedString .= $_;
		}
	}

	

	return $flippedString;
};

1;
