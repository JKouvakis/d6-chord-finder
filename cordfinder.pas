unit cordfinder;

interface

  uses StrUtils, Dialogs, Classes, SysUtils;

var
  revcho : string;
  chordfnd :string;

const
  a : array[1..12] of string = ('C','C#/Db','D','D#/Eb','E','F','F#/Gb','G','G#/Ab','A','A#/Bb','B');

function initchords(j: string):string;
function k(a:string;b:string;j:string):string;
function reverse(d1,d2,d3,d4,d5,d6:string):string;
function findcrd(s:string):string;

implementation

function initchords(j: string):string;
var b2: string;
begin
	k('C/E-0','000000032010',j);
  k('C/F-0','000000132010',j);
	k('C/G-0','000000332010',j);
	k('C/G-1','200003335553',j);
	k('D/F#-0','000000200232',j);
	k('D/F#-1','200003254232',j);
	k('D/C-0','100203030232',j);
	k('D/B-0','100000020232',j);
	k('D/Bb-0','100000010232',j);
	k('D/A-0','100000000232',j);
	k('D/A-1','100000007775',j);
	k('D/A-2','10002300cbaa',j);
	k('D/A-3','1000230ccbaa',j);
	k('E/B-0','100000022100',j);
	k('E/B-1','200003779997',j);
	k('E/C#-0','100000042100',j);
	k('E/D-0','110000000100',j);
	k('E/D#-0','110000001100',j);
	k('E/F-0','110000003100',j);
	k('E/F-1','000000122100',j);
	k('E/F#-0','000000222100',j);
	k('E/G-0','000000322100',j);
	k('E/G#-0','000000422100',j);
	k('E/G#-1','200003476454',j);
	k('Em/B-0','100000022000',j);
	k('Em/B-1','200003779987',j);
	k('Em/C#-0','100000042000',j);
	k('Em/D-0','110000000000',j);
	k('Em/D#-0','110000001000',j);
	k('Em/F-0','110000003000',j);
	k('Em/F-1','000000122000',j);
	k('Em/F#-0','110000004000',j);
	k('Em/F#-1','000000222000',j);
	k('Em/G-0','000000322000',j);
	k('Em/G#-0','000000422000',j);
	k('F/C-0','100023033211',j);
	k('F/C-1','20000388aaa8',j);
	k('F/D-0','110000000211',j);
	k('F/D#-0','110000001211',j);
	k('F/E-0','110000002211',j);
	k('F/G-0','000000303211',j);
	k('F/A-0','100000003211',j);
	k('F/A-1','200003587565',j);
	k('Fm/C-0','20000388aa98',j);
	k('G/D-0','110023000433',j);
	k('G/D-1','200003aaccca',j);
	k('G/D-2','100023055433',j);
	k('G/E-0','000000020003',j);
	k('G/F-0','000000120003',j);
	k('G/F#-0','000000220003',j);
	k('G/B-0','2000037a9787',j);
	k('Gm/D-0','110203000333',j);
	k('Gm/D-1','200003aaccba',j);
	k('A/G#-0','000000402220',j);
	k('A/G-0','000000302220',j);
	k('A/F#-0','000000202220',j);
	k('A/F-0','000000102220',j);
	k('A/E-0','000000002220',j);
	k('A/E-1','000023007655',j);
	k('A/E-2','000023077655',j);
	k('A/C#-0','100000042220',j);
	k('A/C#-1','2000039cb9a9',j);
	k('Am/G#-0','000000402210',j);
	k('Am/G-0','000000302210',j);
	k('Am/F#-0','000000202210',j);
	k('Am/F-0','000000102210',j);
	k('Am/E-0','000000002210',j);
	k('Am/E-1','000023007555',j);
	k('Am/E-2','000023077555',j);
	k('Am/C-0','100000032210',j);
	k('C-0','100000032010',j);
	k('C-1','120003035553',j);
	k('C-2','2000038aa988',j);
	k('C-3','100000032013',j);
	k('C-4','1002030fecdc',j);
	k('C-5','11000000acdc',j);
	k('C6-0','100000032210',j);
	k('C6-1','102003035555',j);
	k('C6-2','11200000acac',j);
	k('C6-3','00000000a9a8',j);
	k('C7-0','100000032310',j);
	k('C7-1','120003035353',j);
	k('C7-2','2000038a8988',j);
	k('C7-3','010001808980',j);
	k('C7sus4-0','100023033311',j);
	k('C7sus4-1','120003035363',j);
	k('C7sus4-2','2000038a8a88',j);
	k('C9-0','100000032330',j);
	k('C9-1','2000008a898a',j);
	k('C9-2','010023808788',j);
	k('Cadd9-0','100000030010',j);
	k('Cadd9-1','100000032030',j);
	k('Cadd9-2','100000032033',j);
	k('Cadd9-3','120003035753',j);
	k('Cadd9-4','11000000a98a',j);
	k('Cadd9-5','120003035533',j);
	k('Cadd9-6','100000030030',j);
	k('C11-0','100000030331',j);
	k('C11-1','120003033333',j);
	k('C11-2','010023808766',j);
	k('Cmaj7-0','100000032000',j);
	k('Cmaj7-1','120003035453',j);
	k('Cmaj7-2','11000000accc',j);
	k('Cmaj7-3','11000000a987',j);
	k('Cmaj7-4','100000032003',j);
	k('Cm-0','120003035543',j);
	k('Cm-1','2000038aa888',j);
	k('Cm-2','100000031013',j);
	k('Cm6-0','2000038aa8a8',j);
	k('Cm6-1','11200000acab',j);
	k('Cm6-2','100001031210',j);
	k('Cm7-0','120003035343',j);
	k('Cm7-1','2000038aa8b8',j);
	k('Cm7-2','2000038a8888',j);
	k('Cm7-3','2000038a88b8',j);
	k('Cm7-4','010001808880',j);
	k('Cmmaj7-0','120003035443',j);
	k('Cmmaj7-1','010001809880',j);
	k('Cmmaj7-2','11000000a887',j);
	k('Cm9-0','100001031330',j);
	k('Cm9-1','2000008a888a',j);
	k('Cm9-2','000011868700',j);
	k('Cm9-3','11200300acba',j);
	k('Cdim-0','100001034540',j);
	k('Cdim-1','00001189a800',j);
	k('Caug-0','100000032110',j);
	k('Caug-1','11000000a998',j);
	k('Caug-2','000011876500',j);
	k('Csus-0','100023033011',j);
	k('Csus-1','120003035563',j);
	k('Csus-2','2000038aaa88',j);
	k('C13-0','100000032335',j);
	k('C13-1','010023808755',j);
	k('C13-2','0100238089aa',j);
	k('C6add9-0','100023032233',j);
	k('C6add9-1','020000877788',j);
	k('C-5-0','100001034550',j);
	k('C-5-1','11000000a978',j);
	k('C-5-2','00001189a900',j);
	k('C-5-3','11000000abdc',j);
	k('Cmaj9-0','000001879780',j);
	k('Cmaj9-1','11000000a787',j);
	k('Cmaj9-2','100001032430',j);
	k('Cmaj9-3','100000030000',j);
	k('C7-5-0','100000034350',j);
	k('C7-5-1','200411898900',j);
	k('C7-5-2','11200000abbc',j);
	k('C7maj5-0','120000036354',j);
	k('C7maj5-1','012003888998',j);
	k('C#/Db-0','120003046664',j);
	k('C#/Db-1','2000039bba99',j);
	k('C#/Db-2','100203043121',j);
	k('C#/Db-3','11000000bdcd',j);
	k('C#/Db6-0','102003046666',j);
	k('C#/Db6-1','00000000bab9',j);
	k('C#/Db6-2','11200000bdbd',j);
	k('C#/Db7-0','120003046464',j);
	k('C#/Db7-1','2000039b9a99',j);
	k('C#/Db7-2','010001909a90',j);
	k('C#/Db7sus4-0','100023044422',j);
	k('C#/Db7sus4-1','2000039b9b99',j);
	k('C#/Db7sus4-2','120003046474',j);
	k('C#/Dbmaj7-0','120003046564',j);
	k('C#/Dbmaj7-1','11000000ba98',j);
	k('C#/Dbmaj7-2','11000000bddd',j);
	k('C#/Db9-0','100001043440',j);
	k('C#/Db9-1','2000009b9a9b',j);
	k('C#/Db9-2','010023909899',j);
	k('C#/Dbadd9-0','120003046864',j);
	k('C#/Dbadd9-1','11000000ba9b',j);
	k('C#/Dbadd9-2','120003046644',j);
	k('C#/Dbadd9-3','102003041121',j);
	k('C#/Dbadd9-4','102003041141',j);
	k('C#/Db11-0','101000040442',j);
	k('C#/Db11-1','120003044444',j);
	k('C#/Db11-2','010023909877',j);
	k('C#/Dbm-0','120003046654',j);
	k('C#/Dbm-1','2000039bb999',j);
	k('C#/Dbm6-0','2000039bb9b9',j);
	k('C#/Dbm6-1','100001042320',j);
	k('C#/Dbm6-2','11200000bdbc',j);
	k('C#/Dbm7-0','120003046454',j);
	k('C#/Dbm7-1','2000039bb9c9',j);
	k('C#/Dbm7-2','2000039b9999',j);
	k('C#/Dbm7-3','2000039b99c9',j);
	k('C#/Dbm7-4','010001909990',j);
	k('C#/Dbmmaj7-0','120003046554',j);
	k('C#/Dbmmaj7-1','01000190a990',j);
	k('C#/Dbmmaj7-2','11000000b998',j);
	k('C#/Dbm9-0','100001042440',j);
	k('C#/Dbm9-1','2000009b999b',j);
	k('C#/Dbm9-2','000011979800',j);
	k('C#/Dbdim-0','100001045650',j);
	k('C#/Dbdim-1','0000119ab900',j);
	k('C#/Dbaug-0','100001043220',j);
	k('C#/Dbaug-1','11000000baa9',j);
	k('C#/Dbaug-2','000011987600',j);
	k('C#/Dbsus-0','120003046674',j);
	k('C#/Dbsus-1','2000039bbb99',j);
	k('C#/Dbsus-2','100001044120',j);
	k('C#/Db13-0','100000043446',j);
	k('C#/Db13-1','010023909866',j);
	k('C#/Db13-2','010023909abb',j);
	k('C#/Db6add9-0','100023043344',j);
	k('C#/Db6add9-1','020000988899',j);
	k('C#/Db-5-0','100001045660',j);
	k('C#/Db-5-1','11000000ba89',j);
	k('C#/Db-5-2','0000119aba00',j);
	k('C#/Db-5-3','11000000bced',j);
	k('C#/Dbmaj9-0','00000198a890',j);
	k('C#/Dbmaj9-1','11000000b898',j);
	k('C#/Dbmaj9-2','100001043540',j);
	k('C#/Dbmaj9-3','102003041111',j);
	k('C#/Db7-5-0','100001045460',j);
	k('C#/Db7-5-1','2004119a9a00',j);
	k('C#/Db7maj5-0','120000047465',j);
	k('C#/Db7maj5-1','012003999aa9',j);
	k('D-0','110000000232',j);
	k('D-1','120003057775',j);
	k('D-2','200003accbaa',j);
	k('D-3','100203054232',j);
	k('D-4','110000000775',j);
	k('D-5','110000000baa',j);
	k('D6-0','110000000202',j);
	k('D6-1','102003057777',j);
	k('D6-2','00000000cbca',j);
	k('D7-0','110000000212',j);
	k('D7-1','120003057575',j);
	k('D7-2','200003acabaa',j);
	k('D7-3','010001a0aba0',j);
	k('D7sus4-0','100023055533',j);
	k('D7sus4-1','120003057585',j);
	k('D7sus4-2','110000000213',j);
	k('D7sus4-3','200003acacaa',j);
	k('Dmaj7-0','110203000222',j);
	k('Dmaj7-1','120003057675',j);
	k('Dmaj7-2','11000000cba9',j);
	k('Dmaj7-3','11000000ceee',j);
	k('D9-0','110000000210',j);
	k('D9-1','100001054550',j);
	k('D9-2','200000acabac',j);
	k('D9-3','010023a0a9aa',j);
	k('Dadd9-0','100009054230',j);
	k('Dadd9-1','120003057975',j);
	k('Dadd9-2','11000000cbac',j);
	k('Dadd9-3','120003057755',j);
	k('Dadd9-4','102003052232',j);
	k('Dadd9-5','102003052252',j);
	k('D11-0','110000000553',j);
	k('D11-1','120003055555',j);
	k('D11-2','010023a0a988',j);
	k('Dm-0','110000000231',j);
	k('Dm-1','120003057765',j);
	k('Dm-2','200003accaaa',j);
	k('Dm6-0','110000000201',j);
	k('Dm6-1','200003accaca',j);
	k('Dm6-2','100001053430',j);
	k('Dm6-3','11200000cecd',j);
	k('Dm7-0','110000000211',j);
	k('Dm7-1','120003057565',j);
	k('Dm7-2','200003acaaaa',j);
	k('Dm7-3','010001a0aaa0',j);
	k('Dm7-4','200003acaada',j);
	k('Dmmaj7-0','110000000221',j);
	k('Dmmaj7-1','010001a0baa0',j);
	k('Dmmaj7-2','11000000caa9',j);
	k('Dm9-0','100001053550',j);
	k('Dm9-1','200000acaaac',j);
	k('Dm9-2','000011a8a900',j);
	k('Dm9-3','110000000210',j);
	k('Ddim-0','110203000131',j);
	k('Ddim-1','000011abca00',j);
	k('Daug-0','110000000332',j);
	k('Daug-1','100001054330',j);
	k('Daug-2','11000000cbba',j);
	k('Daug-3','000011a98700',j);
	k('Dsus-0','110000000233',j);
	k('Dsus-1','120003057785',j);
	k('Dsus-2','200003acccaa',j);
	k('Dsus-3','100001055230',j);
	k('D13-0','100000054557',j);
	k('D13-1','010023a0a977',j);
	k('D13-2','010023a0abcc',j);
	k('D6add9-0','100023054455',j);
	k('D6add9-1','020000a999aa',j);
	k('D-5-0','110000000132',j);
	k('D-5-1','100001056770',j);
	k('D-5-2','11000000cb9a',j);
	k('D-5-3','000011abcb00',j);
	k('D-5-4','11000000cdfe',j);
	k('Dmaj9-0','000001a9b9a0',j);
	k('Dmaj9-1','11000000c9a9',j);
	k('Dmaj9-2','100001054650',j);
	k('Dmaj9-3','102003052222',j);
	k('D7-5-0','110000000112',j);
	k('D7-5-1','100001056570',j);
	k('D7-5-2','200411abab00',j);
	k('D7maj5-0','120000058576',j);
	k('D7maj5-1','012003aaabba',j);
	k('D#/Eb-0','120003068886',j);
	k('D#/Eb-1','100203065343',j);
	k('D#/Eb-2','110000001343',j);
	k('D#/Eb-3','200003bddcbb',j);
	k('D#/Eb-4','11000000dfef',j);
	k('D#/Eb6-0','112000001313',j);
	k('D#/Eb6-1','102003068888',j);
	k('D#/Eb6-2','11200000dfdf',j);
	k('D#/Eb7-0','110000001323',j);
	k('D#/Eb7-1','120003068686',j);
	k('D#/Eb7-2','010001b0bcb0',j);
	k('D#/Eb7sus4-0','100023066644',j);
	k('D#/Eb7sus4-1','120003068696',j);
	k('D#/Eb7sus4-2','200003bdbdbb',j);
	k('D#/Ebmaj7-0','110203001333',j);
	k('D#/Ebmaj7-1','120003068786',j);
	k('D#/Ebmaj7-2','110000001333',j);
	k('D#/Ebmaj7-3','11000000dfff',j);
	k('D#/Eb9-0','100001065660',j);
	k('D#/Eb9-1','010023b0babb',j);
	k('D#/Ebadd9-0','120003068a86',j);
	k('D#/Ebadd9-1','120003068866',j);
	k('D#/Ebadd9-2','102003063343',j);
	k('D#/Ebadd9-3','102003063363',j);
	k('D#/Eb11-0','101000060664',j);
	k('D#/Eb11-1','120003066666',j);
	k('D#/Eb11-2','010023b0ba99',j);
	k('D#/Ebm-0','120003068876',j);
	k('D#/Ebm-1','110000001342',j);
	k('D#/Ebm6-0','112000001312',j);
	k('D#/Ebm6-1','100001064540',j);
	k('D#/Ebm6-2','11200000dfde',j);
	k('D#/Ebm7-0','110000001322',j);
	k('D#/Ebm7-1','120003068676',j);
	k('D#/Ebm7-2','010001b0bbb0',j);
	k('D#/Ebm7-3','200003bdbbeb',j);
	k('D#/Ebmmaj7-0','110000001332',j);
	k('D#/Ebmmaj7-1','010001b0cbb0',j);
	k('D#/Ebm9-0','100001064660',j);
	k('D#/Ebm9-1','000011b9ba00',j);
	k('D#/Ebm9-2','112003001321',j);
	k('D#/Ebdim-0','100001067870',j);
	k('D#/Ebaug-0','100001065440',j);
	k('D#/Ebaug-1','000011ba9800',j);
	k('D#/Ebsus-0','120003068896',j);
	k('D#/Ebsus-1','100001066340',j);
	k('D#/Eb13-0','100000065668',j);
	k('D#/Eb13-1','010023b0ba88',j);
	k('D#/Eb6add9-0','100023065566',j);
	k('D#/Eb6add9-1','020000baaabb',j);
	k('D#/Eb-5-0','110000001243',j);
	k('D#/Eb-5-1','100001067880',j);
	k('D#/Ebmaj9-0','110000001031',j);
	k('D#/Ebmaj9-1','000001bacab0',j);
	k('D#/Ebmaj9-2','100001065760',j);
	k('D#/Ebmaj9-3','102003063333',j);
	k('D#/Ebmaj9-4','11000000daba',j);
	k('D#/Eb7-5-0','100001067680',j);
	k('D#/Eb7-5-1','200411bcbc00',j);
	k('D#/Eb7-5-2','112000001223',j);
	k('D#/Eb7maj5-0','120000069687',j);
	k('D#/Eb7maj5-1','012003bbbccb',j);
	k('E-0','000000022100',j);
	k('E-1','120003079997',j);
	k('E-2','100203076454',j);
	k('E-3','110000002100',j);
	k('E-4','110000002454',j);
	k('E6-0','000000022120',j);
	k('E6-1','102003079999',j);
	k('E6-2','112000002424',j);
	k('E6-3','110000002120',j);
	k('E7-0','000000020100',j);
	k('E7-1','000000022130',j);
	k('E7-2','000000020130',j);
	k('E7-3','120003079797',j);
	k('E7sus4-0','000000020200',j);
	k('E7sus4-1','1200030797a7',j);
	k('E7sus4-2','100023077755',j);
	k('E7sus4-3','200003cececc',j);
	k('Emaj7-0','020000022444',j);
	k('Emaj7-1','120003079897',j);
	k('Emaj7-2','000001021100',j);
	k('Emaj7-3','110000002444',j);
	k('E9-0','100001076770',j);
	k('E9-1','000000020102',j);
	k('E9-2','010023c0cbcc',j);
	k('Eadd9-0','000000024100',j);
	k('Eadd9-1','000000022102',j);
	k('Eadd9-2','120003079b97',j);
	k('Eadd9-3','120003079977',j);
	k('Eadd9-4','102003074454',j);
	k('Eadd9-5','102003074474',j);
	k('E11-0','020003022232',j);
	k('E11-1','000000020202',j);
	k('E11-2','120003077777',j);
	k('E11-3','010023c0cbaa',j);
	k('Em-0','000000022000',j);
	k('Em-1','120003079987',j);
	k('Em-2','0000000a9080',j);
	k('Em-3','110000002453',j);
	k('Em6-0','000000022020',j);
	k('Em6-1','112000002423',j);
	k('Em6-2','100001075650',j);
	k('Em7-0','000000022030',j);
	k('Em7-1','000000020000',j);
	k('Em7-2','000000020030',j);
	k('Em7-3','120003079787',j);
	k('Em7-4','010001c0ccc0',j);
	k('Em7-5','000000022033',j);
	k('Em7-6','000000020003',j);
	k('Em7-7','000000020033',j);
	k('Em7-8','110000002433',j);
	k('Em7-9','200003ceccfc',j);
	k('Emmaj7-0','110000002443',j);
	k('Emmaj7-1','010001c0dcc0',j);
	k('Em9-0','100001075770',j);
	k('Em9-1','000000020002',j);
	k('Em9-2','000000020032',j);
	k('Em9-3','000000022032',j);
	k('Em9-4','000011cacb00',j);
	k('Em9-5','0000000acbc0',j);
	k('Em9-6','020003022432',j);
	k('Edim-0','100001078980',j);
	k('Edim-1','000011012000',j);
	k('Eaug-0','000000032110',j);
	k('Eaug-1','100001076550',j);
	k('Eaug-2','000011cba900',j);
	k('Esus-0','000000022200',j);
	k('Esus-1','1200030799a7',j);
	k('Esus-2','000000002200',j);
	k('Esus-3','000000002400',j);
	k('Esus-4','000000077450',j);
	k('E13-0','100000076779',j);
	k('E13-1','010023c0cb99',j);
	k('E13-2','010023000122',j);
	k('E6add9-0','100023076677',j);
	k('E6add9-1','020000cbbbcc',j);
	k('E-5-0','010000002354',j);
	k('E-5-1','100001078990',j);
	k('E-5-2','000011012100',j);
	k('Emaj9-0','000000021102',j);
	k('Emaj9-1','002003074444',j);
	k('Emaj9-2','100001076870',j);
	k('Emaj9-3','11000000ebcb',j);
	k('E7-5-0','000000078790',j);
	k('E7-5-1','000011010100',j);
	k('E7-5-2','112000002334',j);
	k('E7maj5-0','02000007a798',j);
	k('E7maj5-1','010000000110',j);
	k('F-0','200003133211',j);
	k('F-1','12000308aaa8',j);
	k('F-2','100203087565',j);
	k('F-3','110000003211',j);
	k('F-4','110000003565',j);
	k('F6-0','110000003231',j);
	k('F6-1','10200308aaaa',j);
	k('F6-2','112000003535',j);
	k('F7-0','200003131211',j);
	k('F7-1','12000308a8a8',j);
	k('F7-2','010001101210',j);
	k('F7-3','110000003545',j);
	k('F7sus4-0','200003131311',j);
	k('F7sus4-1','12000308a8b8',j);
	k('F7sus4-2','100023088866',j);
	k('F7sus4-3','200003dfdfdd',j);
	k('Fmaj7-0','110000003210',j);
	k('Fmaj7-1','12000308a9a8',j);
	k('Fmaj7-2','110000003555',j);
	k('F9-0','100001087880',j);
	k('F9-1','200000131213',j);
	k('F9-2','010023101011',j);
	k('Fadd9-0','110000003213',j);
	k('Fadd9-1','12000308aca8',j);
	k('Fadd9-2','12000308aa88',j);
	k('Fadd9-3','102003085565',j);
	k('Fadd9-4','102003085585',j);
	k('F11-0','200000131313',j);
	k('F11-1','120003088888',j);
	k('Fm-0','200003133111',j);
	k('Fm-1','12000308aa98',j);
	k('Fm-2','110000003564',j);
	k('Fm6-0','200003133131',j);
	k('Fm6-1','112000003534',j);
	k('Fm6-2','100001086760',j);
	k('Fm7-0','200003133141',j);
	k('Fm7-1','200003131111',j);
	k('Fm7-2','200003131141',j);
	k('Fm7-3','12000308a898',j);
	k('Fm7-4','010001101110',j);
	k('Fmmaj7-0','110000003110',j);
	k('Fmmaj7-1','010001102110',j);
	k('Fmmaj7-2','010001d0edd0',j);
	k('Fm9-0','100001086880',j);
	k('Fm9-1','200000131113',j);
	k('Fm9-2','112003003543',j);
	k('Fdim-0','100001089a90',j);
	k('Fdim-1','000011123100',j);
	k('Faug-0','100001087660',j);
	k('Faug-1','110000003221',j);
	k('Fsus-0','200003133311',j);
	k('Fsus-1','12000308aab8',j);
	k('Fsus-2','110023003311',j);
	k('Fsus-3','100001088560',j);
	k('F13-0','10000008788a',j);
	k('F13-1','000023101233',j);
	k('F6add9-0','100023087788',j);
	k('F6add9-1','000000100011',j);
	k('F-5-0','110000003465',j);
	k('F-5-1','100001089aa0',j);
	k('F-5-2','110000003201',j);
	k('F-5-3','000011123200',j);
	k('Fmaj9-0','000000103010',j);
	k('Fmaj9-1','000001102010',j);
	k('Fmaj9-2','110000003010',j);
	k('Fmaj9-3','100001087980',j);
	k('Fmaj9-4','102003085555',j);
	k('Fmaj9-5','11000000fcdc',j);
	k('F7-5-0','1000010898a0',j);
	k('F7-5-1','200411121200',j);
	k('F7-5-2','112000003445',j);
	k('F7maj5-0','12000008b8a9',j);
	k('F7maj5-1','012003111221',j);
	k('F#/Gb-0','200003244322',j);
	k('F#/Gb-1','12000309bbb9',j);
	k('F#/Gb-2','100203098676',j);
	k('F#/Gb-3','110000004322',j);
	k('F#/Gb-4','110000004676',j);
	k('F#/Gb6-0','110000004342',j);
	k('F#/Gb6-1','10200309bbbb',j);
	k('F#/Gb6-2','112000004646',j);
	k('F#/Gb6-3','110000004342',j);
	k('F#/Gb7-0','200003242322',j);
	k('F#/Gb7-1','12000309b9b9',j);
	k('F#/Gb7-2','010001202320',j);
	k('F#/Gb7sus4-0','200003242422',j);
	k('F#/Gb7sus4-1','12000309b9c9',j);
	k('F#/Gb7sus4-2','100023099977',j);
	k('F#/Gbmaj7-0','110000004321',j);
	k('F#/Gbmaj7-1','12000309bab9',j);
	k('F#/Gbmaj7-2','110000004666',j);
	k('F#/Gb9-0','100001098990',j);
	k('F#/Gb9-1','200000242324',j);
	k('F#/Gb9-2','010023202122',j);
	k('F#/Gbadd9-0','110000004324',j);
	k('F#/Gbadd9-1','12000309bb99',j);
	k('F#/Gbadd9-2','102003096676',j);
	k('F#/Gbadd9-3','102003096696',j);
	k('F#/Gbadd9-4','12000309bdb9',j);
	k('F#/Gb11-0','200000242424',j);
	k('F#/Gb11-1','120003099999',j);
	k('F#/Gb11-2','010000202100',j);
	k('F#/Gbm-0','200003244222',j);
	k('F#/Gbm-1','12000309bba9',j);
	k('F#/Gbm-2','110000004675',j);
	k('F#/Gbm6-0','200003244242',j);
	k('F#/Gbm6-1','112000004645',j);
	k('F#/Gbm6-2','100001097870',j);
	k('F#/Gbm7-0','200003244252',j);
	k('F#/Gbm7-1','200003242222',j);
	k('F#/Gbm7-2','200003242252',j);
	k('F#/Gbm7-3','12000309b9a9',j);
	k('F#/Gbm7-4','010001202220',j);
	k('F#/Gbmmaj7-0','110000004665',j);
	k('F#/Gbmmaj7-1','010001203220',j);
	k('F#/Gbmmaj7-2','110000004221',j);
	k('F#/Gbmmaj7-3','010001e0fee0',j);
	k('F#/Gbm9-0','100001097990',j);
	k('F#/Gbm9-1','200000242224',j);
	k('F#/Gbm9-2','000011202100',j);
	k('F#/Gbm9-3','112003004654',j);
	k('F#/Gbdim-0','10000109aba0',j);
	k('F#/Gbdim-1','000011234200',j);
	k('F#/Gbaug-0','100001098770',j);
	k('F#/Gbaug-1','110000004332',j);
	k('F#/Gbsus-0','200003244422',j);
	k('F#/Gbsus-1','12000309bbc9',j);
	k('F#/Gbsus-2','100001099670',j);
	k('F#/Gb13-0','10000009899b',j);
	k('F#/Gb13-1','010023202344',j);
	k('F#/Gb6add9-0','100023098899',j);
	k('F#/Gb6add9-1','020000211122',j);
	k('F#/Gb-5-0','110000004576',j);
	k('F#/Gb-5-1','10000109abb0',j);
	k('F#/Gb-5-2','110000004312',j);
	k('F#/Gb-5-3','000011234300',j);
	k('F#/Gbmaj9-0','000001213120',j);
	k('F#/Gbmaj9-1','110000004121',j);
	k('F#/Gbmaj9-2','100001098a90',j);
	k('F#/Gbmaj9-3','102003096666',j);
	k('F#/Gb7-5-0','10000109a9b0',j);
	k('F#/Gb7-5-1','200411232300',j);
	k('F#/Gb7-5-2','112000004556',j);
	k('F#/Gb7maj5-0','12000009c9ba',j);
	k('F#/Gb7maj5-1','012003222332',j);
	k('G-0','000000320003',j);
	k('G-1','200003355433',j);
	k('G-2','1200030accca',j);
	k('G-3','1002030a9787',j);
	k('G-4','000000320033',j);
	k('G-5','110000005433',j);
	k('G-6','110000005787',j);
	k('G6-0','000000320000',j);
	k('G6-1','1020030acccc',j);
	k('G6-2','112000005757',j);
	k('G6-3','110000005453',j);
	k('G7-0','000000320001',j);
	k('G7-1','200003353433',j);
	k('G7-2','1200030acaca',j);
	k('G7-3','010001303430',j);
	k('G7sus4-0','200003353533',j);
	k('G7sus4-1','1000230aaa88',j);
	k('Gmaj7-0','000000320002',j);
	k('Gmaj7-1','1200030acbca',j);
	k('Gmaj7-2','110000005777',j);
	k('Gmaj7-3','110000005432',j);
	k('G9-0','1000010a9aa0',j);
	k('G9-1','200000353435',j);
	k('G9-2','010023303233',j);
	k('Gadd9-0','000000300003',j);
	k('Gadd9-1','000000320203',j);
	k('Gadd9-2','110000005435',j);
	k('Gadd9-3','000000320005',j);
	k('Gadd9-4','1200030accaa',j);
	k('Gadd9-5','1020030a7787',j);
	k('Gadd9-6','1020030a77a7',j);
	k('Gadd9-7','1200030aceca',j);
	k('G11-0','200000353535',j);
	k('G11-1','1200030aaaaa',j);
	k('G11-2','010023303211',j);
	k('Gm-0','200003355333',j);
	k('Gm-1','1200030accba',j);
	k('Gm-2','110000005786',j);
	k('Gm6-0','200003355353',j);
	k('Gm6-1','112000005756',j);
	k('Gm6-2','1000010a8980',j);
	k('Gm7-0','200003355363',j);
	k('Gm7-1','200003353333',j);
	k('Gm7-2','200003353363',j);
	k('Gm7-3','1200030acaba',j);
	k('Gm7-4','010001303330',j);
	k('Gmmaj7-0','110000005776',j);
	k('Gmmaj7-1','010001304330',j);
	k('Gmmaj7-2','110000005332',j);
	k('Gm9-0','1000010a8aa0',j);
	k('Gm9-1','200000353335',j);
	k('Gm9-2','000011313200',j);
	k('Gm9-3','112003005765',j);
	k('Gdim-0','1000010abcb0',j);
	k('Gdim-1','000011345300',j);
	k('Gaug-0','000000321003',j);
	k('Gaug-1','1000010a9880',j);
	k('Gaug-2','110000005443',j);
	k('Gaug-3','000001321010',j);
	k('Gsus-0','000000330013',j);
	k('Gsus-1','200003355533',j);
	k('Gsus-2','1000010aa780',j);
	k('G13-0','010000303200',j);
	k('G13-1','1000000a9aac',j);
	k('G13-2','010023303455',j);
	k('G6add9-0','1000230a99aa',j);
	k('G6add9-1','020000322233',j);
	k('G-5-0','110000005687',j);
	k('G-5-1','1000010abcc0',j);
	k('G-5-2','110000005423',j);
	k('G-5-3','000011345400',j);
	k('Gmaj9-0','000001324230',j);
	k('Gmaj9-1','110000005232',j);
	k('Gmaj9-2','1000010a9ba0',j);
	k('Gmaj9-3','1020030a7777',j);
	k('G7-5-0','1000010abac0',j);
	k('G7-5-1','200411343400',j);
	k('G7-5-2','112000005667',j);
	k('G7maj5-0','012003333443',j);
	k('G7maj5-1','1200000adacb',j);
	k('G#/Ab-0','200003466544',j);
	k('G#/Ab-1','1002030ba898',j);
	k('G#/Ab-2','110000006544',j);
	k('G#/Ab-3','110000006898',j);
	k('G#/Ab-4','1200030bdddb',j);
	k('G#/Ab6-0','110000006564',j);
	k('G#/Ab6-1','112000006868',j);
	k('G#/Ab7-0','200003464544',j);
	k('G#/Ab7-1','010001404540',j);
	k('G#/Ab7sus4-0','200003464644',j);
	k('G#/Ab7sus4-1','1000230bbb99',j);
	k('G#/Ab7sus4-2','110023006644',j);
	k('G#/Abmaj7-0','110000006543',j);
	k('G#/Abmaj7-1','110000006888',j);
	k('G#/Ab9-0','1000010babb0',j);
	k('G#/Ab9-1','200000464546',j);
	k('G#/Ab9-2','010023404344',j);
	k('G#/Abadd9-0','110000006546',j);
	k('G#/Abadd9-1','1020030b8898',j);
	k('G#/Abadd9-2','1020030b88b8',j);
	k('G#/Abadd9-3','1200030bdedb',j);
	k('G#/Ab11-0','200000464646',j);
	k('G#/Ab11-1','1200030bbbbb',j);
	k('G#/Ab11-2','010023404322',j);
	k('G#/Abm-0','200003466444',j);
	k('G#/Abm-1','110000006897',j);
	k('G#/Abm-2','1200030bddcb',j);
	k('G#/Abm6-0','200003466464',j);
	k('G#/Abm6-1','112000006867',j);
	k('G#/Abm6-2','1000010b9a90',j);
	k('G#/Abm7-0','200003466474',j);
	k('G#/Abm7-1','200003464444',j);
	k('G#/Abm7-2','200003464474',j);
	k('G#/Abm7-3','010001404440',j);
	k('G#/Abm7-4','1200030bdbcb',j);
	k('G#/Abmmaj7-0','110000006887',j);
	k('G#/Abmmaj7-1','010001405440',j);
	k('G#/Abmmaj7-2','110000006443',j);
	k('G#/Abm9-0','1000010b9bb0',j);
	k('G#/Abm9-1','200000464446',j);
	k('G#/Abm9-2','000011424300',j);
	k('G#/Abm9-3','112003006876',j);
	k('G#/Abdim-0','000011456400',j);
	k('G#/Abdim-1','1000010bcdc0',j);
	k('G#/Abaug-0','1000010ba990',j);
	k('G#/Abaug-1','110000006554',j);
	k('G#/Abaug-2','000011432100',j);
	k('G#/Absus-0','200003466644',j);
	k('G#/Absus-1','110023006644',j);
	k('G#/Absus-2','1000010bb890',j);
	k('G#/Ab13-0','010023404311',j);
	k('G#/Ab13-1','010023404566',j);
	k('G#/Ab6add9-0','1000230baabb',j);
	k('G#/Ab6add9-1','020000433344',j);
	k('G#/Ab-5-0','110000006798',j);
	k('G#/Ab-5-1','110000006534',j);
	k('G#/Ab-5-2','000011456500',j);
	k('G#/Abmaj9-0','000001435340',j);
	k('G#/Abmaj9-1','110000006343',j);
	k('G#/Abmaj9-2','1000010bacb0',j);
	k('G#/Abmaj9-3','1020030b8888',j);
	k('G#/Ab7-5-0','200411454500',j);
	k('G#/Ab7-5-1','112000006778',j);
	k('G#/Ab7maj5-0','012003444554',j);
	k('G#/Ab7maj5-1','1200000bebdc',j);
	k('A-0','100000002220',j);
	k('A-1','200003577655',j);
	k('A-2','1002030cb9a9',j);
	k('A-3','100000007655',j);
	k('A-4','1000000079a9',j);
	k('A-5','1200030ceeec',j);
	k('A6-0','102003002222',j);
	k('A6-1','112000007979',j);
	k('A6-2','110000007675',j);
	k('A6-3','100000004220',j);
	k('A6-4','10000000bba0',j);
	k('A7-0','100000002020',j);
	k('A7-1','102000002223',j);
	k('A7-2','100000002023',j);
	k('A7-3','200003575655',j);
	k('A7-4','010001505650',j);
	k('A7sus4-0','100000002030',j);
	k('A7sus4-1','200003575755',j);
	k('A7sus4-2','1000230cccaa',j);
	k('A7sus4-3','100000002033',j);
	k('A7sus4-4','100000002233',j);
	k('A9-0','102000002423',j);
	k('A9-1','100023005455',j);
	k('A9-2','100000005657',j);
	k('A9-3','200000575657',j);
	k('A9-4','1000010cbcc0',j);
	k('A9-5','100023005455',j);
	k('Aadd9-0','100000002420',j);
	k('Aadd9-1','100000007600',j);
	k('Aadd9-2','110000007657',j);
	k('Aadd9-3','100000002200',j);
	k('Aadd9-4','1020030c99a9',j);
	k('Aadd9-5','1020030c99c9',j);
	k('A11-0','100000000000',j);
	k('A11-1','200000575757',j);
	k('A11-2','100023005433',j);
	k('A11-3','1200030ccccc',j);
	k('A11-4','100023005433',j);
	k('Amaj7-0','100000002120',j);
	k('Amaj7-1','110000007999',j);
	k('Amaj7-2','110000007654',j);
	k('Am-0','100000002210',j);
	k('Am-1','200003577555',j);
	k('Am-2','100203002555',j);
	k('Am-3','1100000079a8',j);
	k('Am-4','1200030ceedc',j);
	k('Am6-0','100000002212',j);
	k('Am6-1','112000007978',j);
	k('Am6-2','200003577575',j);
	k('Am6-3','1000010caba0',j);
	k('Am6-4','10000000aba0',j);
	k('Am7-0','100000002010',j);
	k('Am7-1','100000002213',j);
	k('Am7-2','100000002013',j);
	k('Am7-3','200003577585',j);
	k('Am7-4','200003575555',j);
	k('Am7-5','200003575585',j);
	k('Am7-6','000000505550',j);
	k('Am7-7','1200030cecdc',j);
	k('Ammaj7-0','100000002110',j);
	k('Ammaj7-1','010001506550',j);
	k('Ammaj7-2','110000007554',j);
	k('Am9-0','1000010cacc0',j);
	k('Am9-1','200000575557',j);
	k('Am9-2','100000002413',j);
	k('Am9-3','102000005557',j);
	k('Am9-4','000011535400',j);
	k('Am9-5','112003007987',j);
	k('Adim-0','000011567500',j);
	k('Adim-1','100001001210',j);
	k('Adim-2','1000010cded0',j);
	k('Aaug-0','100000003221',j);
	k('Aaug-1','110000007665',j);
	k('Aaug-2','000011543200',j);
	k('Asus-0','100000002230',j);
	k('Asus-1','200003577755',j);
	k('Asus-2','100000000230',j);
	k('Asus-3','1000010cc9a0',j);
	k('A13-0','100023005422',j);
	k('A13-1','010023505677',j);
	k('A6add9-0','1000230cbbcc',j);
	k('A6add9-1','102000004455',j);
	k('A6add9-2','020000544455',j);
	k('A-5-0','100000007645',j);
	k('A-5-1','1000000078a9',j);
	k('A-5-2','100001001220',j);
	k('A-5-3','000011567600',j);
	k('Amaj9-0','000001546450',j);
	k('Amaj9-1','110000007454',j);
	k('Amaj9-2','102003009999',j);
	k('A7-5-0','100001001020',j);
	k('A7-5-1','100000005645',j);
	k('A7-5-2','200411565600',j);
	k('A7-5-3','112000007889',j);
	k('A7maj5-0','100000003021',j);
	k('A7maj5-1','012003555665',j);
	k('A7maj5-2','1200000cfced',j);
	k('A#/Bb-0','120003013331',j);
	k('A#/Bb-1','200003688766',j);
	k('A#/Bb-2','110000008766',j);
	k('A#/Bb-3','110000008aba',j);
	k('A#/Bb-4','1200030dfffd',j);
	k('A#/Bb-5','1002030dcaba',j);
	k('A#/Bb6-0','110000008786',j);
	k('A#/Bb6-1','102003013333',j);
	k('A#/Bb6-2','112000008a8a',j);
	k('A#/Bb7-0','120003013131',j);
	k('A#/Bb7-1','200003686766',j);
	k('A#/Bb7-2','010001606760',j);
	k('A#/Bb7sus4-0','200003686866',j);
	k('A#/Bb7sus4-1','120003013141',j);
	k('A#/Bbmaj7-0','120003013231',j);
	k('A#/Bbmaj7-1','110000008aaa',j);
	k('A#/Bbmaj7-2','110000008765',j);
	k('A#/Bb9-0','100001010110',j);
	k('A#/Bb9-1','200000686768',j);
	k('A#/Bb9-2','012000606768',j);
	k('A#/Bb9-3','010023606566',j);
	k('A#/Bbadd9-0','120003013531',j);
	k('A#/Bbadd9-1','110000008768',j);
	k('A#/Bbadd9-2','120003013311',j);
	k('A#/Bb11-0','200000686868',j);
	k('A#/Bb11-1','120003011111',j);
	k('A#/Bb11-2','010023606544',j);
	k('A#/Bbm-0','120003013321',j);
	k('A#/Bbm-1','200003688666',j);
	k('A#/Bbm-2','110000008ab9',j);
	k('A#/Bbm-3','1200030dffed',j);
	k('A#/Bbm6-0','200003688686',j);
	k('A#/Bbm6-1','112000008a89',j);
	k('A#/Bbm7-0','120003013121',j);
	k('A#/Bbm7-1','200003688696',j);
	k('A#/Bbm7-2','200003686666',j);
	k('A#/Bbm7-3','200003686696',j);
	k('A#/Bbm7-4','010001606660',j);
	k('A#/Bbm7-5','1200030dfded',j);
	k('A#/Bbmmaj7-0','120003013221',j);
	k('A#/Bbmmaj7-1','010001607660',j);
	k('A#/Bbmmaj7-2','110000008665',j);
	k('A#/Bbm9-0','200000686668',j);
	k('A#/Bbm9-1','000011646500',j);
	k('A#/Bbm9-2','112003008a98',j);
	k('A#/Bbdim-0','000011678600',j);
	k('A#/Bbdim-1','100001012320',j);
	k('A#/Bbdim-2','1000010defe0',j);
	k('A#/Bbaug-0','000011654700',j);
	k('A#/Bbaug-1','110000008776',j);
	k('A#/Bbaug-2','000011654300',j);
	k('A#/Bbsus-0','120003013341',j);
	k('A#/Bbsus-1','200003688866',j);
	k('A#/Bb13-0','010023606533',j);
	k('A#/Bb13-1','010023606788',j);
	k('A#/Bb6add9-0','100000010011',j);
	k('A#/Bb6add9-1','020000655566',j);
	k('A#/Bb-5-0','1100000089ba',j);
	k('A#/Bb-5-1','100001012330',j);
	k('A#/Bb-5-2','110000008756',j);
	k('A#/Bb-5-3','000011678700',j);
	k('A#/Bbmaj9-0','100000010211',j);
	k('A#/Bbmaj9-1','000001657560',j);
	k('A#/Bbmaj9-2','110000008565',j);
	k('A#/Bbmaj9-3','100001010210',j);
	k('A#/Bb7-5-0','100001012130',j);
	k('A#/Bb7-5-1','200411676700',j);
	k('A#/Bb7-5-2','11200000899a',j);
	k('A#/Bb7maj5-0','120000014132',j);
	k('A#/Bb7maj5-1','012003666776',j);
	k('B-0','120003024442',j);
	k('B-1','200003799877',j);
	k('B-2','110000009877',j);
	k('B-3','110000009bcb',j);
	k('B-4','1002030edbcb',j);
	k('B6-0','100000021102',j);
	k('B6-1','102003024444',j);
	k('B6-2','112000009b9b',j);
	k('B6-3','110000009897',j);
	k('B7-0','100000021202',j);
	k('B7-1','120003024242',j);
	k('B7-2','200003797877',j);
	k('B7-3','010001707870',j);
	k('B7sus4-0','200003797977',j);
	k('B7sus4-1','120003024252',j);
	k('B7sus4-2','100000022200',j);
	k('Bmaj7-0','120003024342',j);
	k('Bmaj7-1','110000009bbb',j);
	k('Bmaj7-2','110000009876',j);
	k('B9-0','100001021220',j);
	k('B9-1','200000797879',j);
	k('B9-2','010023707677',j);
	k('Badd9-0','120003024642',j);
	k('Badd9-1','110000009879',j);
	k('Badd9-2','120003024422',j);
	k('B11-0','200000797979',j);
	k('B11-1','120003022222',j);
	k('B11-2','010023707655',j);
	k('Bm-0','120003024432',j);
	k('Bm-1','200003799777',j);
	k('Bm-2','110000009bca',j);
	k('Bm6-0','200003799797',j);
	k('Bm6-1','112000009b9a',j);
	k('Bm6-2','100001020100',j);
	k('Bm7-0','120003024232',j);
	k('Bm7-1','2000037997a7',j);
	k('Bm7-2','200003797777',j);
	k('Bm7-3','2000037977a7',j);
	k('Bm7-4','010001707770',j);
	k('Bm7-5','100000020202',j);
	k('Bmmaj7-0','120003024332',j);
	k('Bmmaj7-1','010001708770',j);
	k('Bmmaj7-2','110000009776',j);
	k('Bm9-0','100001020220',j);
	k('Bm9-1','200000797779',j);
	k('Bm9-2','000011757600',j);
	k('Bm9-3','112003009ba9',j);
	k('Bdim-0','000011789700',j);
	k('Bdim-1','100001023430',j);
	k('Baug-0','000001765000',j);
	k('Baug-1','000001765800',j);
	k('Baug-2','110000009887',j);
	k('Baug-3','000011765400',j);
	k('Bsus-0','120003024452',j);
	k('Bsus-1','200003799977',j);
	k('B13-0','010023707644',j);
	k('B13-1','010023707899',j);
	k('B6add9-0','100023021122',j);
	k('B6add9-1','020000766677',j);
	k('B-5-0','110000009acb',j);
	k('B-5-1','100001023440',j);
	k('B-5-2','110000009867',j);
	k('B-5-3','000011789800',j);
	k('Bmaj9-0','000001768670',j);
	k('Bmaj9-1','110000009676',j);
	k('Bmaj9-2','100001021320',j);
	k('B7-5-0','100001023240',j);
	k('B7-5-1','200411787800',j);
	k('B7-5-2','112000009aab',j);
	k('B7maj5-0','120000025243',j);
	k('B7maj5-1','012003777887',j);
