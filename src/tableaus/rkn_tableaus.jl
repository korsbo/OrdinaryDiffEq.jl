struct IRKN3ConstantCache{T,T2} <: OrdinaryDiffEqConstantCache
  bconst1::T
  bconst2::T
  c1::T2
  a21::T
  b1::T
  b2::T
  bbar1::T
  bbar2::T
end

Base.@pure function IRKN3ConstantCache{T<:CompiledFloats,T2<:CompiledFloats}(::Type{T},::Type{T2})
  bconst1 = T(1.5)
  bconst2 = T(-0.5)
  c1 = T2(0.5)
  a21 = T(0.125)
  b1 = T(0.6666666666666666)
  b2 = T(0.8333333333333334)
  bbar1 = T(0.3333333333333333)
  bbar2 = T(0.4166666666666667)
  IRKN3ConstantCache(bconst1,bconst2,c1,a21,b1,b2,bbar1,bbar2)
end

function IRKN3ConstantCache(T::Type,T2::Type)
  bconst1 = T(3//2)
  bconst2 = T(-1//2)
  c1      = T2(1//2)
  a21     = T(1//8)
  b1      = T(2//3)
  b2      = T(5//6)
  bbar1   = T(1//3)
  bbar2   = T(5//12)
  IRKN3ConstantCache(bconst1,bconst2,c1,a21,b1,b2,bbar1,bbar2)
end

struct IRKN4ConstantCache{T,T2} <: OrdinaryDiffEqConstantCache
  bconst1::T
  bconst2::T
  c1::T2
  c2::T2
  a21::T
  # a31::T
  a32::T
  b1::T
  b2::T
  b3::T
  bbar1::T
  bbar2::T
  bbar3::T
end

Base.@pure function IRKN4ConstantCache{T<:CompiledFloats,T2<:CompiledFloats}(::Type{T},::Type{T2})
  bconst1 = T(1.5)
  bconst2 = T(-0.5)
  c1      = T2(0.25)
  c2      = T2(0.75)
  a21     = T(0.03125)
  # a31     = T(0)
  a32     = T(0.28125)
  b1      = T(1.0555555555555556)
  b2      = T(-0.16666666666666666)
  b3      = T(0.6111111111111112)
  bbar1   = T(-0.05555555555555555)
  bbar2   = T(0.2916666666666667)
  bbar3   = T(0.125)
  IRKN4ConstantCache(bconst1,bconst2,c1,c2,a21,a32,b1,b2,b3,bbar1,bbar2,bbar3)
end

function IRKN4ConstantCache(T::Type,T2::Type)
  bconst1 = T(3//2)
  bconst2 = T(-1//2)
  c1      = T2(1//4)
  c2      = T2(3//4)
  a21     = T(1//32)
  # a31     = T(0)
  a32     = T(9//32)
  b1      = T(19//18)
  b2      = T(-1//6)
  b3      = T(11//18)
  bbar1   = T(-1//18)
  bbar2   = T(7//24)
  bbar3   = T(1//8)
  IRKN4ConstantCache(bconst1,bconst2,c1,c2,a21,a32,b1,b2,b3,bbar1,bbar2,bbar3)
end

struct Nystrom5VelocityIndependentConstantCache{T,T2} <: OrdinaryDiffEqConstantCache
  c1::T2
  c2::T2
  a21::T
  a31::T
  a32::T
  a41::T
  a42::T
  a43::T
  bbar1::T
  bbar2::T
  bbar3::T
  b1::T
  b2::T
  b3::T
  b4::T
end

function Nystrom5VelocityIndependentConstantCache{T<:CompiledFloats,T2<:CompiledFloats}(::Type{T},::Type{T2})
  c1    = T2(0.2)
  c2    = T2(0.6666666666666666)
  # c3    = T2(1)
  a21   = T(0.02)
  a31   = T(-0.037037037037037035)
  a32   = T(0.25925925925925924)
  a41   = T(0.3)
  a42   = T(-0.05714285714285714)
  a43   = T(0.2571428571428571)
  bbar1 = T(0.041666666666666664)
  bbar2 = T(0.2976190476190476)
  bbar3 = T(0.16071428571428573)
  b1    = bbar1
  b2    = T(0.37202380952380953)
  b3    = T(0.48214285714285715)
  b4    = T(0.10416666666666667)
  Nystrom5VelocityIndependentConstantCache(c1, c2, a21, a31, a32, a41, a42, a43, bbar1, bbar2, bbar3, b1, b2, b3, b4)
end

function Nystrom5VelocityIndependentConstantCache(T::Type,T2::Type)
  c1    = T2(1//5)
  c2    = T2(2//3)
  # c3    = T2(1)
  a21   = T(1//50)
  a31   = T(-1//27)
  a32   = T(7//27)
  a41   = T(3//10)
  a42   = T(-2//35)
  a43   = T(9//35)
  bbar1 = T(14//336)
  bbar2 = T(100//336)
  bbar3 = T(54//336)
  b1    = bbar1
  b2    = T(125//336)
  b3    = T(162//336)
  b4    = T(35//336)
  Nystrom5VelocityIndependentConstantCache(c1, c2, a21, a31, a32, a41, a42, a43, bbar1, bbar2, bbar3, b1, b2, b3, b4)
end

struct DPRKN6ConstantCache{T,T2} <: OrdinaryDiffEqConstantCache
  c1::T2
  c2::T2
  c3::T2
  c4::T2
  c5::T2
  a21::T
  a31::T
  a32::T
  a41::T
  a42::T
  a43::T
  a51::T
  a52::T
  a53::T
  a54::T
  a61::T
  # a62::T
  a63::T
  a64::T
  a65::T
  b1::T
  # b2::T
  b3::T
  b4::T
  b5::T
  # b6::T
  bp1::T # bp denotes bprime
  # bp2::T
  bp3::T
  bp4::T
  bp5::T
  bp6::T
  btilde1::T
  btilde2::T
  btilde3::T
  btilde4::T
  btilde5::T
  # btilde6::T
  bptilde1::T
  # bptilde2::T
  bptilde3::T
  bptilde4::T
  bptilde5::T
  bptilde6::T
  r14::T
  r13::T
  r12::T
  r11::T
  r10::T
  r34::T
  r33::T
  r32::T
  r31::T
  r44::T
  r43::T
  r42::T
  r41::T
  r54::T
  r53::T
  r52::T
  r51::T
  r64::T
  r63::T
  r62::T
  r61::T
  rp14::T
  rp13::T
  rp12::T
  rp11::T
  rp10::T
  rp34::T
  rp33::T
  rp32::T
  rp31::T
  rp44::T
  rp43::T
  rp42::T
  rp41::T
  rp54::T
  rp53::T
  rp52::T
  rp51::T
  rp64::T
  rp63::T
  rp62::T
  rp61::T
end

Base.@pure function DPRKN6ConstantCache{T<:CompiledFloats,T2<:CompiledFloats}(::Type{T},::Type{T2})
  c1 = T2(0.12929590313670442)
  c2 = T2(0.25859180627340883)
  c3 = T2(0.67029708261548)
  c4 = T2(0.9)
  c5 = T2(1.0)
  a21 = T(0.008358715283968025)
  a31 = T(0.011144953711957367)
  a32 = T(0.022289907423914734)
  a41 = T(0.1454747428010918)
  a42 = T(-0.22986064052264749)
  a43 = T(0.3090349872029675)
  a51 = T(-0.20766826295078997)
  a52 = T(0.6863667842925143)
  a53 = T(-0.19954927787234925)
  a54 = T(0.12585075653062489)
  a61 = T(0.07811016144349478)
  a63 = T(0.2882917411897668)
  a64 = T(0.12242553717457041)
  a65 = T(0.011172560192168035)
  b1 = T(0.07811016144349478)
  b3 = T(0.2882917411897668)
  b4 = T(0.12242553717457041)
  b5 = T(0.011172560192168035)
  bp1 = T(0.07811016144349478)
  bp3 = T(0.3888434787059826)
  bp4 = T(0.3713207579288423)
  bp5 = T(0.11172560192168035)
  bp6 = T(0.05)
  btilde1 = T(-0.9807490989269235)
  btilde2 = T(2.406751371924452)
  btilde3 = T(-1.559600370364267)
  btilde4 = T(0.12242553717457041)
  btilde5 = T(0.011172560192168035)
  bptilde1 = T(0.023504273504273504)
  bptilde3 = T(-0.07242330719764424)
  bptilde4 = T(0.17543989844952962)
  bptilde5 = T(-0.2765208647561589)
  bptilde6 = T(0.15)
  r14  = T(0.21367521367521367)
  r13  = T(-0.9066951566951567)
  r12  = T(1.5161443494776827)
  r11  = T(-1.245014245014245)
  r10  = T(0.5)
  r34  = T(-0.6583937017967658)
  r33  = T(2.5384011164109506)
  r32  = T(-3.577652872294921)
  r31  = T(1.9859371988705032)
  r44  = T(1.5949081677229964)
  r43  = T(-5.164133553908094)
  r42  = T(5.547586751052329)
  r41  = T(-1.8559358276926614)
  r54  = T(-2.513826043237808)
  r53  = T(7.273336685101391)
  r52  = T(-6.926987319144182)
  r51  = T(2.178649237472767)
  r64  = T(1.3636363636363635)
  r63  = T(-3.7409090909090907)
  r62  = T(3.440909090909091)
  r61  = T(-1.0636363636363637)
  rp14 = T(1.2820512820512822)
  rp13 = T(-4.533475783475783)
  rp12 = T(6.064577397910731)
  rp11 = T(-3.735042735042735)
  rp10 = T(1)
  rp34 = T(-3.950362210780595)
  rp33 = T(12.692005582054751)
  rp32 = T(-14.310611489179683)
  rp31 = T(5.95781159661151)
  rp44 = T(9.56944900633798)
  rp43 = T(-25.820667769540467)
  rp42 = T(22.190347004209315)
  rp41 = T(-5.567807483077984)
  rp54 = T(-15.082956259426847)
  rp53 = T(36.366683425506956)
  rp52 = T(-27.707949276576727)
  rp51 = T(6.5359477124183005)
  rp64 = T(8.181818181818182)
  rp63 = T(-18.704545454545453)
  rp62 = T(13.763636363636364)
  rp61 = T(-3.190909090909091)
  DPRKN6ConstantCache(c1, c2, c3, c4, c5, a21, a31, a32, a41, a42, a43, a51,
                      a52, a53, a54, a61, a63, a64, a65, b1, b3, b4, b5, bp1,
                      bp3, bp4, bp5, bp6, btilde1, btilde2, btilde3, btilde4,
                      btilde5, bptilde1, bptilde3, bptilde4, bptilde5, bptilde6,
                      r14,r13,r12,r11,r10,r34,r33,r32,r31,r44,r43,r42,r41,r54,
                      r53,r52,r51,r64,r63,r62,r61,rp14,rp13,rp12,rp11,rp10,rp34,
                      rp33,rp32,rp31,rp44,rp43,rp42,rp41,rp54,rp53,rp52,rp51,
                      rp64,rp63,rp62,rp61)
end

function DPRKN6ConstantCache(T::Type,T2::Type)
  R        = sqrt(big(8581))
  c1       = T2((209-R)/900)
  c2       = T2((209-R)/450)
  c3       = T2((209+R)/450)
  c4       = T2(9//10)
  c5       = T2(1)
  a21      = T((26131-209R)/81_0000)
  a31      = T((26131-209R)/60_7500)
  a32      = T((26131-209R)/30_3750)
  a41      = T((980403512254+7781688431R)/116944_6992_1875)
  a42      = T(-(126288_4486208+153854_81287R)/116944_6992_1875)
  a43      = T((7166_233_891_441+786_945_632_99R)/46_777_879_687_500)
  a51      = T(-9(329260+3181R)/2704_0000)
  a52      = T(27(35129+3331R)/1352_0000)
  a53      = T(-27(554358343+31040327R)/46406048_0000)
  a54      = T(153(8555_257-67973R)/274592_0000)
  a61      = T(329//4212)
  # a62      = T(0)
  a63      = T((8411_9543+366_727R)/4096_22616)
  a64      = T((8411_9543-366_727R)/4096_22616)
  a65      = T(200//17901)
  b1       = T(329//4212)
  # b2       = T(0)
  b3       = a63
  b4       = a64
  b5       = T(200//17901)
  # b6       = T(0)
  bp1      = b1
  # bp2      = b2
  bp3      = T((389225579+96856R)/10_2405_6540)
  bp4      = T((389225579-96856R)/10_2405_6540)
  bp5      = T(2000//17901)
  bp6      = T(1//20)
  btilde1  = T(329//4212 - (2701+23R)/4563)
  btilde2  = T((9829+131R)/9126)
  btilde3  = T((8411_9543+366_727R)/4096_22616 - 5(1798+17R)/9126)
  btilde4  = b4
  btilde5  = b5
  # btilde6  = T(0)
  bptilde1 = T(329//4212 - 115//2106)
  # btildep2 = T(0)
  bptilde3 = T((389225579+96856R)/10_2405_6540 - (8411_9543+366_727R)/2560_14135)
  bptilde4 = T((389225579-96856R)/10_2405_6540 - (8411_9543-366_727R)/2560_14135)
  bptilde5 = T(2000//17901 - 6950//17901)
  bptilde6 = T(1//20 + 1//10)
  r14  = T(900//4212)
  r13  = T(-3819//4212)
  r12  = T(6386//4212)
  r11  = T(-5244//4212)
  r10  = T(2106//4212)
  r34  = T(1800*(5860823-152228R)/22529243880)
  r33  = T(-6*(4929647204 - 156109769R)/22529243880)
  r32  = T((22190560391 - 1109665151R)/22529243880)
  r31  = T(18*(81356461 + 25954829R)/22529243880)
  r44  = T(1800*(5860823+152228R)/22529243880)
  r43  = T(-6*(4929647204 + 156109769R)/22529243880)
  r42  = T((22190560391 + 1109665151R)/22529243880)
  r41  = T(18*(81356461 - 25954829R)/22529243880)
  r54  = T(-200*225//17901)
  r53  = T(200*651//17901)
  r52  = T(-200*620//17901)
  r51  = T(200*195//17901)
  r64  = T(15//11)
  r63  = T(-823//220)
  r62  = T(757//220)
  r61  = T(-117//110)
  rp14 = T(5400//4212)
  rp13 = T(-19095//4212)
  rp12 = T(25544//4212)
  rp11 = T(-15732//4212)
  rp10 = T(1)
  rp34 = T(5400*(5860823 - 152228R)/11264621940)
  rp33 = T(-15*(4929647204 - 156109769R)/11264621940)
  rp32 = T(2*(22190560391 - 1109665151R)/11264621940)
  rp31 = T(27*(81356461 + 25954829R)/11264621940)
  rp44 = T(5400*(5860823 + 152228R)/11264621940)
  rp43 = T(-15*(4929647204 + 156109769R)/11264621940)
  rp42 = T(2*(22190560391 + 1109665151R)/11264621940)
  rp41 = T(27*(81356461 - 25954829R)/11264621940)
  rp54 = T(-1000*270//17901)
  rp53 = T(1000*651//17901)
  rp52 = T(-1000*496//17901)
  rp51 = T(1000*117//17901)
  rp64 = T(1800//220)
  rp63 = T(-4115//220)
  rp62 = T(3028//220)
  rp61 = T(-702//220)
  DPRKN6ConstantCache(c1, c2, c3, c4, c5, a21, a31, a32, a41, a42, a43, a51,
                      a52, a53, a54, a61, a63, a64, a65, b1, b3, b4, b5, bp1,
                      bp3, bp4, bp5, bp6, btilde1, btilde2, btilde3, btilde4,
                      btilde5, bptilde1, bptilde3, bptilde4, bptilde5, bptilde6,
                      r14,r13,r12,r11,r10,r34,r33,r32,r31,r44,r43,r42,r41,r54,
                      r53,r52,r51,r64,r63,r62,r61,rp14,rp13,rp12,rp11,rp10,rp34,
                      rp33,rp32,rp31,rp44,rp43,rp42,rp41,rp54,rp53,rp52,rp51,
                      rp64,rp63,rp62,rp61)
end



struct DPRKN8ConstantCache{T,T2} <: OrdinaryDiffEqConstantCache
  c1::T2
  c2::T2
  c3::T2
  c4::T2
  c5::T2
  c6::T2
  c7::T2
  c8::T2
  a21::T
  a31::T
  a32::T
  a41::T
  a42::T
  a43::T
  a51::T
  a52::T
  a53::T
  a54::T
  a61::T
  a62::T
  a63::T
  a64::T
  a65::T
  a71::T
  a72::T
  a73::T
  a74::T
  a75::T
  a76::T
  a81::T
  a82::T
  a83::T
  a84::T
  a85::T
  a86::T
  a87::T
  a91::T
  # a92::T
  a93::T
  a94::T
  a95::T
  a96::T
  a97::T
  # a98::T
  b1::T
  # b2::T
  b3::T
  b4::T
  b5::T
  b6::T
  b7::T
  # b8::T
  # b9::T
  bp1::T
  # bp2::T
  bp3::T
  bp4::T
  bp5::T
  bp6::T
  bp7::T
  bp8::T
  # bp9::T
  btilde1::T
  # btilde2::T
  btilde3::T
  btilde4::T
  btilde5::T
  btilde6::T
  btilde7::T
  # btilde8::T
  # btilde9::T
  bptilde1::T
  # bptilde2::T
  bptilde3::T
  bptilde4::T
  bptilde5::T
  bptilde6::T
  bptilde7::T
  bptilde8::T
  bptilde9::T
end

function DPRKN8ConstantCache(T::Type,T2::Type)
  c1 = T2(1//20)
  c2 = T2(1//10)
  c3 = T2(3//10)
  c4 = T2(1//2)
  c5 = T2(7//10)
  c6 = T2(9//10)
  c7 = T2(1)
  c8 = T2(1)
  a21 = T(1//800)
  a31 = T(1//600)
  a32 = T(1//300)
  a41 = T(9//200)
  a42 = T(-9//100)
  a43 = T(9//100)
  a51 = T(-66701//197352)
  a52 = T(28325//32892)
  a53 = T(-2665//5482)
  a54 = T(2170//24669)
  a61 = T(2270_15747//30425_1000)
  a62 = T(-5489_7451//30425_100)
  a63 = T(12942_349//10141_700)
  a64 = T(-9499//304_251)
  a65 = T(539//9250)
  a71 = T(-11318_91597//9017_89000)
  a72 = T(4196_4921//1288_2700)
  a73 = T(-6663_147//3220_675)
  a74 = T(270_954//644_135)
  a75 = T(-108//5875)
  a76 = T(114//1645)
  a81 = T(138_369_59//3667458)
  a82 = T(-177_314_50//1833729)
  a83 = T(106_3919_505//15647_8208)
  a84 = T(-332_138_45//3911_9552)
  a85 = T(133_35//285_44)
  a86 = T(-705//14272)
  a87 = T(1645//57088)
  a91 = T(223//7938)
  # a92 = T(0)
  a93 = T(1175//8064)
  a94 = T(925//6048)
  a95 = T(41//448)
  a96 = T(925//14112)
  a97 = T(1175//72576)
  # a98 = T(0)
  b1 = T(223//7938)
  # b2 = T(0)
  b3 = T(1175//8064)
  b4 = T(925//6048)
  b5 = T(41//448)
  b6 = T(925//14112)
  b7 = T(1175//72576)
  # b8 = T(0)
  # b9 = T(0)
  bp1 = T(223//7938)
  # bp2 = T(0)
  bp3 = T(5875//36288)
  bp4 = T(4625//21168)
  bp5 = T(41//224)
  bp6 = T(4625//21168)
  bp7 = T(5875//36288)
  bp8 = T(223//7938)
  # bp9 = T(0)
  btilde1 = T(223//7938 - 7987_313//10994_1300)
  # btilde2 = T(0)
  btilde3 = T(1175//8064 - 1610_737//4467_4560)
  btilde4 = T(925//6048 - 10023_263//3350_5920)
  btilde5 = T(41//448 + 497_221//1240_9600)
  btilde6 = T(925//14112 - 1002_3263//7818_0480)
  btilde7 = T(1175//72576 - 1610_737//40207_1040)
  # btilde8 = T(0)
  # btilde9 = T(0)
  bptilde1 = T(223//7938 - 7987_313//10994_1300)
  # bptilde2 = T(0)
  bptilde3 = T(5875//36288 - 1610_737//4020_7104)
  bptilde4 = T(4625//21168 - 1002_3263//2345_4144)
  bptilde5 = T(41//224 + 497_221//620_4800)
  bptilde6 = T(4625//21168 - 1002_3263//2345_4144)
  bptilde7 = T(5875//36288 - 1610_737//40207_104)
  bptilde8 = T(223//7938 + 4251_941//5497_0650)
  bptilde9 = T(-3//20)
  DPRKN8ConstantCache(c1, c2, c3, c4, c5, c6, c7, c8, a21, a31, a32, a41, a42, a43, a51, a52, a53, a54, a61, a62, a63, a64, a65, a71, a72, a73, a74, a75, a76, a81, a82, a83, a84, a85, a86, a87, a91, a93, a94, a95, a96, a97, b1, b3, b4, b5, b6, b7, bp1, bp3, bp4, bp5, bp6, bp7, bp8, btilde1, btilde3, btilde4, btilde5, btilde6, btilde7, bptilde1, bptilde3, bptilde4, bptilde5, bptilde6, bptilde7, bptilde8, bptilde9)
end

Base.@pure function DPRKN8ConstantCache{T<:CompiledFloats,T2<:CompiledFloats}(::Type{T},::Type{T2})
  DPRKN8ConstantCache(
  T2(0.05),
  T2(0.1),
  T2(0.3),
  T2(0.5),
  T2(0.7),
  T2(0.9),
  T2(1.0),
  T2(1.0),
  T(0.00125),
  T(0.0016666666666666668),
  T(0.0033333333333333335),
  T(0.045),
  T(-0.09),
  T(0.09),
  T(-0.3379798532571243),
  T(0.8611516478170984),
  T(-0.48613644655235316),
  T(0.0879646519923791),
  T(0.7461462641043086),
  T(-1.804347430246737),
  T(1.2761518285888953),
  T(-0.031220932716737166),
  T(0.05827027027027027),
  T(-1.2551623461807584),
  T(3.257463187064823),
  T(-2.068866619575089),
  T(0.4206478455603251),
  T(-0.018382978723404254),
  T(0.06930091185410335),
  T(3.772901830095941),
  T(-9.669613121677195),
  T(6.7991544547851674),
  T(-0.8490343907823893),
  T(0.4671734865470852),
  T(-0.04939742152466368),
  T(0.028815162556053812),
  T(0.028092718568909044),
  T(0.1457093253968254),
  T(0.1529431216931217),
  T(0.09151785714285714),
  T(0.06554705215419501),
  T(0.01618992504409171),
  T(0.028092718568909044),
  T(0.1457093253968254),
  T(0.1529431216931217),
  T(0.09151785714285714),
  T(0.06554705215419501),
  T(0.01618992504409171),
  T(0.028092718568909044),
  T(0.1618992504409171),
  T(0.2184901738473167),
  T(0.18303571428571427),
  T(0.2184901738473167),
  T(0.1618992504409171),
  T(0.028092718568909044),
  T(-0.044557986852984274),
  T(0.10965442077101599),
  T(-0.14620589436135464),
  T(0.1315853049252192),
  T(-0.06265966901200913),
  T(0.012183824530112887),
  T(-0.044557986852984274),
  T(0.12183824530112887),
  T(-0.2088655633733638),
  T(0.2631706098504384),
  T(-0.2088655633733638),
  T(0.12183824530112887),
  T(0.10544201314701572),
  T(-0.15))
end