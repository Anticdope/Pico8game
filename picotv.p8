pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--init

function _init()



--level data



--player data

ps=11
px=60
py=60
pxf=false
pxy=false
ph=3
psp=1



--enemy 1 data

e1x=espawn
e1y=espawn
e1s=33
e1x=64
e1y=64
e1xf=false
e1xy=false
e1h=1
e1sp=.5



--enemy 2 data




--enemy 3 data




--upgrade data





--camera data

end







-->8
--update

function _update()

 pm()

end
-->8
--draw

function _draw()

 cls()
 ui()
 md()
 pd()
 
end
-->8
--map code

function md()

 map(0,0,0,0,16,16)
 
end



function ui()

 print("x:"..px,4,4,8)
 print("y:"..py,4,10,8)
 
end
-->8
--player code

function pd()

 spr(ps,px,py,1,1,pxf,pyf)
 
end

function pm()

 if (btn(⬆️)) then
  py-=1
  pf=false
 end
 if (btn(⬇️)) then
  py+=1
  pf=false
 end
 if (btn(⬅️)) then
  px-=1
  pf=true
 end
 if (btn(➡️)) then
  px+=1
  pf=false
 end
 
end
-->8
--enemy code

function e1d()

 spr(e1s,e1x,e1y,1,1,e1xf,eiyf)

end

function e1a()

	if ((px<e1x+64 and py<e1y+64) and
	(px>e1x-64 and py>e1y-64)) then
	 if (sgn(e1x-px)==1) then
	  e1x-=e1sp
	 end
	 if (sgn(e1x-px)==-1) then
	  e1x+=e1sp
	 end
	  if (sgn(e1y-py)==1) then
	  e1y-=e1sp
	 end
	 if (sgn(e1y-py)==-1) then
	  e1y+=e1sp
	 end
	end

