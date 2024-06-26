package genome_size;
use strict;
use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);
$VERSION     = 1.00;

my %gs = (
 'mm10' => {
		"1"		=>	195471971,
		"2" 	=>	182113224,
		"X" 	=>	171031299,
		"3" 	=>	160039680,
		"4" 	=>	156508116,
		"5" 	=>	151834684,
		"6" 	=>	149736546,
		"7" 	=>	145441459,
		"10"		=>	130694993,
		"8" 	=>	129401213,
		"14"		=>	124902244,
		"9" 	=>	124595110,
		"11"		=>	122082543,
		"13"		=>	120421639,
		"12"		=>	120129022,
		"15"		=>	104043685,
		"16"		=>	98207768,
		"17"		=>	94987271,
		"Y" 	=>	91744698,
		"18"		=>	90702639,
		"19"		=>	61431566,
	},
	'dm3' => {
		"Uextra"	=> 29004656,
		"3R"			=> 27905053,
		"3L"			=> 24543557,
		"2L"			=> 23011544,
		"X"				=> 22422827,
		"2R"			=> 21146708,
		"U"				=> 10049037,
		"2RHet"		=>	3288761,
		"3LHet"		=>	2555491,
		"3RHet"		=>	2517507,
		"4"				=>	1351857,
		"2LHet"		=>	 368872,
		"YHet"		=>	 347038,
		"XHet"		=>	 204112,
	},
	'dm6' => {
		"2L" => 23513712,
		"2R" => 25286936,
		"3L" => 28110227,
		"3R" => 32079331,
		"4" => 1348131,
		"Y" => 3667352,
	},
	'hg38' => {
		"1" =>	248956422,
		"2" =>	242193529,
		"3" =>	198295559,
		"4" =>	190214555,
		"5" =>	181538259,
		"6" =>	170805979,
		"7" =>	159345973,
		"8" =>	145138636,
		"9" =>	138394717,
		"10" =>	133797422,
		"11" =>	135086622,
		"12" =>	133275309,
		"13" =>	114364328,
		"14" =>	107043718,
		"15" =>	101991189,
		"16" =>	90338345,
		"17" =>	83257441,
		"18" =>	80373285,
		"19" =>	58617616,
		"20" =>	64444167,
		"21" =>	46709983,
		"22" =>	50818468,
		"X"	=> 156040895,
		"Y"	=> 57227415,
	},
	'sacCer3' => {
		"IV" => 1531933,
		"XV" => 1091291,
		"VII" => 1090940,
		"XII" => 1078177,
		"XVI" => 948066,
		"XIII" => 924431,
		"II" => 813184,
		"XIV" => 784333,
		"X" => 745751,
		"XI" => 666816,
		"V" => 576874,
		"VIII" => 562643,
		"IX" => 439888,
		"III" => 316620,
		"VI" => 270161,
		"I" => 230218,
		"M" => 85779,
	},
	'D4Z4' => {
		"D4Z4" => 9897,
	},
	'GRCz11' => {
		"1" =>  59578282,
		"2" =>  59640629,
		"3" =>  62628489,
		"4" =>  78093715,
		"5" =>  72500376,
		"6" =>  60270059,
		"7" =>  74282399,
		"8" =>  54304671,
		"9" =>  56459846,
		"10" =>  45420867,
		"11" =>  45484837,
		"12" =>  49182954,
		"13" =>  52186027,
		"14" =>  52660232,
		"15" =>  48040578,
		"16" =>  55266484,
		"17" =>  53461100,
		"18" =>  51023478,
		"19" =>  48449771,
		"20" =>  55201332,
		"21" =>  45934066,
		"22" =>  39133080,
		"23" =>  46223584,
		"24" =>  42172926,
		"25" =>  37502051,
	},
	'JN555585.1' => {
		"NC_001806.2" => 152222,
	},
	'EBV_B95-8' => {
		"NC_007605.1" => 171823,
	}
);


sub getSize{
	my $genome = $_[0];
	my %jnk = %{$gs{$genome}};
	return(\%jnk);
}

1;