end;

function k(a:string;b:string;j:string):string;
var
  i:integer;
  b0,b1,b2,b3,z:string;
begin
	b0:=';'+midstr(b,6,1)+';'+midstr(b,7,1)+';'+midstr(b,8,1)+';'+midstr(b,9,1)+';'+midstr(b,10,1)+';'+midstr(b,11,1);
	b0:='';
	for i:=7 to 12 do
    begin
  		z:=midstr(b,i,1);
	  	if (pos('0',z)>96) then
  			z:=inttostr(pos('0',z)-87);
	  	b0:=b0+';'+z;
	  end;
	b1:=midstr(b,0,6)+b0;
	b2:='';
  b3:=ReverseString(a);
  b3:=midstr(b3,pos('-',b3)+1,length(b3));
  b3:=ReverseString(b3);
	if (j='') then
    begin
//		  c(a):=b1;
	  end
	else
    begin
		  if (b0=j) then
        begin
          b2:=ReverseString(a);
          b2:=midstr(b2,pos('-',b2)+1,length(b2));
          b2:=ReverseString(b2);
    			revcho:=revcho+b2+chr(13);
  			end;
      if (b3=j) then
        begin
          chordfnd:=chordfnd+'$'+a+'='+b;
        end;
	  end;
end;

function reverse(d1,d2,d3,d4,d5,d6:string):string;
var s:string;
begin
	s:=';'+d1+';'+d2+';'+d3+';'+d4+';'+d5+';'+d6;
	revcho:='';
	initchords(s);
	if(revcho='') then
		revcho:='No chords found'
	else
		revcho:='Chords found :   '+#13+'-------------------'+#13+revcho;
	result:=revcho;
end;

function findcrd(s:string):string;
begin
  chordfnd:='';
  initchords(s);
  result:=chordfnd;
end;

end.