end
-->8
--power up code
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000049940000499400004994000049940000944000
00000000048880000488800004cc80000488800005888f000588f000048800000f8885500448850004885000048888400488884004dddd40048888400f888850
0000000048dcc00048dccc004d11cc0048dcc00008dcc00048dccc0048dccc0098dccc5098dcc50048dcc00008dddd8008dddd800c1111c008dddd8008dddd80
0000000098d11c0098d17c009d111c0098d11c0048d11c0048d17c0098d17c0048d17c0098d17c0098d11c0008c11c8008c11c800c7111c008c11c8008c11c80
0000000098d17c0098d11c009d117c0098d17c0048d17c0098d11c0098d11c0048d11c0048d11c0098d17c0008c71c8008c17c8008c71c8008c71c8008c71c80
0000000048dccc0048dcc0004d17cc0048dccc5598dccc5098dcc50048dcc00008dcc00048dccc0048dccc0005ccc000000ccc0000cccc0055ccc00005ccc0f0
00000000048885000488800004cc8050048885050f888550044885000488500005888f000588f000048800000000000000000000050000005050000005500000
00000000000000000000000000000000000005550000000000000000000000000000000000000000000000000000000000000000000000005550000000000000
00994400004994000004490000449900004994000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0488885004888840058888f005888840048888400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
04dddd8008dddd8008dddd8008dddd4008dddd800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08c11c8008c11c8008c11c8008c11c8008c11c800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08c17cf005c17c0008c17c800fc17c8000c71c500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
055ccc00000ccc000f0ccc5000ccc55000ccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000055000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000003000000000b000003000000003000000000b00000b07b00b00007b000b07b0000b7b00000000000000000000000000000000000000000000000000
000000000003b0000003b0000003000b0003b0003300b000000abb00007abab00007ba000007a0b0000000000000000000000000000000000000000000000000
000000000003b0003903b0000003b0703903b0000093b000000ba8b0000ba80b000aa8b0b00aa80b000000000000000000000000000000000000000000000000
00000000093aaba0003aabab393aaba0003aaa7b003aaa7bbbba990b00ba99000bba990b0bba9900000000000000000000000000000000000000000000000000
0000000033a99ab733a99ab003a99ab003a99ab000a99aa7033a9903033a9900333a9903003a9900000000000000000000000000000000000000000000000000
000000003089980b308998b7308998a0038998a70389980b0003a8303003a8030003a8300093a803000000000000000000000000000000000000000000000000
00000000030000b000300b0b030000b730300b0b330000b000903000000930300090330003000330000000000000000000000000000000000000000000000000
0000000000300b000003b00000300b0b0003b00030300b0000303300000303000030003003000033000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000222112222222222222222222222222222222222222222225555555556656666662222222222222222222222222222222222222222221122222222000
00000000221871222222222222222222222222222222222222222251111111111111111117222222222222222222222222222222222222222217812222222200
00000000221881221111111111111111111111111111111110000251111111111111111117211111111111111111111111111111111111112218812211112220
000000001221122111111111111111111111100d671111110000055111111111111111111751111111110076d111111111111111111111111221122111111222
0000000011111111111111100dd11111111100d66d71111100006551111111111111111117561111111007d66d11111111100dd1111111111111111111881122
00000000111111111111d033dd66999abbb3333d6d66999aabbb655111111111111111111756bbbaa99966d6d3333bbba99966dd331d11111111111118871122
0000000015555551111d0333d6d679abbbbb3333d6d679aabbbb755111111111111111111757bbbbaa976d6d3333bbbbba976d6d3331d1111555555111711122
00000000567ddd67111d0a333dd6679a77b7b3333dd66d9a77777551111111111111111117577777a9d66dd3333b7b77a9766dd333a1d11176ddd76511111122
22211115dd1111dd511d0ab333d6667aabbbbb3333d66d79abbb655111111111111111111756bbba97d66d3333bbbbbaa7666d333ba1d115dd1111dd51111222
222211567133391d671d09ab333d66d79abbbbb3333d66d79aab755111111111111111111757baa97d66d3333bbbbba97d66d333ba91d176d133391765112222
2112115d13bbbba1d51dd09ab333d6d679aabbbb3333d6d6799965511111111111111111175699976d6d3333bbbbaa976d6d333ba91dd15d13bbbba1d5112112
1781115d13bb77b1d511dd1111100d6667d1111111100d6667d06555566667677767777777560d7666d1111111100d7666d1111111dd115d13bb77b1d5111871
1881115d13bb77b1d5111ddd111100d666d11111111100d666d00556666666666666666667500d666d11111111100d666d111111ddd1115d13bb77b1d5111881
2112115d137bbba1d51111111111100ddd1111111111100ddd000251561565d65d6d76d7672000ddd1111111111100ddd11111111111115d137bbba1d5112112
22221156719aba1d6711111222222222222222222222222222222251561565d65d6d76d76722222222222222222222222222222221111176d19aba1765112222
22211115dd1111dd511122222222222222222222222222222222222555666676667777777222222222222222222222222222222222221115dd1111dd51111222
22111111567ddd6711222222000222226666666666666666666666666666666633d6662222666d3322100ab33ba11122555676652222221176ddd76511111122
221111111555555112222777002222226666d667777766666666666666666666333dd122220dd33322100abbbba1112266676661d66222211555555111111122
2211111111111111222d6677022211116666d566775766666666666666666666733111222210033722100bbbbbb1112277766616dd6672221111111111111122
221116666611111122d66677222111116666dd666677666666666666666666667bb1112222100bb722100bbbbbb1112266666101dd6667221111116666611122
2211dd111161111222d66677221187116666dd666677666666666666666666667bb1112222100bb722100bbbbbb1112266666101dd6667222111161111dd1122
221dd0aab71111122d666677221188716666dd666677666666666666666666667bb1112222100ab722100bbbbbb1112266661001dd6666722111007baa1dd122
221d09abbb7111122ddd6677221118116666dd666677666666666666666666667bb1112222100ab722100bbbbbb11122d6661001dddd6672211007bbba91d122
221d099abbb111222dddd667221111116666dd666677666666666666666666667bb11122221009a722100bbbbbb11122d6661001ddddd66222100bbba991d122
22100dd9aba1112200166d11566765556666d5ddd667777766666666666666667bb1112222100bb7221009abba911122d6561001a991112222100aba9dd11122
2200dd679aa1112200166d11166676666666dddddd66777766666666666666667bb1112222100bb722100abbbba11122d66610017a91112222100aa976dd1122
2200d66d69a11122016666dd1666677766666666dd66667766666666666666667bb1112222100bb722100abbbba11122665610017a91112222100a96d66d1122
22100d6d67911122016666661666766666666666dd66667766666666666666667bb1112222100bb722100bbbbba11122665661017b91112222100976d6d11122
221003d666711122166666550167666666666666dd66667766666666666666667bb1112222100bb722100bbbbbb1112255666101bba11122221007666d311122
2210033d6667112216666555016766dd66666666dd6666776666666666666666733111222210033722100bbbbbb1112255566616bba1122222007666d3311122
22100333d66d71221666555500166d1166666666dddd66776666666666666666333dd122220dd33322100abbbba11122555566657ba225552207d66d33311122
221009333d6d67221665111100566d1166666666ddddd667666666666666666633d6662222666d3322100ab33ba1112211115665bbb257652276d6d333a11122
221009333d6d672222100bb722100bbb7bb1112222100bb7bbb1112216512bb77bb2156122100abb16512bbb2210099a555676652210099a2276d6d333911122
22100333d66d712222100bb722100bbb7bb1112222100ab7bbb1112211122bb77bb2211122100bbb11122abb221009ab66676661221009a72207d66d33311122
2210033d6667112222100bb722100bbb7ba1112222100ab7bbb1112222200bb77bb1122222100bbb22200abb221009ab77766661221009a722007666d3311122
221003d66671112222100bb722100abb7bb11122221009a7bbb1112222100bb77bb1112222100bbb22100abb221009bb66676661221009b7221007666d311122
22100d6d6791112222100bb7221009bb7ba1112222100ab7bbb1112222100bb77bb1112222100bbb221009bb22100abb6666761022100abb22100976d6d11122
2210d66d69a1112222100bb7221009ab7ba1112222100bb7bbb1112222100bb77bb1112222200bbb221009ab22200abbdd66761022200abb22100a96d66d1122
2210dd679aa1112222100bb7221009ab7b91112222100bb7bbb1112222100bb77bb1112255522bbb221009ab55522abb11d6610055522ab722100aa976dd1122
22100dd9aba1112222100bb72210099a7a91112222100bb7bbb1112222100ab77ba1112256752bbb2210099a56752bbb11d6650056752bbb22100aba9dd11122
221d099abbb111222667777722100999a991112222100bbb7bb11122a9766d2222100ab37bb21561566765551001656d11d66100d667777222100bbba991d122
221d09abbb7111122d6677772210099a7a91112222100bbb7bb11122ba976d2222100abbbba22111166676661001666d11d66100dd667772211007bbba91d122
221dd0aab71111122d666677221009ab7ba1112222100bbb7bb11122ba9dd12222100bbb7ba112226166677710016566dd666610dd6666722111007baa1dd122
2211dd111161111222d66677221009ab7bb1112222100bbb7bb11122bb91112222100bbb7ba11122101666661016656666666610dd6667222111161111dd1122
221116666611111122d6667722100aab7bb1112222100bbb7bb11122bba1112222100bbb7b911122101666661016665555666661dd6667221111116666611122
2211111111111111222d667722100aab7ba1112222100bbb7bb11122bba1122222100bbb7a911122100166666166655555566661dd6672221111111111111122
221111111555555112222677221009ab7b91112222100bbb7bb11122bba2255522100bbb7a9111221001666d5666555555556661dd6222211555555111111122
22111111567ddd6711222222221009aa7a91112222100bbb7bb11122bbb2576522100bbba99111221001666d56651111111156612222221176ddd76511111122
22211115dd1111dd511122222222222222222222222222222222222222222222222222222222222222222222222222222222222222221115dd1111dd51111222
222211567133391d671111122222222222222222222222222222222222222222222222222222222222222222222222222222222221111176d133391d65112222
2112115d13bbbba1d51111111111100ddd1111111111100ddd1111111111111111111111111100ddd1111111111100ddd11111111111115d13bbbba1d5112112
1881115d13bb77b1d5111ddd111100d666d11111111100d666d11111111111111111111111100d666d11111111100d666d111111ddd1115d13bb77b1d5111881
1781115d13bb77b1d511dd1111100d6667d1111111100d6667d11111111111111111111111100d7666d1111111100d7666d1111111dd115d13bb77b1d5111871
2112115d137bbba1d51dd09ab333d6d679aabbbb3333d6d67999aaabbbbbbbbbbbbbbbbbbaaa99976d6d3333bbbbaa976d6d333ba91dd15d137bbba1d5112112
22221156719aba1d671d09ab333d66d79abbbbb3333d66d79aabbbbbbbbbbbbbbbbbbbbbbbbbbaa97d66d3333bbbbba97d66d333ba91d176d19aba1d65112222
22211115dd1111dd511d0ab333d6667aabbbbb3333d66d79abbbbbbbbbbbbbbbbbbbbbbbbbbbbbba97d66d3333bbbbbaa7666d333ba1d115dd1111dd51111222
22111111567ddd67111d0a333dd6679a77b7b3333dd66d9a77777777777777777777777777777777a9d66dd3333b7b77a9766dd333a1d11176ddd76511111122
2211171115555551111d0333d6d679abbbbb3333d6d679aabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbaa976d6d3333bbbbba976d6d3331d1111555555111811122
22117881111111111111d033dd66999abbb3333d6d66999aabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbaa99966d6d3333bbba99966dd331d11111111111117881122
2211881111111111111111100dd11111111100d66d71111111111111111111111111111111111111111007d66d11111111100dd1111111111111111111781122
222111111221122111111111111111111111100d671111111111111111111111111111111111111111110076d111111111111111111111111221122111111222
02221111221881221111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111112218812211112220
00222222221871222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222217812222222200
00022222222112222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222221122222222000
2210099a33d66622bba1112216512bb7a9921561222222115561111111111615552222227777777715556d1111d6676577777777bbb111220000000000000000
221009a7333dd122bbb1112211122abbba92211122222216661000000000016665222222bbbbbbbb15556d1111d66765bbbbbbbbbba111220000000000000000
221009a773311122bbb1112222200ab7baa11222dd1112156661100000011666752100ddabbbbbbb155666dddd666765bbbbbbbabba111220000000000000000
221009b77bb11122bba1112222100ab7bba1112266d11121566661111116666752100d6611111122156666666666767622111111bba111220000000000000000
22100ab77bb11122bba11122221009b7bba1112267d11122156666666666667622100d7611111121566666666677666752111111bb9111220000000000000000
22100ab77bb11122bba11222221009a7bbb111227999aaab1556556566666765baaa999711111215666666115166666675211111ba9111220000000000000000
22100ab77bb11122baa22555221009a7bbb111229aabbbbb1555666666666765bbbbbaa922222216666611000011666665222222ba9111220000000000000000
22100bb77bb11122ba9257652210099abba11122abbbbbbb155566dddd666765bbbbbbba22222211111100000000111555222222a99111220000000000000000
00000000007777777777777777777777777700000007777777777777777777777777777777777777777777777777777777777777007777007777000000000000
00000000077777777777777777777777777770000077777777777777777777777777777777777777777777777777777777777770077777777777700000000000
00000000777777777777777777777777777777000777777777777777777777777777777777777777777777777777777777777700777887777887770000000000
00000000080088888777777777888887777777707777787777778888888777777888888777777788888877777777778888080007787788778877877000000000
00000000000000888877777778888887777777777777787777777778888777777778888877777778888887777777788800000077877777887777787700000000
00000000000000000877777778888887777777777777787777777788888777777788888887777777888888777777888000000078877778888777788700000000
00000000000000000777777778000007777777777777887777777880000777777880000888777777700087777778880000000078077787007877708700000000
00000000000000777777777777777007777887777778877777778880007777777777770077777777770077777788800000000087087788008877807800000000
00000000000007777777777777778077778877777788777777788880077777777777780777777777780777777888000000000088088877007788808800000000
00000000000077777777777777788777788777777887777777888800777777777777887777777777887777778880000000000008008888008888008000000000
00000000000088888888888888888888888888888888888888888000888888888888888888888888888888888800000000000000000088008800000000000000
00000000000088888888888888880888880888888808888888880000888888888888888888888888808888888000000000000000000000000000000000000000
00000000000000000007777777777777777777777777777777777777777777777777777777777777777777777777777777770000000777777777777700000000
00000000000000000077777777777777777777777777777777777777777777777777777777777777777777777777777777777000007777777777777000000000
00000000000000000777777777777777777777777777777777777777777777777777777777777777777777777777777777777700077777777777770000000000
00000000000000000777777788888877777777778888777777777888877777777778887777777788877777778887778777777770777777788808000000000000
00000000000000000877777778888887777777788887777787777788887777777788888777777888887777778887778777777777777777888000000000000000
00000000000000000887777777888888777777888877777888777778888777777888887777777888888777778887778777777777777778880000000000000000
00000000000000000888777777700087777778880777777777777777087777778880077777777000088777770077778777777777777788800000000000000000
00000000007777777777777777770077777788777777788887777778077777788777777777777777708777777777788777788777777888000000000000000000
00000000077777777777777777780777777887777777888877777788777777887777777777777777807777777777887777887777778880000000000000000000
00000000777777777777777777887777778877777778888777777887777778877777777777777778877777777778877778877777788800000000000000000000
00000000008800088888888888888888888888888888800888888888888888888888888888888888888888888888888888888888888000000000000000000000
00000000000000000000088888808888888088888888000888888808888888088888888888888888088888888888088888088888880000000000000000000000
__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080b800000000
__map__
634142434445464748494a4b4c4d4e4f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
505152535455565758595a5b5c5d5e5f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
606162757575757575757575756d6e6f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
70717575757575757575757575757e7f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6ac1757575757575757575757575696b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
83847575757575757575757575758dc200d1d2d3d4d5d6d7d8d9dadbdcddde00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
897d7575757575757575757575759a8c00e1e2e3e4e5e6e7e8e9eaebecedee00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
736c7575757575757575757575759b9c00f1f2f3f4f5f6f7f8f9fafbfcfdfe00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
727c757575757575757575757575c3c400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
8a99757575757575757575757575c08600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
939475757575757575757575757585cd00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7a78757575757575757575757575797b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
80817575757575757575757575758e8f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
909192757575757575757575759d9e9f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
a0a1a2a3a4a5c5c6c7c8aaabacadaeaf00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
b0b1b2b3b4b5c9cacbccbabbbcbdbebf00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
