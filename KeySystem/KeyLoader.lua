([[This file was protected with MoonSec V3]]):gsub(".+", function(a)
	_TknHrxtHdHuu = a
end)
return (function(t, ...)
	local s
	local a
	local n
	local d
	local g
	local h
	local e = 24915
	local f = 0
	local k = {}
	while f < 256 do
		f = f + 1
		while f < 0x125 and e % 0x4382 < 0x21c1 do
			f = f + 1
			e = (e - 717) % 42878
			local _ = f + e
			if (e % 0x1e36) <= 0xf1b then
				e = (e - 0x5b) % 0x7481
				while f < 0x131 and e % 0xfe0 < 0x7f0 do
					f = f + 1
					e = (e - 523) % 14217
					local n = f + e
					if (e % 0xdac) < 0x6d6 then
						e = (e * 0x2a9) % 0x975a
						local e = 8353
						if not k[e] then
							k[e] = 0x1
							g = (not g) and _ENV or g
						end
					elseif e % 2 ~= 0 then
						e = (e + 0x269) % 0x7a03
						local e = 42771
						if not k[e] then
							k[e] = 0x1
							s = tonumber
						end
					else
						e = (e * 0x276) % 0x4e5a
						f = f + 1
						local e = 45447
						if not k[e] then
							k[e] = 0x1
							g = getfenv and getfenv()
						end
					end
				end
			elseif e % 2 ~= 0 then
				e = (e * 0x1bc) % 0xb0b9
				while f < 0x398 and e % 0x32f6 < 0x197b do
					f = f + 1
					e = (e + 419) % 17711
					local _ = f + e
					if (e % 0x404c) >= 0x2026 then
						e = (e - 0x37a) % 0xa129
						local e = 88379
						if not k[e] then
							k[e] = 0x1
							d =
								"\4\8\116\111\110\117\109\98\101\114\74\110\86\72\120\110\122\89\0\6\115\116\114\105\110\103\4\99\104\97\114\98\74\76\119\98\76\83\113\0\6\115\116\114\105\110\103\3\115\117\98\97\98\120\106\90\106\77\75\0\6\115\116\114\105\110\103\4\98\121\116\101\73\120\111\82\99\111\117\68\0\5\116\97\98\108\101\6\99\111\110\99\97\116\101\72\104\112\117\107\109\111\0\5\116\97\98\108\101\6\105\110\115\101\114\116\105\120\77\119\82\90\104\76\5"
						end
					elseif e % 2 ~= 0 then
						e = (e * 0x3f3) % 0x7a47
						local e = 33749
						if not k[e] then
							k[e] = 0x1
							n = function(n)
								local e = 0x01
								local function k(f)
									e = e + f
									return n:sub(e - f, e - 0x01)
								end
								while true do
									local f = k(0x01)
									if f == "\5" then
										break
									end
									local e = a.byte(k(0x01))
									local e = k(e)
									if f == "\2" then
										e = h.JnVHxnzY(e)
									elseif f == "\3" then
										e = e ~= "\0"
									elseif f == "\6" then
										g[e] = function(e, f)
											return t(8, nil, t, f, e)
										end
									elseif f == "\4" then
										e = g[e]
									elseif f == "\0" then
										e = g[e][k(a.byte(k(0x01)))]
									end
									local f = k(0x08)
									h[f] = e
								end
							end
						end
					else
						e = (e - 0x1df) % 0xb744
						f = f + 1
						local e = 59660
						if not k[e] then
							k[e] = 0x1
						end
					end
				end
			else
				e = (e + 0xab) % 0x90c3
				f = f + 1
				while f < 0x3a9 and e % 0x261e < 0x130f do
					f = f + 1
					e = (e - 745) % 42695
					local g = f + e
					if (e % 0x1a7e) <= 0xd3f then
						e = (e - 0x2ca) % 0x5c5b
						local e = 36224
						if not k[e] then
							k[e] = 0x1
							h = {}
						end
					elseif e % 2 ~= 0 then
						e = (e + 0x137) % 0x23e9
						local e = 73403
						if not k[e] then
							k[e] = 0x1
						end
					else
						e = (e - 0x1a0) % 0x5b3e
						f = f + 1
						local e = 35673
						if not k[e] then
							k[e] = 0x1
							a = string
						end
					end
				end
			end
		end
		e = (e * 215) % 32650
	end
	n(d)
	local f = {}
	for e = 0x0, 0xff do
		local k = h.bJLwbLSq(e)
		f[e] = k
		f[k] = e
	end
	local function _(e)
		return f[e]
	end
	local _ = function(t, n)
		local d, k = 0x01, 0x10
		local f = { {}, {}, {} }
		local g = -0x01
		local e = 0x01
		local a = t
		while true do
			f[0x03][h.abxjZjMK(
				n,
				e,
				(function()
					e = d + e
					return e - 0x01
				end)()
			)] = (
				function()
					g = g + 0x01
					return g
				end
			)()
			if g == 0x0f then
				g = ""
				k = 0x000
				break
			end
		end
		local g = #n
		while e < g + 0x01 do
			f[0x02][k] = h.abxjZjMK(
				n,
				e,
				(function()
					e = d + e
					return e - 0x01
				end)()
			)
			k = k + 0x01
			if k % 0x02 == 0x00 then
				k = 0x00
				h.ixMwRZhL(
					f[0x01],
					(_((((f[0x03][f[0x02][0x00]] or 0x00) * 0x10) + (f[0x03][f[0x02][0x01]] or 0x00) + a) % 0x100))
				)
				a = t + a
			end
		end
		return h.eHhpukmo(f[0x01])
	end
	n(
		_(
			198,
			".PBahbI;1FmCJcL&aJ;1LaB6bbFhlaPFbhF;chPJI;;BI1mP5m1cCaccBabhmLchwPLIP&1Fqaa1;J11CcBBaBImIhF&lFha;JcCBJhL1PJP&JhaI;bIF4&ma1FIJcBBaBI1chc&a;jLhCCPLJBbI9FmL;hJILm_&bPmbhF;;hC:P;bF1cJ1aCI&FCJaBUa1;FmImycChC1BCcBBIPmccLAJB11IF;FBJcaCILmmBJhC;amb&PBLIb1C1hJPBFIBmBcCPXb&FC&bdmbmmmCI&cLmBb1&J;tbbaCbLm&&bbFbcB%&cJP;1PCC&IIBmcLBPbhJ1cCmvhJLYF;;C6Lbb1FCJPPBhL;mFPcaJf&JIamBc1P1b&F&J&_&;;1qL;PLLJB;FIJF_IbLC;&bBaIhI&mJPhcLPF1BCC&mhLmBLaBIaLFBF&cbc(>m;ICBP&hI;&ch&BbPb;1&11JaaaIcmPOFhIFImBLFB3Ib1F;mCIPcbIFyJLBhbF1&&BQFI#1}cFmILPhc1BCLBCb&mbLCPba;1;CaF1caac;bm&MBII1cL}L1h11JJB1mJbaaIcmFAaah;bcq&chh;IF1;JCFBPbmF;chMc;I1&&TPBIaFFLbPbLBPc11J+&LIPChc1&aa&IFJ2PTcht&;1CPLcbLFJCh&IBJICJb&bJI{PIFmhcLbJImFLOFB6hcFPLIC1&hIPFhcas1;Im&&1Bhbc;&cIP&LhPc1FccaC;h1&JmBFb;FaIBFC2I;FmF&C&LaFFaLBPmL9PF1IcCPF;11LLB>IIBIabLF;6b1hFLccBBb;mBchP1cJPb1h&mPCbaC{LBPJaI1IbmFb&LaC;I&aE_aa;BC1&BBMb;hJ1I&!B11bccH;B;I;CC&Jam#haLmFLBam1IChLaPhh&FQchCJ&IIfFFL&a&1PCI&CafhhCP;hmLPFbPmCcIh;;aF;LC&cbmBJI1cYp1hI1a&mB1;{;LLa&&bv;hb1Fh&Cah;4mCBab;FJcB&CP&I&FF1hCLBCIBCLLJB11PCaLPPII1aJ;Ic&PL11JI&JBZI&m;cbBF&hBLFmc1ac;1C&&LYJhh1aJbmJLIbb1c!;BLIJmmJF2hbC;&IhFLumhPCPLmPPh&;JJPPBaFPJbIJB&m;B1bLa&bIY1&mhl;chZL;LChRaIGFPCCwhBF;(Fm1JJIaD;PJ1PmbF;ImCL1hA1Phh;LL&BI;FcFLCa;;aC&&PBa&JaImhcLbCIBJCQPBhh1CPLIChLcbccb{&BF;JCmL;ahb&aBIJc1nL11Fh&&PbbB;cJCPPLc"
		)
	)
	n(
		_(
			26,
			"3LJP8Ah#xZ vSg4K4hgJJAeSKOSgvxZ#L hRA#PAL4yx48 L x#xxx#JPKSx K;rgZvg 4Z8hLPvLgPxKh4Lv#SAPKJZ# hJPKJ Lhg#v8vAxhhJA#A#8xvx 8K#g4SJZKx hZ4gPvLA544PS4 4xPhLhgJZP LZK #ShhvAxKxxhJ4APJLiK#KlS4xhZ8hZASPgtS4K48#xhhvPxvxWAKPgPJUAK4gLvx xx## PhPgp#4v4Av4 #PSJAA 8KPPJ jvK8ZvvY# ZPA#AZJ8TJEgxJhxSLZL#K#_ASPALg4vSP S ##PL8KZL#f49Pgh4hvA 4hSxhKx4JP8LAKK4hS  #ZJ#LP PxKK!SS SP LxGJC=vhpPPL q 4Z#DSA 8xShP8vPZJA4Z4vS  LxPxh8x4xg%JAs84SSP vZZhghvPxP K#4A48 K8xJKx)hx8AP}LS4Lv4 v vZh#WhLAJSJ  KggASJ LxA#SP8LS9SL8K4ShvSx L4txA#PLJ &8x#S4v  PxZ#JPx8h*xK4gLg4Z#xJLv"
		)
	)
	local e = (
		-h.mIJSVduF
		+ (function()
			local g, k = h.yeUaXxdW, h.qlvHCnDB;
			(function(g, f, k, e)
				f(k(f, f, e, e and f), e(k, e, f, g), e(k, f, g, f and e) and g(g and e, e, e, e), e(e and k, g, k, f))
			end)(function(f, n, e, a)
				if g > h.WnVOUVcM then
					return e
				end
				g = g + h.qlvHCnDB
				k = (k * h.ZWrHDvGe) % h.EpXPkVV_
				if (k % h.mgYGjHOB) >= h.bgypdFjA then
					k = (k + h.z_MEWZWC) % h.GIiDZpBO
					return e
				else
					return e(
						f(f, n and e, a, e),
						n(f, f, f, f and e) and e(f, f, a, f),
						e(e, f and f, a, f),
						a(a, n, e, e)
					)
				end
				return e(e(n, e, a and e, a), e(n and e, f, e, e and f), n(e and e, e, f, n), n(n, a, f and n, f))
			end, function(e, a, n, f)
				if g > h.IqlGcilo then
					return n
				end
				g = g + h.qlvHCnDB
				k = (k - h.fwrkhobr) % h.js_vxjGO
				if (k % h.EKAGuDqn) <= h.RquipADr then
					return e(e(a and a, e, f and f, n and a), a(n, f and n, n, e), f(a, f, e, e), e(f, e, n, n))
				else
					return a
				end
				return f
			end, function(a, f, n, e)
				if g > h.PjqzXrEA then
					return a
				end
				g = g + h.qlvHCnDB
				k = (k - h.iVUpTyEC) % h.adzLYVaK
				if (k % h.PKGpMjPo) <= h.e_kwgOeW then
					return e
				else
					return e(
						e(n, a, f and a, e),
						f(f, e, e, e),
						n(n, n, e, e) and e(a, f, f, e),
						n(a and e, f, n and a, e)
					)
				end
				return a(f(f, n, n, a), n(e and f, e, e, e), e(e, n, f and f, a), e(e, e, f and a, n))
			end, function(f, e, a, n)
				if g > h.JtazHnxt then
					return f
				end
				g = g + h.qlvHCnDB
				k = (k - h.YPWxkxpX) % h.fElTkgyo
				if (k % h._xbCUEbx) <= h.jnLTPUuk then
					k = (k * h.vJDuREOj) % h.dcrdcKhw
					return n(f(e, e, a, f), e(e, f, f and e, f) and f(n, e, n, n), a(f, f, n, e), f(a, f, e, e and a))
				else
					return e
				end
				return e
			end)
			return k
		end)()
	)
	local ne = getfenv or function()
		return _ENV
	end
	local l = h.YqXtKSlQ or h.qOkdUQnJ
	local y = h.qlvHCnDB
	local n = h.MqpQRwkm
	local g = h.kayBCcxv
	local d = h.OSxTnXzA
	local function ee(o, ...)
		local _ = _(
			e,
			"T?)Pf_x.gZka:N/W.:f:W)ZgPW/fgkPYNx.:k)?kk/?_akxtMxk:_)Ng1Ngf/:ZfPxN:g).fPPNkg/:).)!:a)_gf??Pa:_/Wak/Pf/ZZ)PN/WZP:g.a?)ag_/fZma:P_WskkZ):W.kxPW/PZkP_/?gx:nxghka0_xf??ka?x)Zxff/Lgx):))NZg))gNP./?Nan.??g_uWxZkfU/x/fgaNkgN)f:k.>_g)aNfx:?P:xfNKZ:{_?/)k?_x/ZZxN).N?::)xgxN?P:Px/oka?xkZkf_/fgkPF)Z/_gfPfN.g))?x)l/k:_)WgWeaP_/W?kkf_W?Zx:W/P)W)P:x.)?gW/PNk_fkWuZxP:/)xgkP?f.:)_:xx:?)W/:N.)?/:PW.Z:f)/gg/Pf_k:?xx:/.g?ga/xf_P?N:xxa?fa:WnZaPk/%gxg1P.WnZ),xNZgga._:S)kgf/WfZkZZ)xgNP)Ng./)f:k.D)kW:xf??k/_fWk/xa_fWq.ka)kWPZNff.g)P:)xg+/B.aa.x0aZ._.??fe/ggkPiNx:Pg/P./_?x:xx*}xk:ZPx:?)k_fNWg.g_?WxZ:PN/)?::xxx-:a)ZaxN?*aZx):ZP/Wggg)/Nfa:g?)ZN..Z)k:N.Z?gaffkF/kP_x,?kfPaW)gaPkN_Z?aWW/kPfZ/WZ_Pa??)NZxPW/>gx):f)NZg.PxNN?):x_:,)kgZz__WNkafNW/k?fN/:gg1NNWg))aNfPaal_NWkklfxPWW_kkfP/ZZg?./ag_:f.f{/af_k__/WZg_a2aa)PO/akZf_W?Zx:Zk?f./NZPPZNW?_P.kcfW/kZ9Px)_/WgZP_NZ_N)WN).a)fgaycawfkWiZxZ^faW:ZkPZ:Ng_)Z/>.a).::0xkk_dWxZ:ffWag/PfNkNRg/)N/Xg:)NN?_^?::a.f/NkNx.:)kf_PW_ZkNfgw?/:fxkxy)_:Wxa?:a.xP&gf)W?g:P)NgaWZ))NNgg_)/a)..?.:)x/k?fx/:Z)PgN/gfZf?n..?::)xg4/af_ki4kxf/?ZZgP//fN/ZgPW/Wf))/N.gX?Wg3.NcN:_?g /ax_ZhfZaPWWxgNP)ZfZ?)ZNk.fN)k_xN?PagfPWaZWu)N/x?Nxg.)p:xx:_P)NN).P?.a?xk4_k_PaW.k/PWg)PZ::.)?g?xa:x)+gk/_fWkkVfx/:Z)PgN/gf)kN8.x?::)?):._:3)kgkf_ZF:affW/WZPffaWZ7PPN.gf)Z:..x))__Wkk!fx/:Z)Pg)f:f):Nf.x?::)k/.N)):/D)k:f:W)Zggf_PWxZfPa//)fN?x/?fakaf.N??a.xx/.a)_UWWPg/Pg))g:/Nkg:)WNP_/WZZkWW.??xa:x)Ggk/.fxNNx.N)0:xx:xx?Z:06xk/_<WxZ:ZxfN=xkgNagO)x::.)?gW/:afka)_/W:k)fgP?W:ZWfPW?..P.W?)9N?xk?oaxk:xPw:a)_N%gk.)gWakxf:/NZ?::.g?xa:x)_NW.Z.xZ?)af_?9fPk/Pgf)kNr:kg_PxNf.Paxk*ySkxf:f,WNkPfgkkkPfa/:Z)P./-ggWZgdf)?):?xx?)xffNWWk)faWfx_W_/xg?))g/PN/)gW)k:f.:)!:/xgy)akxP3ZkPf.>faxg?)?::)f?/ag_aa:gx_?;?Z.fZW)gkCgk?./)NN).///_.f?Z?.?)/._afaf:_)NN).g?/:fxk?9/gZ:pfkaf/WfZkg/_aWZPPNg./)f:k.t?xNfk)mZxx.).WgaZ.kf.3../Agg)kNv.xxNP.:Z.)axxgJjkxf:f:/?k:fg/Wkg?g/?gk)Z/f.N)ZN)%ga?_)WgZ/gk_:W?kPf?gfP.:/.f?k?4N)xN?_aNxx?Pax_fWak/Px/Nkxfg.:)N:xx:?)i,:Px_B/a_xg/Wk.far)ZNfZ//)gNP.)?ga/afxa?fakx_?=kWW=Z/Pk/4gx.PP./:.?)ZN:gx?WaWx.kk_)WfZkf5PZW_k:PNgEP#:k.H?xW/N?.k?)aZx:/Pa__g(?kk??g_:fxZ}Wa__av?W.WP_NS?kgfNW)ZgP/?.g:P_Nx.:))iaNNgn)ZN)}ga._)WgZ/gafWpf.Zff/aZfP)/x.W)/xg?Pa)_gW/WKaZ_?Wkg.f.5?P2W?.k)v:xkWg?)_:/.&KW:f_aa:kPf:h?_fC)kt_g/:a_gR)P:.._)v:_x_?La:}/aNP:Wxgx):N):xZPP?::._)gkWx.?Z:P_Z5gkPfaN.Z._?//ZPPPN/gka/x/wgk/_ffkv?kk_0Wakxf_NxZPP.N/Z8:fx/9/af_k_k/Wak_xWNax/xa)P{Nx.:Zf)k/x._)NNPxa)zg:).:Nkk_ZW/kkfWa?g/)W/?gP)::W.?)_g.f_?Pa/_gW.kZP_NaZa )/fZPP_Nk?fWN_/=fkkk.Pa/gg_P.Na.ZWkNf._/::xxY^PZO)kakZ)x)??axx)afZNfWW)Zaffa_f_PxN?.)N/gNP)NW.k?f::.Q?/ag_)jkaP_ZWPZ._f3::kxZ?::gxZvNxxP)W/kN_x:n_ZPx/_gkPxkx?,a__kC1kx.NWfZNP//fgkg.fgNNZ)PaxW?fakxu xk:_))xN/fx//ZyPxN:NKgZPaNZ?::/xx#:a)k:xP?:a/fgN.kgfa/WZ:f?NWg/Pkx/?Wag_/Ff/NaWx)UaafPaWPk_fW/_Zf)WN.?k:gxfqka=kaf_/ZakfWWgkPf_WfkJNfZ??/:fxk_N)_:a.5WaaP_.WZZP_kW/Zafx/_Z.?)NZ.k)z:..x/W:gx/?)f.:aN_))ZN_C.xa?a_?/:ZxgM/afkg._?PkB_.? a)/xZkPSNx.:._)Z/f.Z?/g8_???:a?g/kaPfaWfZaflgf)::/.f?k).:..Z?._k;_kffkW{NZka_KWxZPP.//)):kx:?)agkk.P??aWWgkZf)/gg/ZP)//aZf?f/fZyP)k:x/Wg:a.?kPfg//ZfPk/Igx?:??.k)g:fxk?Go?:?.a:gk?xN8NaffaWZPPNg./)f:k.1Nx?xk)DkaW_fWkk&gW_ZWPZWfPNgZ:P?/fgWP):Zg4?Z:gxP?Wf/W:ZgP//fNnZWffW-.Z)NN..a))Nf*gag_)WgZ/Zf_W=f_x)./.k?//a:.WP):aw/a/_gW/kfgN_gWaZWfNNaZPP.//gZP_Nk?f:)_/wfkkkf_a?fax)aWNknfZW)_Z:/.k?ga/xf_P?/:Z.rUPax_?WZP:/:gx):N)::Z_)Z:W./vZ:?.f?/a._.WWf)/Ng:P)Ng:PZ))aN)g))?:xykag_fWkkqg:__W/ZN)PW:ZPfP/kgW:fx/o/af_kf/?_:b_aW/a./xZ)PbNx.:.x)N/xgg=N:ZgC??_fW:Z/ff/kN_kf_?/W)Z:/.f?k:Jxx3:a)ZgBlaAfkWVZxg/f.WaZPfg:Zg/?ZN:.P)W::7xa)_SWxZ:Z_fNWkZZPNWfgaP^.f?:a/xfXkWZ:fx)??fkW_ZfPk/<NZk?f)/ggNPxN/?)N?_:S)kg:U_x?)k?_ZWWZ.f:/.ggYfZWf_WfZPPN/.g:)NNZ.x?W:fxkYWakx?N)g1?::)xg_a)P:g.f?Za?xfUkZW_gg:PxNx.:))SaNPg))/:_.gk/_gWgZ/ffPgWWkgfZ/PZfNU.N?k:(xxfW?kaNx?{WxkPaWaa_/fgW)/Nf.kg.)a/L.Z?N::.kk:_ZWxZ:f)P:WPk:f/::g.)/N.gfaWxf&kay_xW:k)kf)/Z_aZaP/x/aZ/ff#/+Pxax.__aN))xxPKWWNkf)W)g:P)NgN_g_PP/f_:)aNffa?xaNxxXffgWxZ)PgN/:NZ.P?NNg?b/:Z.<?Z:x7?t)NaafgNxxfnxZxWNgg.)):gx/xb)P:/.?))a.xk?)kN_NW_PgW_g))g:/a.gZPnNW):?P:xx):fak_?HZa5f.kgZZPZWPf!)/N?gf?N.W)_k:_kWxZ:f)PPWPkN)N/_gZfMNag.):x_9ka!_xW:k)fg?/NfP:/?gx):N)kk?W:fxk?rax_:/)vWg/Wxk_fR/xg:gxPNWxZg)?/)..):N)xN?)__WkkRfx/:Z)PgOW:f):Nk.x?::)kW.N)g:)x??Pg/x? fk)/xZkP{Nx.:.x)N/xggV/N)x.?k:_xgWWaxfWW/ZZ__gfPf:/.f?k?P:ag8WP::.)?xaP_)Maa!f.gkPfNf.k)}?x:Ngf?N::.gk:_xWxZ:f)P0WNk+P//_Zg:/.k?ga/xf_x?W:_.1y/kZ_Uc.P:/agx):N):fgN).:a.:}x:gxP)?aPxxZ:fa/xg:P))gNWgg)/NZgf)Pk/xN?f:gW:k?fx/:Z)Z?/9g/)kNn.xxZP?NNg??ZZWx/?ka?xfZkf)/fgkPu)a:&gaP_.K?/akxMyxWf:?xk6.a/_ZW/kkPN//)kN_.f?k:4ak.?)k::f{>_a:W)ZaP:/)gggP?g/PgNWgx/?_ag_/!fWZ:_xkZ/f:/gg/Pf)./WZaPWN.xf)P:_g{?__.f/_kxx.P.Wga:g:_)//Z.g?/:fN:.))/aN._?aaPxgzPkf)5aax?CZa?__wdkMfkW?ZfPZ/___Wkkzfx/:Z)PgNx:P):/x.x?::)ag.x?_:g.f?_aZ?)N/kk_Z+)_A)?/?Za?a/.g.)/:_.PkN_)WgZ/ff/kZ,xk?:gfPZ:/.f?klNN_g?)_aNft?Za/xfs_kk?P:aZkPNNNga:g.k?)ag_/fZ)):jx)WNka_x/?ZZPNWfgWPa/b?k:ZxfGkabZa_N?_a?_:WagN_fWWZgP..k)f:fxk?zK?:?.a/kaNx:Z:__/xg:P)?a/NZcPZ/)xZ)?NP.N?P:)_N-_Z?_? akgfN/NZgff.g).:)xgh/WN:.x?<Na?PfKNa)_gWZZ/Ngg_)):gx/xZ{PaBx.?haxx?{:ka/aZ=PxN:g))g:/Z:_k:)xk&:a)_gfr?Pax_fZgPW/)gg)/f)NWZ.:g.P?)ag_/fk?ZaPxa Wk.f:gWPfNkg-)x::W)x/W/x.Uka)xkW:k)fgP?W:kZfWWZZ?W)N?gNPZN:P>5?:?.a:gZk_N=gka/gZfP)Ng./.xPPNP./?}:.g!))_xWak0fx/:/kPZN/gf)kN6.x?:Wakg?EaW_kE<kxZg_P??kN_ZW/.Wfg/Gg.Pk.y?aakxn&xW:a/_Z?.kZ_:EPPg/_g))g:/:.gZP)Nk_a)fa:xP?xfaWSZxP:/)gg)/?gak)?:xx:?)ag_/gfZfgWWgagf)/gg/kxP:Wgg.PW/_.NP):Nx//kg_)aNP.k)_:gxk??aNxfOfa?_.W:ZafP/x_/?_kgf/Wf/)kW_gW_k:f./:Zg)aN:_.)g:axW?::?_Wz/ak/NPxkg?ag/z?.Pfx_a:Pxg3/af_kcMN/NaP)Zkfx/fgkP!?:/aZHP:af._?N:_m.k:_)WgZ/ff/k.0._N/gZ)g:/.f.3)_:Zg})?:kP&kxf/WqZxP:)/W?Z:PZ.a)6:xx:?)ag_/Pk/k_?WxZ:f)/gg/PfWk:t)gN?.)?ga/kN..??aNx?kf_?//ZfPkPYW)gNfaNNZ+EaNW.ZagxxI)kgf/fgWak)PZW?Z_f:/.ZPPg.))Pa:x)LgWfaNxxR:gk__%fZNf?WgZPPW/f?/:kxgz/afkNx_?Pa_Pf!.kkfgg:PgNx.:))?fN.g))_k:._?P:?Wkkkff/kZUgkf//PZxf?/f.aP):a.k?_N?- kkfkW<Zxgff./ZZ)PZ/:)?:xx:?)ag_/Afa)ZjW._fxYxN.Zg_Z)xxx_:N.)?ga/xfnkargNP:kffW//ZfPk)PW_ZkfxNNg:Pgx:):ax_:p)?ka(x:WaaP_ZW?kxf?/)_/WZZWf.//ZfP//?ga)aNP.W?::xxgGWaN_:N?.x?::)xg&/afxkf9k.f:W)ZgP//fkkZ:?x./)g:gx/?fW:N)x.?ka_xrkhfN/kZiPx))W?Zxf):.g/PZN).?aP_gW/kffkWmZxxg))gZ)/Nf.k)!:xx:PxWgx,t.kk_SWx/_a_)ZZjf)Nkg=)x?k/.g_)v:Z.:BPaaxN?.kN_:W.ZWgNg/):N).gg_:fxk?Fa._:d)kgx>6fZkf3/x/gP)Ng./Px::.L?xa::_0gk/_f)pkxfx/:Z)P/N/g_)kWZ.x)-*Pxg!/afxD!Ck.f:W)fkP//fgkP?Nx.:)):gOf?fakxQFxk:_PWgZ//?/kZ?PxN:g))Z:/.f).:*xgo:a)_gHXkf_:W)ZxPW/)ax)/Nf.kfSNWx:?_agx?pf___tlgkgf)/:g/g.Nkg2)xN/.N?g:Pxf.:a3_xW::)x?//ZZPk/_gxZfN)Zgx_:fxW?baa_::gkgxLaNZkfx/xW/P)Ng./ff/P.-?:a:xgOggq_f?ka?fxW)Z)P/N/WW)kNO..?::_xg?faf_:<AaxxPW)ZkP/kkgkPPNxg/)_:g.??f/gxwYxk:.)6aZ/f./kZPPxg.g)Pkxy.f?/:oaZG:a)_g?I/WfkW_Zxk//)gg)/Wfgf)p:ax:?.ag:xjf:k_.Wxk?f)/Ng/N/NkZ)).::.g?gPLxfGkaX.x4xk)f///ZkPka)gxf:NP.g)f:f.b?MP?_:1):ff/W.Zkfx/xg/P)/gZN)f::.m:Ka:x_%ga/.aWkk?fxx_Z)PkN/ZffxN3.x?:N?xg;Waf_k?akxfNW)ZgP//fgkf4//.:)):g.g?faaxB?ga:_)WZZ/kf/kZ%PxW:ZN)g:W.f?a:1k:U::fxfW/k.fk_NZxP:/)ggWNNf.a)J:Zx:?fag.B?Nkk_)Wx0gf)/gg/_fN/gd)g::.f?gxZxf?:a/_xWWk)xx//ZfPk/GZa):Nf.g)6:fx:?%:gxN1)kaf/xcZkf,/xk:PNNgg?)f:N.O:?a:.f?ak/_gWk/)fx/:Z)PgD0gf)NN .g?::fxg)q:N_kzfkxagW)ZgP/,fZDPXNk.:)x:g?Z?f::.adxa?_)P Z/ff/kZ0PaN:gx)gN%.f?::(.g?)a)_NW/?7fkWKZx_:WaggPPNf.W)M.?x:)fak_/{kkkkaWxZ:f)/gaCPfNWg6)g::.f?gN!.Nlkax_xxgk)fg//af_x/rg:):Ng.g:Z:f.:?aaxxP!)fWf/WfZkf1W)g:PgNgg+)f::.p)g:;x)<Wk/:UWkk*fx2:Z:Pg/_gfP?N1)??:Nf.Z^/a:_kf)kxf:W)ZgxR/fZ?P+Ng.:)f:ggK)Nakxg&x?g_)WgZ/xfW_Z}P/N:gk)g.Z.f):NPxx?_a)..W/kffkWHZ:P:/kggP6Nf.:)5Ngx/?):?_/.7kk_AWxa:fZ/gZ.Pf/PgIN?::gfP?a/x/Kk_g_xW:k)fg?>ZffP/wgg):Nf.gPyNNxk?kax:g3)kgf/?fZ/fdW{g:P:Ng)Z)fN:.)?x:.x)fkk/_fWkkj_W/:Z:Pg/lgf):Nrgg)k:).Pi/)Q_ki,kxx:z6ZgfZ/fZ_P g?.:Pf/)x/)Cak.Wwxk:_)Wg:EffW_Z<PgN:gf)g/;gN?k::xx.ga)_gW/:ffNW2k)P://ggNZNfg:)k:x.Z?)Wk_/sfkk_jW:Z:f//gZ PfN:g>Pg/).))_a/N17ka0_x?:aWfgWaZff./XP?):/f./?/N)xkfgax_:e)kg.IWfk.fy/gg:PfNgZQPN:k./?x)gx)-gk/.f8fkM_f/:k{PggZgfP:/Z.x)a:).kw/af_k;Bkaf:BKZgfu/fg:Pd/gg?))N.x/ghakx-Ux::x:WgkNffWZZY/?N:ZfPk:/gf?kP/xx6:a)_g)ckf_ZW>ZgP:/fggft/N.kPK:xNg?)ag_/)faa_J}xZ:_)/gPZPf/:gN)xNN.)_ka/xf%ka{xPW:a)fgW3ZfP:/bZgP/N)gZ?/P}xk?tax.:?kkg_WWfkafpZ?g:ffN:./Px:k//?xa:x)UgN4_f#ak1fg/:ZfPgWUZN)k/).xgg:)xgU/Nf.P;iagf:+fZg/Z/fZ:f NxgW))fax/?fakxR?xk:xfWgkyff/:Zifg/Qg)Pa://8?k:;xx)::k_g??kf_NWAf?P:Wfk?)//g.kPW:xx:?)agg5YfaN_HWgZ:ff/gk{fNNkZf)xPg.)?ga/gf)fajxkW:axfgZZZff:/kgxf?N)ak?/:fxk?u:a_:?xkg_jWfZ:fSWgZgP)/N./Z-:k.,?xN:x.jg:P_f(Wk=W?/:kffxN/Zk)k/W.x?::)xgP!afxW5Ukgf:WfZg_mWNgkfxNx/g)):gx/Pfaax4?:k:xgWgfZffW:ZxPxWPg)xk:/.f?k:w.?b::g_gldkff:W0kgfx/)ZW)/fI.k)=:xg:?Nag._Jf:?_>k?Z:_f/Ng/f:Nkag)x::.)?g/Vxf)?as_gW:kffgdmkNPkWggxZgN).g?//fg??A:/_:?kkgWZWfk:f)/xk_P)_x./)f:k.>Pca:.kdgav_fW:kG_gWxZ)_?N/Wc)kNt.xP::kxg).af.P&G_?f:zfk.P/W/gkaPNx.:)):gZS?fNPxOSgk:_fWgab_N/kkkPxfgg))g:/Zf)::<gub:::_gkZkf_:W:Zx_./)/P)/Nf.k)C/%x:):agxv,fk:_KzgkWf)BPg/kRNkg4)x/:gg?gNZxf)_a3V?W:afxf//ajPk_/gx):N).gfH:fg_?lag_:UfkgxIFNZk_:/xWgP)Ng./ff/).{P)a:./Qg_Z_fn:affxXZZ).kN/gf)kN{gZ?:N/xg?4af_:=dag_?W)a_P/_%gkP>NxZ:)::gga?fN.xXa?k:xfWaZ/x)/kN)PxN:g))gWE.fP.:-xgm:af_g?FaNfkC/Zxkg/)gg)/WfgZ)j/fx:PDagIZ2fa:_NWxaaf)xxg/PfNkgVPN::Zs?g:0xfH:a{xg?)k)x.//OhPk/Rgxf:Nx.gPN:fgZ?Ux?_:?fkNf/?fZkg)/xg:P)Ngk0)f/Z.4?ga:xf9g:1xNWk:2fx_gZ)PgN/kfP)NYZx?:/)xgaZafx:RPkxxNW)a.P//fgkP&N/.:f):g.V?fa:x%?gak_)?ZZ/aM/kZLPxW:ZW)g/W.fPa:G??!::fx/W/:xfkP)ZxP:/)gg_mNfZa)2:gx:?fag.1?Nkk.)Wxtgf)/gg/_f/ZgGfg::Zf?gxZxf?::P_x?Wk)gk//ZfPk/5ZN):Wf.g)G:fx:?p:gxNS):af/x ZkfY/xk:PNNgk?)f/N.{:?a:.f?gk/.gWkNgfx/:Z)PgOQgffNN&.g?::fxg)+:N_k)fkxagW)ZgP/zfkxPBWk.:fx:g?Z?f::.ZsxN?_).xZ/ff/kZ(f:N:kx)gN+.f?::-.g?Za).NW/?LfkWQZx_:W)gg_PNfZW)(.?x:)f:k_/)kkk:/WxZ:f)/ga>PfWWg9)g::.f?gN*.NHkNx_xxgk)fg//affk/=k:):Wg.g:Z:f.:)_axgP^):.f/WfZkfR/ag:_gNgg7)f::.H)gaNx))Wk/:LWkkLfx*:ZfPgh_gf_?NV)??:Nf.Zb/N:_kf)kxf:W)Zgx{/fa?PBNg.:)f:ggb)Nakggqx?g_)WgZ/xfW:ZU_/N:kk)g.Z.f)::fxxP_a)ZkW/kffkW8kgP:<kggP2Nf.:) Ng.#?)/?_/.mkk_1Wxa:fN/ga.PfrPg+N?::gfP_a/g/;k/g_xW:k)fg?JZfxP/Rgg):Nf.gPKNNxkPkax:gc)kgf/?fkffA?>g:_:Ng)Z)fN:gP?x/.x)gxk/_fWkkBf:/:a:Pg/Xgf):N%ggP):)ZPt/)1_k%<kxx:WgZgxZ/fa_P}g?.:Pf:/x/foakN/{xk:_)Wg:2ff?_Z0PgN:gf)g/<gN?k/:xx.ga)_gW/:ffaW>:)P:4/ggNZNfg:Pk:xZZ?)N._/mfkk_b>gZ:x//gZCPfN:g;Pg/Z.)f_a/N7}kaA_x?:aPfg?aZfx./bP?):/f./?/W)xk_)ax_:M)kg.pWf:.fj/gg:PfNgZGPN:kZ/?x)gx);gk/.f5:kj.f/::<PggZgfP:N).xfa:)kk3/af_kEea2f:)HZgf>/fg:PY/gg/))W.x/gjakx0qx::x)Wg:Nff?ZZB/?N:ZfP):/kf?kWgxx1:a)_g)vkf.ZW1ZgP:/fggfu/N.k_-:xNg?)ag_/)fa__{)xZ:.)/gPZPf/:gP)xWN.)Zxa/xf9ka4xPW:N)fgWDZfP:/AZgfgN)kZ?/PXxk?(ax.:(.kg.WWf:af0Z?g:ff/W./_x:k//?xa:x)vgNQ_f)akBfg/:ZfPgWRZN)kh).xgg:)xg{/NfxkeHNgf:)fZg/Z/fZ:P_NxkW))/.x/?fakx6?fk:gfWgk,ff/:ZRfgWZg)_a://M?k:1xx)::)_gP?kf.NW=f?P:WfkP)/Rg.kx):xx:?)aggncfNN_;WgZ:ff/gk,fNNkaf)xPg.)?ga/gf??awgkW:NxfgZZZff:WSgxx?N)Z.?/:fxk?0:k_:Pxkg_BWfZ:f2WgZxP)QN./ZC:k.=?xN:x/1g/P_f)WkAW?/:kf_PN/ak)k?).x?::)xgPoafgWsFkgf:WfZg_dWNgkxxNx/g)):gx/PfNPx1P:k:ggWgfZffW:k?Px?Pg)xk:/.f?k:tx.E:/g_g!&kff:WAkgfa/)aW)/fu.k)L:xg:?/agZ_bf/?_jk?Z:_fW:g/x:Nkag)x::.)?g/4xff?a!_gW:kffg7}kNPk?ggxZgN).g?//fx:?l//_:PkkgWZWfk:fZ/x:_P)PP./)f:k.J)_a:Zktgap_fW:kC_g*fZ).?N/WS)kNs.xP:Nxxgf.afZPvB_?f:XfkaP/?/gkfWNx.:)):gZ2?fWPxF3gk:_fWgaw_N/k:kPxfgg))g:/Zf)k:>k&H:/:_gkZkf_:=xZx../)Pb)/Nf.k)0N/x:f:agxD0fk:_SKgZ/f))Pg/kjNkgV)x/:./?gWZxff_aGu?W:af__//NXPkxPgx):N).gfA:fk_?oag_:sfkgx&LNZk.:/xWgP)Ng./ffNW.n_)a:Z/Qg_Z_f;:k_fx)ZZ)axN/gf)kND..?:W/xg?!af_:ASagfNW)N_P/_%gkPMNxZ:)k:gka?fW.x4a?k:xf?_Z/g)/kN)PxN:g))gW+.f_.:3xgr:af_g?caNfk)/Zxkg/)gg)/WfgZ)RYfx:_Qag{ZCfa:xPWxNaf))}g/PfNkgD)/::aJ?g:OxfV:avxgw3k)g.//8VPk/3gxf:N/.g_N:fkZ?bx?_:?fk/f/PfZkZa/xg:P)NgkA)f%Z.Y?ga:xfBg:ExNWk/=fx_gZ)PgN/kfPkN<ax?:6)xgaZafx:BNkxgNW)a.P//fgkPd/P.:x):g.(?fa:xi?g:)_)PZZ/aJ/kZ^PxW:g_)goW.f_a:I??y::f.)W//xfkZgZxP:/)gg_MNfaa)r:gx:?fag.t?NkkZ)Wxsgf)/gg/_fWPgSxg::af?gxZxf?:::_xPWk):a//ZfPk/>ga):?f.g){:fx:?=:g.x#)/af/xiZkfi/xk:PkNg:?)fJN.F:?a:.f?ak/ZgWk?/fx/:Z)Pgg/gfxNNO.g?::fxgP/::_k6)kxkfW)PgP/WxZ:PX?k.:g):gx/?fNk._SxW8_)P:Z/Wg/kauPZN::x)g?).fkN:Cgx?)a)Z:W//gfk.)Zxf/g/gg.fNfPN)S:xx:?)N1_/fgkkZxWxZ/f)Wgk.PfN:gDax::ax?gNUxN&kWf_xx/k)fg//af_./,:k):?x.g_W:fgk?/axkO&)/:f/WWZk_h/gg:PfNgaW)f</.<fx?:x)9kk/:)Wk/kfx?:W/Pg/DgfZ/N&)f?:W).fz/a._k_gkxNNW)kgPW/fgNPUxx.:)f:gg()Pakkf3xxk_)WgZ/xf//Z1.kN::x)g.Z.f):N_xx_?a)?_W/kffk-)kZP:)ggg/aNf.k)J:x/:?)W:_/fkkk_)Wxk:__/gZ?Pf}OgJxk::gf)Ca/kgYk:Z_xW:k)xg7PZf.//+:k):MP.gPL::xk__ax?)>)kgf/Sxkgf1):g:/gNg./)fN:./?x(Px)P_k/_fWkkK?_/:NxPg)_gf):NBgxPa:)xaO/N?_kffkx_/C?Zgg)/fW:PONx.:f)X)x/_gakkfcxNx_)?gkgff)/Z6.kN:?.)gN/gI?k:PxxPxa)Z:W/Nf_PW,ZZP:W:ggf/Nfg:)Z:xaj?)N?_/7fkk.<%.Z:gx/gN)PfwagKPg/Z.)_Na/g:-kaH_x6/PffgPfZfx)/zgx):/f?P?/7axkPgax_:^)kg__WfN/fE)Ng:PfNgg/PN:k.P?x4fx)f:k/gfWWk%fZ/:ZaPgjxgfP:N?.xx-:)!)4/af_k)!a0f:PxZgg)/fP_Pp/gZ?))7Nx/N?akx&ixa/PWWg/fff?)ZDPxN:Zff;:/aa?k.Nxx9:a)xk?kkfZ)WUa/P:/)gg)/Ng.kxf:xaf?)ak_/?f:x_hWZZ:x./gN)Pf/:gf)x?R.)a)a/xfYkNzx?W:/xfgP)Zf/_/JZga/N)aN?//:xk?oaxx//WkgZfWfkgfJ/xg:ff/f./xa:kZg?xa:x)?k:k_ff)kOx//:Z)PgN/Zx)k?f.xxf:)xkl/:fxxGekZf:PZZgg)/fZ:P.Nx:C))_Wx/?fakgd)?k:ZxWg/)ffZ_ZLfgP_g)xN:/Z:?k:Dxx?/:x_gffkfk?WVZxP:/)Zx)/?g.kxx:xx/?):g.%ifk/_EWkZ:gx/gZ/f:Nkgf)x_:.)?aa/.x}WayZkW:W:fg//Zf_kWPgx.(N)a:?/xWxk?Ff:_:f.kg_1WfZkf!Wg)/P)?/./:k:k.,?xN:.10gWf_ff9kOW?/:kfPZN/:a)kWg.x?::).k))afk)IHaWf:W)Zg_/WWgk.gNx:f))WZx/)xaNxVfWk:.kWgZ/ffW:ZZPx)xg)_5:/.f?kN)Wg^:WN_g)xkffkW}Zxka/)NG)/?W.k)b:xx:?.agkf}fkk_+WgZ:_fWPg/.aNk)x)x::.)Pg:)xf_?ayZNW:fNfg!LZWPk)ggxa9N).g?/Nxgx?}WW_:?akgf/Wfak_Z/xN_P))?./__:kg)kga:k:3g)N_fWkkS_g./Z)gPN/aZ)kNB.x)/_fxg_kaf_:E6kxf:W)Q.P/)Ngk.:Nx.:)):g..?fv?xYuxk:_fWgap__/kNgPxg)g))g:/Zf)f:Yk/=:Wk_gkZkf_:WkZxg_/)/:)/Nf.kP):kx:_:ag..Efkk_H?xa.f)P)g/./Nka?)xN/a.?gGZxfP)ai_xW:affk///JPkbggx):N)gk)_:fa.?!N/_:6)kgf/J)Zkgk/xNZP)Ng./)f/f.;_/a:x)ogk/_fWkaxfxP?Z)PgN/g_)kN+Zg?:!xxg?6af_:vzaxxaW)ZNP/PXgk.fNxg:f?:g.P?ffkxSQZk:g)_gZ/fa/k/gPxkZg)Pg/N.f)?:oWxY:a__g?8Z)fkPfZx__/)gg)/Wfgg)Clkx:_xaggWlfa:xfWx/?f)/kg/PfNkZ)f?::ag?g:Ixf2ka6xg8.k)gW//ZxPk/6gx):Nf.gx):fa??Rag_:?)aaf/WaZk_N/xN+P)oggk)fN?.2P9a::x%g:oxOWk/ffxD_Z)PgN/kfPkNsak?:%xxgPWafx:2xkxZ?W):jP//fgkf)Na.:xg:gZx?fakx4?gk/_)PWZ/x:/kZvPxN:gZ)g?).fx?:>xgC::):ZW/kafkPgZxg0/)agfkNfg?)4:Wx:Pkag.2??kkZfWxPxf)/gg/_fNag&xk::ax?gxZxf?:a)_xf?k)k://ZfPkW)gg):?g.gfx:fxk?K:g..()/Wf/_gZkfy/xZ/:fNg:x)fW).s?xa:x)N.k/ZgWk/gfx//Z)fgWNgfP?NsaN?:}xxg?/NP_khgkxN:W)ZWP/Wxx/P,?k.:Zf:gx/?fNk.?3xWz_)P:Z/WZ/kaAf_N::x)g?).f:N:;.xRNa)xYW/_ZfkPfZxf//agg.)Nf??)E:xx:P)ak_/fgkkZfWxf.f)WkZZPf?WgIf/::.)?gNVWx<kWx_xNJk)fg//Zf6Z/9:k):?g.g)1:f.k)Waxxf7)/Nf/PgZk_E:gg:PaNgE/)fN?.%)gN.x)f:k//aWkkFfx{:ZaPg))gfx/Ns)??:Nf..(/WZ_k)gkxf:W)kkf2/fN1P6)N.:)):gx/)kakkfpxW)_)WkZ/_fWkZ{PWN:aZ)g?).f):.?xx_,a)/WW/kffk?2kXP:)xgg.)Nf)_)+NggP?)WN_/):kk_{Wxk/_)/gNfPfP?g<)x::.)?Za/kgJkWx_xW/k)_gH?ZffP/ ?k):?x.gP9N.xk_faxWP4)kgf/?f/?f()kg:.xNg)Z)fN:Pk?xK?x)P>k/_fWka)_W/:NgPgP_gf)kNb.xPg:)k: /Wk_k3)kx_:WZZgf./fNaPE?k.:Pf/Px/_gakW.>xk:_)?gaAff)/ZL.kN:)N)g/BgP?k!_xxPfa)_gW/axN:W}N:P:PZgg)/Nf.k//:xaO?)W/_/ixkkxnWkZ:fa/gZ_Pf?/gH_xN_.)))a/a:tkP._xh:kafgWgZf:k/DgN):/f.k?/*gxk)Zax_:t):gxaWfN/fJ)kg:xPNgZYPg:ka_?xa/x)Rgk/xxg:k1g:/:ZfPgN/gfP:.:.xxP:)xkq/af_kA9k:f:PxZgg_/fg:PL/xZx))N)x/P?akkfbxa/__Wg/)ff_:Z8PxN:k)f_:/ag?kdfxxPxa).gv.kfg/W;NkP:..ggP/NZ.k)k:xZx?)W:_/Pfax_4,>Z:_:/gW)Pf/:g.)x?(.)P?a/xf kNOxaW:/xfgP)Zfxa/qZgPHN)aN?//:xk?saxx/uakgZfWf:)fp/xg:ff/:./xa:kZg?xa:x)%gag_fP/kigN/:ZfPg//kP)kNk.xxf:)k:S//fffI;acf:WaZgxx/fakffNxgx)).ax/g.ak.)?_k:ZxWgPgff/kZS_xNNg)x::/ag?kxaxx?/a/_gfPkfk/WRZxP:WfZe)/?k.kfg:xx:?):kx:FfW?_;?/Z:f)/gkn:xNk:g)xWf.)?ga/xfNZa>ZkW:/kfgW,ZffkWWgxPxN)aW?/}gxk)%N__:%NkgN/Wfkff8Wg/WP)?:./Zx:k.9?xN:.)HgW)_fP/knWa/:a)_RN/:g)k?f.x:W:).g?Zafx_Kr_af:PxZg_QW)gk.fNx//)):gx/PfNPxSfkk:ZxWg_.ffckZ?Px)dg)x::///?kN6fgV:aN_ga.kfg/WHkgPN/)::)/xa.k)u:xg:?Zagk)of//_tk?Z:_f/Zg/.ZNkkg)x::.))kNfxf_ya{xkW:k)fg//kNPk)fgx.)N).k?/NfxW?1:?_:f.kgZ)Wf:kkG/xZgP)PK./aN:kg2P_a:x/QgP/_f=fkt_gNkZ).:N/ZN)kNs.xP:N:xg_)afZ/5ON.f:0fkxP/)ZgkZxNx.:))NkxW?f*7xM)Nk:_)WgasfW/kN.PxN/g))g:/.f)Z:Ekkt:WZ_gF-kf_kWZZxfg/)k_)/?g.k_hN)x:?/ag.gXff._E5gkff)):g/fNNkgj)x/:.x?g0)xff/ahg.W:af_k//NZPkvggx):N)gkPZ:faE?1N/_:M)kgxwWkZkg./xafP)Ng./)f/?.V_ka:kZMga;_f+kaWfxWgZ)geN/:g)kO7xq?::/xg?.afg)KoNxxfW)kfP/Z.gkZfNxg/)k:ga)?f_fxt7xk:.){aZ/gg/kNfPxg.g)Pk/f.f_W:S:PU:a)_g?ukafkPxZxxf/)gg)//x./)dsNx:ZPag_/8fa:/)Wx/ff)?2g/PfNkgFkx::ax?gsxxf}:atxxWWk)_f//aZPk)fgxP//..gx):fLf?Oax_:))agf/PgZkgf/xP.P)/kga)fiW.1.ka:x)9g:Q_ZWk/xfx?fZ)PgN/ZxPWNMaN?:/kxgd/afx:?/kxZfW)kgP//fgkPd/f.:xx:gax?fa:xc?xkW_)pfZ/ga/kNfPx/:ZP)gNa.fkk:8.)8:/).?W/a)fkfgZx/?/)ZgPfNfgg),_xx:?/ag.w??kkZfWxa_f)/gg/_f/Pg>xk::ax?g/Wxf?:a?_xf?k)fk//ZfPkW)g.):?g.g)6:fxk?R:g_Np)/Wf/WxZkf3/xg:fZNg:))f??.E?ga:.)s/k/x)WkaNfxPwZ)xg/)gfPgNSZY?:)xxg)5k)_kffkxx_W)ZgP/3fZWP7?k.:xx:gZW?f::..}xW?_))CZ/ff/kk)fxN::g)gWx.f?k:I.g)za)ZWW/::fkW=ZxP:/kgg.)Nf:?)^:gx:)):)_/?)kkZgWx/yf)?g:NPf/ggD)W::Zk?gNpg60kWf_xZxk)fg//aff_/7:k):?x.g:Z:f.:??axk?U)a_f/WfZk_)WZg:.gNgkx)f:k.*)gaNx)fWk/.:Wkk!fxW/k)Pg)xgf_)NI.x?::)/gz/Wg_kfgkxf/W)kg__/fZgPcWa.:xx:gg7))akkfcxfx_)WgZ/xfexZr.kN::x)g.Z.f)::kxx_?a)>WW/kffkq)kgP:)ggg_xNf.k)4Ng.Z?)WW_/xgkk_=Wxk/Z./gNxPfB)gr)x::.)?Na/kgzkWg_xW/k)_gWkZffg/H:N):?x.gP/:.xk_fax_:U)a.f/?fZNf3)kg:.xNgW.)f/kZa?xbDx)f:k/?kWkaQf./:kDPgZkgfx/N=kx?/:).x#/W._k)akx.:W_Zgf:/fa/PoWZ.:Pf:Zx/_gak.Zsxk:_)?gkgff)/ZB.kN:aP)g/Igg?kD_xxN:a)_gW/axk.W0N:P:a)gg)/Nfg:)Z:xaP?)gg_/Efkk_eW.Z:gx/gN_PfN:gIPx/Z.))xa/:WHkWf_x):kkfgW:Zfka/H)W):/fg.?/Dgxkg)ax_:l):gZ_WfN/f7)kg:gaNgZ/xa:kaf?x;Sx)#ak/xf?ZkX_f/:/aPg))gf_kP^.x)a:):cj//N_k?0:_f:2?Zg://fZfP2/gxk))p:x/)NakxXKx::_kWg/)ff)/Z<x.N:ZfPk:/aZ?k:)xxC:a)xk?kkfZ*WnZgP:/)ggf8Nx.kx.:xx/?)ag_/Af:._QPkZ:gZ/gZ8Pf/kga)xNa.)P_a/kg!k/Dx)W:a?fgSgZfZ//LZgf.N)a:?/NNxk?>ax.:APkgZ)WfN/f}?.g:ff/W./xZ:kZg?xa:x)?k:Z_ffjk9x//:Z)PgWJgW)k?..xff:)xgB/af..jb/kf:PZZgf5/fZkfWNxga))?Mx/_gak.)?_k:ZxWg?Vff/kZ!_x?xg)x::/ag?k/kxx)::g_gf)kfg/W-)aP:W)Zg)//P.kfk:xaE?)/gxfGfaZ_iWWZ:xk/gkhPZNk:f)xxx.)?ga/gf)_aCZkW:/xfgZZZff:/?gx.?N)N:?/:fxk))/k_:fgkg.xWfZkfiWgZ)P)?W./f::k.<?x:/.ZmgWx_f))kIfx/:Z)f_N/:g)k?g.x?/:).g?EafxZDe/Nf:PxZg_/_.gk.fNx.:))N.x/Pf:kxRfkk:ZxWg?.ff,kZPPx)=g)x::/Pk?kN .ft::?_gakkfg/W1:xfN/)Z.)/ig.kgZ:x./).agk)9f:P_=WxZ:x)W.g/.gNk:f)xWN.))kW)xffWaV_gW:k)fgbCk_Pk)xgx)/N).g?/NxxN?}WN_:mfkgf/WfZk_O/xNcP)?W./)x:kgw)Za:.?*g?Z_fP/k<.xf:Z)f.N/W_)kkP.xf:))xg?Naf/gwS:?f:))WgP/WPgkaaNx:x))Nk.N?fW/xi.gk:_)Wga/ga/kNfPx)rg)g?:/Zfx?:(kk-:Wx_gm?kf_k<WZxfa/)/?)/?g.k_b)xx:))agaxHf//_R9xaaf)Wgg/:fNkg.)xN/xb?gS)xf)Pa,_xW::)_///NgPk)fgx_NN)gk)a:fkW?7ag_:!)kgxEb.Zkgx/xg/P)Ng./Px/_.*_Na:xfBgk/_fWkaffxPQZ).WN/gx)k/FgP?:N)xg)aafZ/1!Nx_gW)kgP/W/gkZfNxg/PZ:ga)?fNPxrLxk:.)WkZ/gg/kNfPxnNg)Pk/i.f_W:Cg/K:a)_g?pk_fkPxZxxf/)gg)//xgS)URNx:Pkag_/Ufkk_:Wx/yf))Wg/PxNkZ!Z.::g)?g0xxff/a8gx!Zk)_g//ZNPk4ggxP/Ng.gx):f=f?Iax_:))a_f/PgZkgf/xP.P)/kg_)fsW.KP/a:x) g:2x)Wk/xfxWWZ)PgN/ZxP)N>aN?:/kxgd/afx:Z)kxZfW)PZP//fgkP^k_.:xx:gax?fa:x{?xg?_)MgZ/ga/kNfPx0:Z?)gNW.f.):yZWC::).PW/a_fkg1Zxf:/)Zkf.Nfa/)yPgx:?)ag./??kkZfWx/mf)?)g/_f//gDxk::ax?g:xxf?k:?_xjNk).)//NgPkW).f):?x.gP.:fxk?1Nxx:C)/:f/PgZk.?/xZ/f?Ng:P)f::.V?xa:.f?xk/ZkWkk)fx/:Z)fk/.gf.?N1.g?::)xgt/:N_kffkxZPW)ZkP/WfZWPR/..:PW:ga)?f/kx:{xaN_)?)Z/kg/kk)fgN::x)g/..f?k:egx?ma)Z:W//gfk)?Zxf/WWgg.PNfk))*:xx:)f:N_/fkkk.gWxZ:f)WkZ/Pf)?g f/::.)?ga/.:QkWf_xfPk)fk//kf_Z/pZ.):?k.gx):f.:?Waxk7S)?kf/WfZkxG)Ng:.xNg:))fWf.7Px/.x)f:k/ZgWkP_fxW:kAPg/Wgf_fNrak?:W).kr/:__kUZkx.fW):gf)/fZaPYgZ.:gx:gg{)kakkf#xfx_)WgZ/xfW:ZS.kN::x)g.Z.f)::axx_?a)gIW/kffkS):kP:)ggg)WNf.k)pNgxW?)WW_/):kk_^Wxk/_g/gNxPf.agR)x::.)?aa/kg0kWg_xW/k)_gWgZffa/h:N):?x.gP/P.xk_fax_:s)a.f/?fa_f&)kg:.xNgW.)f/k.??xMzx)f:k/?kWka9_?/:kPPgZkgfx/NUkx)P:).Z9//g_kx_kx_/WkZgg)/fkPP5Nx.:f)Nfx/_gakkf6xNN_)-kPRff)WZQZ:N:g))g/+/a?kQxxxPPa)_gW/ax_ZWQNNP:/fgg)/Nf.kP.:xa}?)WW_/Kxkkx6#_Z:_P/gWZPf?/gO_x:N.))Za/N_ikgP_x):a:fgm%ZfZ)/U/g):/)Z_?/Nxxkk+axx:+)akP:WfN/fsWWg:P)NgZ/P_:kaf?xX(x)PZk/xxW/kGga/:ZfPgN/gfP:/_.xx):)xkv/af_k?)a,f:PZZgf*/fgkPANxZ?))7:x/_aakx)Exa:x.Wgasffp.ZR.kN:a)Pf:/gx?kNkxx.Ha)xkO?kfg/W7kWP:/)ggf//?.kxf:xa6?)/Z_/?xak_DPaZ:xk/gg/Pf/:Za)x?).)f0a/xfmk:)xPW:/Zfg?xZfPk/9gxPxN)a:?/taxk?)axx:.Pkgx5Wf/)f!)kg:x)/)./Px:k.Z?x/fx)?k:f_fP/kV/A/:Z)PgW/Zg)k?f.xxK:)?PQ/:x_:4#/af:?kZgP//fZ:PxNx:))).kx/?fak.)?Zk:ZZWg:xff/kZ0fgx/g).y:/)x?k:Kxxd:g?_gf)kfZ)WqZgP:W)_N)//x.kx.:xam?)/gx:ifa:_RagZ:Wk/gZ/P.NkZP)x_:.))ga/.xQ:aIZkW:?ffg//Zf_kW)gx.JN)a:?/gZxkP7aW_:fxkgZ)WfP)fsWxkgP)/a.//Z:kaf?x:/fx;gW)_fx:kOfx/:a)f)N/:g)k?f.xN?:)gg?:afZ/pG/kf:k_Zgf/WggkfPNxP?))h:x/)x:/x fkk:/ZWgZ/ffqkkgPx)sg)x::/?W?kN).:w:W._g)xkffkWYkg://):/)/kP.k)d:xx:/?agk)DfWq_GWgZ:_)aNg/f.Nk:_)x?5.)fg::xf?/a{k/W:B:fgW/kcPkWfgxa:N).W?/Nx.x?bWk_:.fkgf/Wfak_a/xNHP)?:./f/:kZr)ka:kxEgW)_fgWk8_xWfZ)f:N/k/)k?f.x)/aVxg_)af.P9mkxf:?)kZP/)ggk.fNxkN))Nkg.?fWWx6=gk:_)WgaGf//kNxPxN/g))g:/gxP):ekNR:af_gW/kffkWPZxg-/):W)/Nx.kP1::x:)xag.a-f//_6)xkgf)W:g/f/Nk/f)xN/.f?gt)xf)Pan_xW::)x4//NgPk)fgx_NN)gkPk:fkW?uN/_:E)kgx#LgZkgx/xafP)Ng./PxN_.=_Na:gkBgk/_fWka)fxPyZ).WN/gx)k/XZ_?:Nxxg_xafZ/0(NxPxW)k:P//Ngk_gNxk:)P:gg)?fxNxeNKk:xfB:Z/gg/k)kPxN:g)fg/f.f_/:9kke:_N_g?UawfkP_ZxkU/)gg)//xZ?)nK:x:Pkag_/Efa:xxWx/Pf)?*g/PfNkZ)ag::ak?g/xxf}kal_x:ak)g://N:Pk/)gxP:W?.gP):fa??BWk_:?):.f/;ZZkN1/xkRP)/k/?)fG/.pgga:x)Ug:/.?Wk/ffxP-Z)W?N/kffPNRak?:Sxxgggafxkq.kxx?W)_?P/)ggkf)/Z.:xx:g/<?fakxA)xaN_)P:Z/gg/kf_PxW:gx)g?).f_/:F?ZG::)PkW/aZfkk_Zxgv/)ZkPgNfa/)R_Nx:?)ag./mNkkZfWx/mf)ZPg/fxNWgoxa::Zk?ga/xf?::A_xf)k)?://ZfPk/2Z)):?x.gxf:fx:?m:x.fs)aNf/PZZkgf/xa:Z)NgZf)f)).AkWa:.)).k/xkWkPUfxCKZ)fk::gfx/N+gW?::)xg)/a:_kffkxZ=W):ZP/WxkJPs?a.:gg:gx/?f::..KxW)_)?WZ/ff/kk)P:N::Z)gNF.f?k:(xx))a)Z:W//afkW)Zxf:WNggffNfZ.)-Ckx:)fkx_/fgkkxZWxZ:f)Mgk?Pf?/g5xk::kP?gNV.ZjkW__x)fk)fg//kx_./j::):Wk.g?/:f.:?/axkP6)N5f/WfZkf /kg:.xNg:_)f::.u)xNfx)?/k/Z:Wk/ffx?:.:PgWfgfPPN(Z/?:W)./I/:k_kaPkxa}W)kk_)/f:/P2.5.:)):gg/)fakkf1xWm_)kPZ/_xF_ZG.aN:NW)g:/.f)::Wxx_)a)gCW/kffkO)ZgP:)ZggkWNf.k)ANgW/?)%6_/):kk_KWxZ::)/gN)Pf))g<)g::g)?Za/.k5kN__xfFk)_kW?Zf.//4)+):N).gP/:kxk_faxkz3)_Pf/+xkZf!)ag:ZxNg./)fN:.P?xX)x)PMk/_fWka)_?/:NZPgzxgf)kNVggPk:)a<s/:f_k>zkxf:z)Zgg)/fN)PmNg.:P)/Xx/)kakk.wxWX_)MgkPff!?ZK:xN:Zg)gW/Z#?kNgxxxfa)Z?W/afx)W>k/P:.)ggffNfg:)x:xa0?)N?_/9fkk.hWWZ:gx/gN)Pf2ag>Pg/..)_Na/xx;ka9_xz/aWfgPfZfP:/ugx):/f./?/Eaxk?)ax_:0)kg_rWfN/f-)Ng:PfNgg/P::kgg?xNZx)f:k/gf^ZkM_//:k:Pgf)gfP:a/.xx8:)g?s/af_k)dkkf:PxZgg)/faaPS/ggP))VNx/P:akxXoxa/_.Wg/fff?)Z!PxN:ZfPx:/aa?k/gxxe:a)_gj.kfg/WzNNP:/fggP//b.kPg:xaf?)W:_/Pf/Z_bi/Z:fa/gaxPf/:Z))x?h.)a)a/xf-kNYxgW:/xfgP)Zf/_/*ZgPWN)aN?/)gxk?maxx/?:kgZfWf:)f3/xg:ff//./xa:kNf?xa:x)?ka._ff)kSx//:Z)PgN/_P)k?f.xxf:)xkm/:f.ZD%a/f:PZZgg)/fakZvNxZf))?kx/g.ak.)?_k:ZxWg?Kff/kZK_x?xg)x::/ag?k//xx)::__gf)kfg/W8)PP:W)ZZ)//:.kf/:xaQ?)/g.)sf:)_w)kZ:a//gkJf.Nk:f)x/_.)?ga/gf?aa#ZkW:/xfg?WZff:Wngx.?N).k?/:fxk)))N_:fgkg_LWfZkfvWgkxP)?W./)x:k.n?xa:.a#gW)_ff?ktfg/:k)f.N/Z:)kPa.xxu:)Zg?.af.)Mz?.f:./Zgx/W.gkfZNxNf))NWx/)f:/x9?Wk:/)WgafffW:f?Px)Bg)/x:/.f?k/K.kK:Wx_gf)kfW_WBkgfx/):N)/Z?.k)8:x./):agkf{fx._GWxZ:f)WNg/.gNk:x)x:/.))g:Wxf)PaY.:W:/xfghbZNPk)fgxf_N).g?//f.P?VWk_:fxkg.WWfk:_Z/xN?P)P/./)f:kg)?.a:kg5gN__fWkkX_g//Z).WN/gx)kNC.x?:NZxg_)afk?Oikgf:9)afP/WNgkfNNx:8))Wg.)?fNPx9)lk:axWga&P)/kNfPxW_g))g:/Zf)?:9kk+:Wx_g)Wkf_:WWZxg?/)aR)/Nf.kP):Zx:_gaggx fkk_C>gZ/f))Wg/_:Nkgm)x::gN?gJ)xf_?aA_gW:a)_g//kNPk)ggx.rN)kg_N:fgP?jaW_:)kkgxpl{Zkgf/x)xP)Ng./ffNZ.y_ka:kx(g_Z_f=:k:fxP?Z)W_N/gf)k/)./?:QgxgPxaf_ky=agxgW)NWP/k?gkP=Nxg/)Z:gax?f/)x=wxk:_).gZ/gg/kNgPxN/g)PgNk.fPP:rgad:Wx_g?-a.fkPfZxNx/)gg)/Wf.W)X*kx:_xagSZ4fa:xfWx/?f)xgg/PfNkZ)P:::ag?g/xxf8kaHxg?Pk)gW//PPPk/5gxP/xN.gxx:fZ)?hax_:H)a?f/PgZkgg/xg/P)/gZ_)f/P.+_Na:kx5gN/_kWkaZfxk/Z)NxN/ZxPMNbak?:Naxg,/af.k?NkxZeW)N:P/?_gkf)/?.:x.:gNf?fakx#?g:?_)P/Z/xa/kZSPx//Z))g?_.f?::yxxb:a)xaW//gfkP.ZxP//)Zgf.NfZP)+/.x:_xagg/?xkkxZWxcPf)P?g/xf/.g+fh::./?gxaxf?:a__xfbk)?///ZfPklS:)):?x.gx):f?_?#axx_Q)/Nf/WxZkf;/xZ/PfNg:f)f?k.l?xa:g)?_k/ZkWk/xfxZ.Z)fk/agf.?NGZ/?::)xg)pak_kfgkxgaW)ZgP//fk_PD?:.:xk:g.(?f::.auxWP_)fgZ/ff/kaL_PN::Z)g?_.f:_:#.g?/a)kHW/x?fkW5Zxf/.fgg..Nfk))C:xx:?)_f_/fakkZZWxZ/f)WkkgPf))gt.x::.)?gN/xW;kWg_xffk)WP//kxfx/j:W):Px.g?/:f.:)_axkxn)x)f/WfZkf!Wgg:.kNg:g)f:k.7?x:fx)fNk/_fWkk?fx/:afPg))gf):N2.g?:N)g.i/:/_k:gkxZSW)kg_N/fkfP>xx.:Pa:gZ/.fak.arx<f_)xWZ/_f+ZZO_?N:?))g/).f):k/xx_Ea).?W/kffk?{k?P:)xgg.)Nfka)ONg.Z?)WN_/uxkk_^Wxk/fZ/gNfPfN:gQ)x::gf)Na/kaXka)_xW:k)fgWPZf.//F:N):Nf.g)/Nfxk)aax.Zd)/:f/jxkZfw)kg:kfNg./)f/kkk?x+6x)f:k/./Wk:J_W/:NxPg))gfP)NBgx)k:)gPG/N/_kffkx.: 3Zg_Z/fkfP9Pk.:PfNkx/_gak.ZVxk:_)?gk?ff)/ZJ.kN:aP)g/bg.?kR_xxPfa)_gW/axk.W}N:P:Skgg)/Nfg:P):xaP?)/e_/Ffkk_A+PZ:gx/gN_PfN:g3PxNg.)PPa/k:7kWf_x):aNfgAZZffP/Yk/):6)Ng?/NWxk:Pax:sd):gZ_WfN/f0/xg:f?NgZ/xa:kaf?xX(x)g?k/.f)_kGgk/:NxPgkfgfPkNa.xP.:))f1/Wg_kPK:Ff:0NZg.)/f:fPi,xg0))/Px/:fakkkQxa/_ZWg/)ffUPZ3PxN:k)PP:/ag?k>fxxPNa)xk?akfgWW9ZgP:/)ggf%fa.kxx:xx/?)ag_/?x:4_,PNZ:ff/gg/PfNkZa)x?4.)_Wa/xxbk:S.JW:aNfg_ZZf.//Jaxf.N)ZP?/P_xkaZaxg:(.kgxkWfW)f0k_g:f)/x./f=:klr?xNYx)?kZ:_fP/kl_W/:Z)PgW/ZN)k?f.xx0:)ZZy/:xxkcH/af:WfZgP//fZ:fPNx:))):kx/?fak.)?xk:ZZWgkjff/kZyPxN/g)x::/aa?k:)xx?::)_g?kkfx.WUNkP:?)Zf)/WX.kPk:xZ/?):kx_1f//_^EWZ:f)/gk/fWNk:f)x?F.)fZa/.x)xaCZaW::kfg//Zff:W)gx.)N)ke?/:fxk))aN_:fZkg.xWfZkfe/xZWP)?:./xa:k.)?x::g?qg:k_ff)kMgk/::)))N/k7)kNZ.xff:)Zg?.af.x,*_Zf:x_Zg_nWZgk.fNx?x)):gx/Pf:ax9fkk:ZxWgfZffW:kaPx)?g)g::/.f?kN).:l:Wg_g)xkffkW#kgfx/):W)/W:.k)s:x./kfagkx6fu/_+WxZ:f)a.g/.gNk:g)x:/.))gZPxf)xa0ZNW:/xfg?/kkPkWNgxgfN)Zk?/NfgB?hNP_:Z)kg__Wfk:f:/xN%P)fk./)f:kZ!?Za:kxAgW)_f)fk xxW)Z).:N/:g)kx_.x):NZxg)aafgfy8/kf:mfgxP/)ggkfZNx.:))/g./?fW/xFfkk:gPWga{fW/kN_PxN/g))g:/gxP):pk:c:af_gW/kf_:>NZxgP/)gk)/Nf.k)l:Zx:_xagk_>fk:_1*xkkf)v_g/_?Nk:f)xW:./?gNaxf)faDakW:afxf//NgPkWZgx):N)ZgP.:fk/?-Wk_:PPkgx6W.Zkg_/xafP)Ng./Px:a.r_:a:gkugk/_fG:kffxPPZ)x-N/gf)kN-gP?:>xxg__af_:EiaxxaW)a_P/):gk.fNxk:t::gga?f:Px )/k:g)?fZ/x?/kfPPxfBg)PkNP.f_/:XpmA:a)_g?/a.fkPfZxg*/)PP)//x./)2rax:.xag_/<fa:_aWx/)f)?1g/PfNkZ)Pf::aZ?g/xxfjkaExgg/k)Z4//a:Pk/Jgx):k?.gx):fa)?3ag_:?).Nf/??Zkg./xNrP)0ggf)f/g.;x/a:)adga/_/Wka/fx.:Z)__N/Zx)aNtak?:Pfxg(/af.kqNkxZ9W)N:P/F/gk_9Na.:xx:ga)?ffWxK?x:q_)?xZ/x//kNfPx//.%)g?).fPP:8xxl:N)xWW//gfkPfZxxN/)ZkP_NfaW)S:gx:?)ag.r??kkZxWxZ/f)/gg/fxWfgbxN::.f?ga/xf#k:._xfLk)gW//ZxPkWXZP):WS.gPa:fk/?=/xxgo):xf/9/Zkkf/xZ/fPNg:))f/P.=?xa:g)tNk/ZgWk/ffx?NZ)fkWCgfxWN(Z/?::)xg)+aZ_kfxkx.fW)ZgP/WxZVPw?N.:fk:gx/?fakx/1xW%_)PWZ/fx/kkAk.N:k>)g?x.f_/:RZx)xa).xW/kNfk?gZxf/W{gg.)Nf?f) :xx:P)N)_/fgkkZfWxf.f)Wkk?Pf?Wgqgk::.)?gNK./OkWx_x)fk)fg//kxPa/S:N):Wk.g?/:f.:a:axkfj)N6f/WfZkfBWgg:.xNg:x)f::.y)xNPx))xk/ZaWk/ffxW/k/Pg))gfZ:N4.x?:/)gSz/Wg_kffkx.kW)agf./f:/P8?k.:kW:g./?Zak./4xNk_)P:Z/.fNfZq_fN:ax)g)).ffk:)xx)ka)2gW///fkz)kNP:)xggf.Nf.k)O/x.N?)W:_/fgkkg?Wxk/_N/gNPPfN:gq)x::gf)Wa/kkVka)_xW:k)_krgZfg?/zgg):N).g?/)gxk_faxkPG)kkf/mfZ/fj(fg:ZNNg:))fWkgN?xNkx).Zk/?fWka)_f/:NxPg_bgf)kNvZx)?:)k:8/Wg_k_Zkxx:0/Zgg)/f:/PQNZ.:P)ZNx/P)akaZsxWw_))gapffbZZ!g/N:)_)gN/gg?kNWxxZ:a)_WW/axfWW;NkP:_fgg)/NfZk)k:xa9?)W:_/)/kk.0W.Z:gx/gN)PfxWgOPxNZ.)P.a/g/wkWf_xb/ZFfgP)Zf_P/qgx):W).Z?/2gxk_faxgNE)ak_AWfNWfS/gg:P)NgZ1f?:kax?xa/x) gk/xxm9k^gN/:ZfPgN/gf)kN?.xx^:)kWC/ax_k?FkZf:??Zg_a/f:/PO9xgg))/.x/)/ak:fuxa/xaWg/)ff&PZ}PxN:k))::/ag?kXfxxPNa)xk?xkfgWWGa/P:/)ggftN:.kxx:xZf?)ag_/?xaN_HPNZ:xk/gg/PfNkgk)x?l.)_Wa/xxrk:(._W::?fgPxZf.//Dax?xN)Z.?/:NxkPgaxg:cWkgxNWffNf3Wkg:ff/x./xg:kyk?xa:x))gaI_fP/kGgk/:PNPgWOZP)k?_.xg+:)xgB/:xxPEv/:f:?kZgP//fZ:PaNx:P))W=x/?fak.)Zgk:ZkWg:xff/kZqPxkag)x::/a:?k:)xx?:N?_g?NkfZ?W!NkP:W)k.)/Wf.kac:xga?):k:?8f//_KxgZ:f)/gk/PWNk:f)x?j.)NNa/gfJaavZkW:/xfggxZffk/.gxf:N)PN?/Kgxk)):)_:fxkg:+WfZkfy=xZ/P)?:./xg:k)_?xN:xg{gW)_fP/keWZ/:k)_.N/kf)kg_.xxD:).kW)afZ/R%?gf:W)Zg_/W:gk.fNx:n))Wfx/PfNOxMfkk:ZxWg?gffWkZZPxW:g)_f:/ag?kN)go=:Wx_gZ_kffkW0axf//)::)/?g.k:a:x./?/agkPFfN)_<WxZ:_ftPg/.kNkf?)x::.)?gNfxff/aHZ:W:kffgW/a?Pkqugx.?N)a:?/Wf.N?#Nx_:_gkgZgWf:kfg/xkNP)P{./Zk:kg5?ga:gPBgP/_f?Zkv_g//Z).:N/Wx)kNS.xP:8Zxg_)afZ/jRNDf:?)NWP/)ggk.fNx??))NggN?fNaxlPVk:ZxWga+P)/kNfPxW_g))g:/Zf)/:ikk=:Wx_g)Wkf_:w.Zxg?/)gk)/Nf.kP)Nkx:_gagxtjfkk_s,gk?f))Wg/PxNkg4)x::gP?g;)xf_?aj_gW:a)x_//a_PkWNgx.#N)kg)k:fga?SNK_:xxkgxjWkZkgf/xk_P)Ng./ff:N.M_ka:kx!gNW_fe:aZfxP?Z)xsN/gf)k/)ga?:VgxgPxaf_knwagf/W)NWP/D:gkP}Nx.:P::ga)?fq?x8Ugk:x)xZZ/x_/kNgPx)Ig)_g:W.fPa:IxWw:Nk_g?jakfkPfZxNx/)gg)/WfZ))^ikx:_xag2ZRfa:_:Wx/?f)?Jg/PfNkZ)f?::ag?g/xxfwkaQxgWNk)gW//:WPk/BgxP/xf.gxx:fZ)?}ax_:i))gf/PgZkgg/xg/P)/ggk)f/a.rPaa:kxeg:<xPWk/ffxgxZ)PgN/kfP_NJak?:qxxgaZafx:4)kxZ?W)W:P//fgkf)W?.:xg:gZx?fakx(?ga/_)PWZ/kg/kZdPx//?f)g?x.ff):zxxL:a))xW//gfkPgZxP//)ZgP:NfZa)jpNx:_xagg/??kk.)WxWff))_g/ff/?gKfg::l)?gNWxf?:a._xfFk)x?//ZfPkG,Z1):?x.gx):fZa?5:gx_%)/Nf/_kZkf&/xZ/:fNg:f)fW?.m?xa:.fkPk/ZaWkk)fx/:Z)Pg/_gfx/N}aN?::fxg?/:f_k))kxxZW)N:P/?fZ?PSWg.:P::gPZ?f::x)IxWS_)??Z/ff/kaFPNN::x)g?).ffa:5.g?Ba)ZNW/::fkWJZxf/.fgg.fNfk))l:xx:)f_P_/fakk.gWxZ:f)/gk?Pf?/gmxN::.f?g:/.)QkN)_xffk)g://:fPW/Ekg):Na.gfx:f.:)uaxk C)f)f/WfZkxlW_g:.xNg:))f._. )gN.x)fNk/.:Wkk3fxW/.WPg)fgfxxNX.x?:NfxWe/Wa_k)gkxf:W)kk_x/fN)Pq?).:)):gx/)/akkfGxWf_)WkZ/_f/WZ0_gN::Z)g?).f)::)xx_Ya)/WW/kffk?XZ:P:)xgg.)Nf)_)BNgW/?)WN_/xgkk_=Wxk/x;/gNfPfr)gm)x::.))Sa/kg6kWx_xW/k)_gW.Zf_N/ngk):?x.g)/:gxkPPax/:M):kf/)fkNfppkg:gkNgN:)fNk.a?x/3x)Zgk/.xWka)_f/:NxPgW.gf)kNRZx)_:)k:m/Wg_kP?kx_/M_ZggP/fWGP+Nx.:PfNkx/_kakg.ixk:_)-kkNffP?Z&PgN:g))g:/gk?k7fxx_Pa)_kW/af_aW4akP:WWgg.)NfkkP::xZF?)N)_/xgkkx)/fZ:gx/gk.PfNkg{fxNP.)_:a/kgSk/?_x1/aPfgPPZfx)/2gx):/fgP?/7kxkPgax_:D)akx)Wf/?flo/g:P)Ng./PW:kaf?xSPx)2kk/xf;xk}xk/:NkPg))gf_kuW.xf!:).?v/N:_k?)kgf:PxZgNg/fgkP-Wxg)))+:x/_gakza2xa/x)Wg/Pfff/ZRPxN:ZfPf:/ak?k/gxxC:a)xk?PkfZ?WnWkP:/)ggfiW?.kxg:xZf?)ag_/Yf.Z_GPkZ:gk/gZ<Pf/kZW)xWL.)_Wa/kgzk:)x_W:/xfgxsZfPk/9kxxxN)a:?/AgxkP/ax.:?fkgZ)WfN/fK.Pg:f)/P./fg:kZ/?xAtx)Pga?_f?/k5.k/:/.PgWIg:)k?f.xP_:)xgb/Nf_/G;/kf:PxZgxW/fZ:PNNx:?)))/x/?fak.).Nk:ZgWg:_ff/kZ^fg/Pg)xW:/.x?k:mxx0:ax_gf)kfZ?WFZgP:W)Z_)/Wg.kga:xa1?)/g.gYf:/_Ox.Z:?_/ga/f.Nkk_)x)f.)_?a/.f)_aU.aW:P)fg-WZff::fgx.cN)/k?/:fxkPv:W_:fxkgZ)Wf:ff5Qxk4P)?:./xg:k.g?x::.ZKgNP_f)fk>gk/:kf_fN/:g)k/Z.x?::)gg)kafZ/Eb/kf:)PZg_Inwgk._Nx./)):gx/)xf:x5f:k:_fWgZ/ffW:)aPx)Pg))k:/.f?k:>x/#:Wx_gf_kff:WUkxfa/)kN)/W?.kxf:xZ:)zaggPbf:f_t_kZ:_f/Ng/.gNkZZ)x::.)PgNxxff/a1ZkW:NPfgX-kPPk)_gx_fN).g?/Nx:.?mW:_:)kkgf/Wfk:f:/xNPP)wc./)f:k.o)Wa:kx3gW__fW:kX_xWZZ)_NN/::)k?f.xf::axgPPafxP%u:/f:?) aP/)ggkP4Nxga))/g.)?fW/xmfkk::aWga/__/kNfPx)Cg)//:/gf)?:;ga<:x/_gf)kf.k4fZxx?/)a:)/gP.kP)N_x:_xag..tfkk_U?xkkf)):g/.gNka?)xN/7f?gpPxfH:a8_xW:afaW//NkPk/)gx):N)gk)x:fa??}ag_:r)kgf/%XZkgf/xNPP)Nk./PfNZ.UPaa::N6gW)_f)kk/fx??Z)kZN/)N)k7Dgx?:/.xgZ:af._6haxxfW)a/P/.fgk_?Nxg/g_:ga)?f):xYexk:.)I_Z/gg/kNfPxk?g)fg/k.f_/:,kk{:fk_g4/a:fk?xZx%?/)::)//xg))Iukx:gfag_/Af:k_/Wx/ef)):g//ZNkkIPN::ax?gs)xfaNaBxx?ak)x///fZPk)fgxP/ax.gx):fN:?cax_:))a.f/PgZkgf/xagP)WgZf)f</.,_ka:N:Qga/x)Wk:xfx?gZ).:N/ZxfqN{ak?:_Zxg7/af.kB)kxZ5W)N:P/gWgkf)NN.:x.:gZx?fakxB?gP/_)P/Z/L_/kZ;PxN:_?)g?).fxK:KxgI::))NW/:kfkP_ZxgJ/)agf.Nfk?)X?/x:ggagx/?xkk..Wx):f)J.g/fxN/g{xk::/f?ga/xf)kaZ_xfMk)g://a/Pk<Ik?):?x.gx):fWW?m:x.) ):Wf/?/Zkgf/xZ/)qNg:))f/P.q?xa:g)?gk/ZgWk/ffx?NZ)fk/fgfxWNC.g?::)xg)Jaa_kfxkxf/W)ZgP/WxgWP2?N.:)f:gx/?fakx/#xW<_)PWZ/fx/kkz_)N:kZ)g/a.f_/:=Zx?ga).WW/a/fk_fZxf//agg.)NfZP)5:xx:P):?_/fgkkZfWx:Nf)WkZNPf?Wgjf/::.)?gNK.?9kWx_x)fk)fg//kxP//S:N):Wk.g?/:fxk??axkYr)/Wf/WxZk_y_.g:_ZNg:x)f!/.6fx::x))Wk/_NWk:gfxW/kxPg))gf:fN+.x?:/)g)v/Wg_kffkxW.W)kkfg/f:WP>W/.:)):ggR)kakkxuxNf_)WgZ/_x/aZ .NN:aN)g:/.f):_)xx_fa)gDW/kffkW;?xP:)xgg.xNf.:)HNxg_?)NW_/)ZkkZfWxk/_Z/gN)Pf.fgG)x::Z)Pfa/kgGkWf_xk.k)_kW:Zf.W/+/k):N).gP-:axk_xaxgfY)kgf/,xk/fl)Ng:ZxNg./)fN:0)?xrfx)PUk/_fWkkX?f/:NxPg)xgf):NwgxPP:)gW+/Wa_kffkx.:WNZgxx/f/)Pr?P.:P):Nx/P:akW9YxNP_)oka,ff)/ZQfWN:g))g//..?k2fxx_5a)gZW/axxPWVNaP:fggg)/Nfg:a):xa)?)NW_/Ufkkx)Z?Z:gZ/gZePfNkgn)x/).)_:a/kaDka)_xJ:affg?xZf_./y:k):S).:?//:xk)kax).E)akfWWfN/fJWWg:P)NgZ/P::kaf?xc<x)PZk/xxsNkMga/:akPgN/gfP:x).xx):)Zyl/af_k?)f?f:PZZgxx/fgkPmNxgk))4:x/_aakx)wxa:xWWg:xffP)Zs.kN:a)P?:/Z:?k:ZxxPfa)xk?kkfg/WYP P:/)ggf/Na.kxf:xaV?)xP_/?xaZ_4PaZ:xk/gg/Pf/:xN)x?).)_fa/xf>k:).)W:/Zfg?xZfPk/0ZgPfN):t?/% xk?;ax_:?WkgZ)Wf/)f2/gg:f)N/./f::ka.?xr>x)?k:P_fP/kUNN/:Z)PgW/Zf)k?f.xx{:)?P6/:x/:Hn/af:_xZgP//fZ:f/Nx:)))W=x/?fakxc?Pk:ZxWg/fff/:Z5fx/fg)_?:/.g?ksfxx?::._g).kfNkWBa/P:?)Z#)/W/.k.g:x:k?):gxxlfNf_ygxZ:xk/gkmPZNk:f)x/_.)?ga/gf?PaQZkW:/xfg?WZff:W:gx.?N)N/?/:fxk)):{_:fgkg._WfZkftWgk_P)?W./)x:k.&?xa:xP}gW)_ff?klfg/:k)P/N/k/)k/N.xxX:)Zg)aafgfJV:+f:_xZg_7N)gk.fNxZ_)):gx/PfaNxYfkk:ZxWg:WffW:k.Px)?g)_D:/.f?kN).cn:Wg_g)xkffkWSkg_./):W)/W:.k)R:xx:?/agk)LfW?_rWgZ:_)WPg/_/Nk:g)x?0.)fgWNxfPfa(_WW::kfg(9kaPk)fgx:xN).g?//f.N?XWk_:fxkgWZWfk:fW/xN?P)P:./)f:kg)?.a:kg0gNx_fWkkt_gW)Z).WN//g)kN+.x)/:xxg_xafg)p9kxf:W)x.P/)ggk.gNx./))NggN?f/fxifNk:ZxWga+_P/kNfPxf/g))g:/Zf_f:^kkV:Wx_g):kfxkWfZxgK/)::)/x?.kPM:ax:P:agg:{f//_+)xkgf)?)g/xgNkqZ)xN/./?g9)xf)Pa{_xW::)_)//NgPk)fgx_NN)gk)P:fkW?i?:_:#)kgxrxaZkgx/xaPP)Ng./PxNf.j_Na:xfRgk/_fWkkNfxP>Z).WN/gx)k/tgN?:/:xg.ZafZ/ SNx_:W):)P/__gkXPNxk:Pu:gZZ?f?)xzPWk:x)7NZ/xW/k)tPxHPg)Pka).f_/:GNg^:a)_g?/a.fkPfZxgU/)a))/Wfgg)%Xkx:_xagxxYfakxaWx:.f)?)g/.gNkZ))g::ax?gN.xfbkam.xQ:k)g://NgPk??gxP//?.gxP:fx:? ax_:?fPkf/PkZkf)/xg:P)/k?Z)f??.d?ga:x)+gk/xPWk/ffxPPZ)PkN/ZfP/N5k??:NWxg_)afgkDZkx..W)a)P/fggkf)NW.:xx:gg.?fakxU)xa?_)P:Z/gg/k:?Px//g:)g?P.ff):*xxd::fa_W//kfk?gZxP:/)ZkP/Nf:?)b//x:?)ag_/lZkkZfWx/Pf)/kg/ff/)gM_?::ak?g#)xfPk:?_x).k)_?//a:PkD&WZ):?x.g?/:f.Z?rNxxW5)/:f/PgZkaZ/xk:PgNg:))f0/.%N:a:.)?Gk/.WWk_:fxPQZ)xg/?gf__N1kk?:??xg)nax_kffkxx_W)ZgP/AfZ/PY?k.:xx:gZW?f::W),xW?_)WkZ/ff/kk)kNN::g)gN9.f?k:9.g?)a)ZWW/kxfkWoZxP:/Wgg.)Nf:?)s:gx:)):a_/)WkkaaWx/Qf)?gk.Pfv_g=Z.::?a?g//.:EkNa_xgkk)xP//kffg/Ba)):x).gf_:f.:.Paxkjq)?kf/WfZkx9W8g:.xNg:))fgW.sPx::x)f:k/ZgWkPgfxW:ZNPg9kgf/WN%ak?:Nfgf{/Wg_k.)kxf:W)ag_)/f:/P<?k.:N.:gg/)Nakkf%xWE_)kaZ/_fAZZ;x)N:P.)g?).f):kfxx_<a):kW/kffk?hZ:P:)xgg.)Nfkx)B/x./?)W:_/fgkk:kWxk:_W/gakPfXxgCxk::gf)aa/kg+kf._xW:k)xg mZf.//K:k):.N.gPA/?xk__axgfl)kgf/7x):fY):g:WPNg./)f:kPW?xcHx)f/k/_xWka ?a/:a/Pg)Pgfx/N,kx)a:)Z_}/}:_k.xkx_:WxZgxa/f?kPmW_.:Pf:ax/_gakN)#xk:_)?gkPff)/ZU.kN:k:)g//g:?k3fxx_>a)/NW/af_/W*:PP:m:gg.)Nfg:R/:xaD?)N?_/7fkk.RW/Z:gx/gN)Pf-ag1PgN:.)_Na/xxlkaw_xr/a<fgPfZfP:/Ggx):/fgf?/^axk?)ax_:X)kgfWWfN/f4)Ng:PfNgg/PZ:kZN?xNZx)f:k/gfRxkp.P/:k:Pgf)gfP:N).xxM:)g?R/af_k)=kWf:PxZgg)/faaP1/gg)))=Nx/P:akxMrxa/xgWg/fff?)Z#PxN:Zf)k:/aa?k/gxx;:a)_g{?kfg/WKNNP:/fggP/f_.kfN:xaf?)W:_/Pfk/_y)PZ:fa/gaxPf/:Za)x?3.)a)a/xfnkNpx?W:/xfgP)Zf/_/+ZgPaN)aN?//:xk?%axx/?ikgZfWf:)fl/xg:ff/../xa:kka?xa:x)?kfd_ff)kdx//:Z)PgN/5f)k?f.xxf:)xk&/:fxao&NPf:?.Zgg)/fZ:PgNx:d))x)x/?fakgr?fk:ZxWg/)ffZ_ZSfg/kg)xN:/Ng?k:zxx?/:._gffkf.)WrZxP:Wfg/)/?a.kgf:xx:?):kWt(fW)_,?/Z:f)/gg/F)Nk:f)x?f.)?ka/.f?Pa^gPW:/ZfgP)ZfxkWLgx_kN)N5?/=?xk)H:a_:PBkgN/Wf:.fQWgkZP)?:./PN:k.r?xN:.kYgW)_fP/k<../:kfPaN/:Z)kPx.x?::).kkQafk47!:Nf:W)Zg_A.Wgk..Nx./)):gx/?faax(fkk:ZZWgk,ffWkkaPxnkg)f_:/ag?kW!..q:/<_g?gkf?_WSkgfW/)::)//N.k)A:xg:?.agk)Jf//_t).Z:_fWNg/.ZNkkg)x::.))k_Yxf_OaO./W:k)fgL+)WPk).gx_fN).g?/:f.P?CWk_:fZkg_BWfkk_./xakP))o./xg:kknP?a:ZDVga._f))kC_gWNZ).:N/?/)kN<.xP:N:xg_)afZ/DK_?f:}fkxP/)Zgk_gNx.:))Nk_a?fqKx-f)k:_)Wga%fk/kN.PxMfg))g:/gxPu:mk/ ://_gW/kffkIPZxgy/)N^)/Nx.kP5N?x:f&agk_Af//_7}gk)f)):g/:aNkgY)x/:.Z?gD)xff/a7r?W:afNk//NZPkffgx):N)gkP::fa{?FN/_:V)kgf/W:Zkgf/xN)P)Nk./Pf:a.uf_a:xxBgW)_f%ka:fx?aZ):gN/a))kA8.W?:W)xgxxafag,9ax_aW):gP/.fgk_/Nxg/PZ:ga)?fNPx0+xk:.)r?Z/gg/kNfPxoNg)Pk/_.f_W:%::6:a)_g?%a)fkPxZxxP/)gg)//xZ^)QiNx:?fag_/7fkk_.Wx/Of))Wg/PxNkZ1fP::k)?gNaxff/aLgxW/k).g//k/PkffgxP/:>.gx):fgP?Dax_:))kZf/PgZkgf/xaNP)/kZ_)fQW.MP/a:x)Ig:&x/Wk/xfx?fZ)PgN/ZxPfNraN?:/kxgl/af_k?.kxZOW)NWP//xgkfz/;.:_):gax?fW/xUPx/a_))gZ/fN/kagPx//Z?)g?).faf:=xxF:N)xgW//gfkPfZx/./)ZkfgNfaW)5)kx:?)ag.<?NkkZxWx:ff)/gg/fxWKghxN::Nx?ga/xf?:ak_xffk).2//ZfPk/v__):?x.gxx:fx:?t:x.a )Ngf/PaZkgf/xZ/f?Ng:))fP:.}?xa:g)f)k/ZgWk/ffx?kZ)_gW_gfx/NLak?:fWxg?/ax_kP*kx.kW)N:P/?fZNP16x.:_x:gaZ?f::.)VxWr_)??Z/ff/ka-_5N::x)g?).ffa:z.g?Za)ZNW/GkfkWwZxf/_Zgg.fNfk?)j:xx:)fN)_/fakk_)WxZ:f)/gk5Pf?/gsxN::.f?g:/x/>k/J_xx.k)g://:ff//9ax):fP.gW?:fZk):axgN>)Cuf/)NZk_&W)g:xPNgp/)fW..l)gkux)f:k/:xWkkefxC:ZaPg))gfx/NYkX?:/)xN+/Wg_kffkx_fW)kgfg/faaPUFd.:xx:gg<)/akkf!x:__)WgZ/xfWxZ}.kN::x)gWW.f)::gxx_?a)_kW/kffk*))gP:)gggPUNf.k)VNgR.?)WW_/7xkk_XWxZ:_//gN)Pf)?gl)g::g))Wa/Z_Gk:N_xf{k).g/WZfxa/Xkj):Px.gP0N?xk_fax._H)kgf/?fa_fD)kg:.xNgkW)fN:.a?xB?x)P}k/_fWka)kP/:NgPgExgf)kNUgg?W:)kWM/N:_k5okxf:J^Zgg)/fN?P#Ng.:P)N?x/f_akkg0xWX_))ga_ff?aZwPWN:kk)g///.?klfxx=:a)x.W/:f_gW NkP:)xggk.NfZk)):xa&?)W:_/:kkkxshfZ:.P/gfkPf?/gQ_x/P.)fZa/Zg3kPx_x4/kWfgP)Zf_P/bgx):W)ga?/mgxk_faxgNH)ak/LWfNWfU/gg:P)NgZAZa:kax?xa/x)cgk/xxO.k-gN/:ZfPgN/gf)kNf.xxC:)kW{/ax_k?3aZf:)PZgkZ/f:/P3Gxgq))WZx/g_ak(ZrxN:x_Wg:Wff.gZA_?N:Z)PP:/kx?k_FxxPZa)xkx?kfg/WlBgP:/)ggf/Nk.kxf:xa%?).N_/)fak_EPkZ:gx/g)xPf/kZf)xW/.)NNa/kgbk:)x/W:/xfgxUZfPk/0kxf.N)a:?/!gxk:_ax.:?gkgZ)WfN/f#ZZg:f)W../_x:k)_?x*<x)?kZ)_fP/kXag/:Z)PgW/gW)k?f.xxq:)ZfJ/NfxkSE/kf:PxZgag/fZkf:Nxk/))Wfx/_gak.)?1k:ZxWgP_ff/kZ{_xN/g)x::/ag?kxaxx?/:/_gfPkf.)WrZxP:Wf?k)/?k.k/?:xx:?)ag)NLf//_JP:Z:ff/gZ/rZNka))x??.)_:a/Zf?PaygZW:Wkfga)ZffkW)gx_WN)3g?/:axk))a:_:fxkg:jWfZkf+8xkgP)?:./xg:kZk?xN:xfugW)_fP/kyNa/:k)PZN/a.)kWk.xx(:).kW:afZ/ waWf:W)Zg_/Wfgk.fNx:D))WZx/)xNfx&fak:_fWgZ/ffW:kkPx))g))k:/.f?kN)._!:WZ_gdHkffkW;Zx_)/)::)/?a.k)):x.:)PagZ?ef:._2PkZ:.)Wfg/x.NkZk)xPU.))k:#xff/aExWW:k)fgA/kZPk)fgx.{N)kZ?/Nxg1?MWa_:)kkgf/Wfk:_./xN)P)Qc./)f:kg)P?a:kZ9gNx_fWkk8fx//Z).:N/:a)kN).x):/?xgf?afk)>0/kf:))g)P/?.gkPZNxkf))Wg._?f/Nx8aZk:)?Wga3fW/kNfPx.xg))g:/Zf)::6kkY:Wx_gkZkf_:W?Zxg?/)/:)/Nf.kP)NZx:_gaggx!fkk_wGgkNf))Wg/_:Nkgc)xN/!f?gOxxfP)a5_xW:k)?.//NgPk)ggx)/N)ggPN:fZN?*WN_:fxkg_/?PZk.f/x?:P)+a./Px)N.2_ka:Nfhgk/_f?kkWfxP&Z).:N/fZ)kWhg_?:*xxg_)afW)3Vax_ZW)::P/kZgk.fNxg/)N:ga)?f):xq2xk:.)ANZ/gg/kNfPxZ_g)fgN).f_/:VkkL:):_g9/:Pfk)fZxW_/)::)//x_/)l2kx:gfag_/Af:k_WWx/=f)):g//ZNkk5PP::ax?gV)xfaNa4xxq)k).://fZPk)fgxP//P.gx):fI??^ax_:))a)f/PgZkgf/xP.P)/kZP)fSW.(P/a:x)=g:&xWWk/xfxkNZ)PgN/gfP/NKak?:Sgxg?Mafxk?.kxgcW)NNP/)ggkxvNW.:_x:g:f?f+fx8Pxa?_))NZ/Z:/kfWPx/:gg)g;P.fkk:bZZF::fx?W//gfk4ZZxP:/)kgP.Nfa/)o4kx:fPag.t?NkkZ_WxZ/f)/gg/fx/=g5x:::.f?ga/xf?::c_xfPk)fk//ZfPk/cga):?x.gx_:fx:?<:x.xG)NNf/??Zkgf/xa:PfNgaP)f/f.-fga:.fWxk/ZgWkaZfx/:Z)_g/_gfx/NJak?:WPxg)V:__kf_kx.fW)ZgP/WxkxP#?:.:fk:gx/?f::xNQxWP_))zZ/ff/kZ&fPN::x)g?_.f?::F.x?_a)gNW//:fkPfZxx:::ggxPNfgP)U//x:f):P_/PZkkLPWx_.f)WkZaPf?/gw:R::.)?gN/xZ1kWf_xfuk)WP//kxP:/q:a):Px.g?/:f.:?Naxk)Y)Npf/WfZk_)W:g:.ZNgkx)f:k.l)gf/x)_jk/agWkk!fx/:x?Pg))gf.)N1.g?:N)PNj//Z_kf.kxZGW):gfx/f:2P+)/.:__:g./)_akZx%xP:_))aZ/_xW?ZD.kN:Wf)g:/.fPkN?xx_=a)Z:W/:/fk?jkmP:)xgg.)Nf)a)cNx.??)//_/)/kkZfWxk/Po/gN)PfWPg})x::Z))ka/kgukWf_x)Nk)_kW.Zf.W/</:):N).gP;NNxk_xaxgP>)kgf/(xk.f#)Ng:PfNg./)f:k.Z?x2,x)fWk/_xWkaR_//::gPgWagfx/NEgg-k:)k:E/:N_kKikxx:WaZgg)/f:/P&4..:Pf/Px/_Zakggsxk:_)+kk_ffP6Z4_/N:g))g/rg:?kH.xxPfa)_gW/kffNWLNkP:)ZggP,Nfgk)):xk)?)A9_/fgkkgDP_Z:.g/gZ.PfV)g;Pg/x.)_:a/W/hka5_x?:kkfgP)Zf.//eP?):/f.:?/}ZxkPgax_:H)akxZWf/^flZgg:P)NgZwPL:ka.?x/fx)Qgk/xxz:kpg//:ffPgN/gf)kk:.xx+:)aI=/ax_k?!aKf:)gZgg_/f:/Pt/gg?))O:x/kaakx(+x::_xWg/)ff)/Z</?N:ZfP/:/aZ?k/gxxD:a)xkl/kfZtWXPWP:/)gg)//k.kxf:xa)?)ak_/?f:Z_D)NZ:fx/gN)Pf/k_P)xcP.)kga/Zk1k:)xZW:/xfgfgZfPk/ikxP_N)a:?/Xgxkaaax_:?fkgZPWfZafo/xg:ff/Z./xk:k?x?xa:x))g:Z_ffjk g:/:PNPgWwZf)k?..xff:)xgc/:xxZXJ//f:,aZgP//fkkxxNx:f))?Ex/f_ak.)UWk:ZaWgk}ff/kZ+fg/dg).):/.x?k:Vxx?/:W_gfZkff:W+ZxP:/)gN)/?:.kxa:xx:?)agxNvfW4_VWxZ:ff/gkrPWNk:.)x.).)?ga/gf:Wa7ZNW:/ZfgZZZff:W#gx.fN)N:?/:fxk))N?_:fakgx.WfZkf6}xZPP))?./xN:kk??x:/xNegWg_fgfkzfx/:kffNN/:W)k_k.x?::).k?.afkxn*PXf:W)ZgP/_:gk.ZNx:g)):gx/?f.{x9fNk:_)WgZ/ff/kP_Px)?g))g:/._?k:#ggq:Wx_gl!kff:W6kx;Z/):+)/)z.kxf:x.:?:agZxQfPk_5):Z:_)/ag/xNNk?;)xi).))kN?xff/a5:gW:k)fgj/a{Pk)fgx.wN)PN?//f.a?jWk_:fxkg/xWfkkf./x:_P)ZN./xg:kg).Za:kxJg)n_fWkklxxWKZ).:N/:g)kg_.xP:N.xg_)afZ/A&_Zf:q)k:P/?Ngk/_Nx:!))Nkgf?fW/xe.gk:_)Wga/fx/kNfPx)bg)_f:/Zf?::%kk+:Wx_g.gkf_kN)Zx._/)af)/?g.kP)Ngx:_xagW_,fkk_%?xkWf)):g/.gNk)a)xN/.k?g{PxfP)a3_xW:aff///NkPk?/gx):N).g)N:fk/?hW:_:Hfkg_/MxZk.Z/xN?P)?:./Pfk:.R_Ka:W)Gg/f_f%:k_fxPGZ):WN/gf)kWC.k?:ixxg_)af8_9AagxPW)NNP/1:gkPJNxg/P::gaf?f.axptxk:_)WWZ/gg/kNxPxN/g)PgN_.f_f:8Wkl:Wx_g?iNNfkPfZxNP/)gg)/Wfg))GLkx:_xaguZhfa:xaWx/?f)?qg/PfNkZ)P)::ag?g.Wxf0ka#_x?_k)g://NkPk/)gxP:/L.g_g:faa?;Wk_:P)kWf/)WZkZg/x_PP)/gZN)fK_.Ykxa:Zgog:5f)Wk/ffxr_Z)PgN/kfPMNCak?:qxxgPWafx:?:kxZ?W)ZkP//fgkf)/Z.:xg:g.A?fakxB?gax_)PWZ/fx/kZ,PxN:g:)g?).fx?:GxgA::)xfW/NWfk*NZxgb/)agPkNfa_)C/1x:.xag.6?qkkZfWxa_f)/gg/_f/fg(xk::ax?g/Wxf?:a:_xf?k).I//ZfPkW)Zf):?g.gfx:fxk?J:gx_()/Wf/?:ZkfU/xg:PWNg:))f??.D?ga:.).Zk/gWWk/gfxPnZ)xg/.gfx_N!.W?:/kxg)zNn_kffkx/xW)ZgP/dfgWPK?k.:xx:g?Z?f::x.CxW?_))iZ/ff/kk)fkN::g)gZk.f?k:F.g)fa)ZWW/::fkW9Zxf/WNgg.xNffx)!:xx:?)N__/fgkkZgWxZ/f)WgkgPf?_g=xN::ax?g//xx3k/a_xa/k)?x//:fff/E:)):)k.g_.:f.k??axZgp)Pgf/)kZk_)WPg:.xNgW*)f:k.8PxOPx)f:k/ZgWk:kfxc:NZPg))gfx/Nh).?:N)g.D/W<_k)kkxZXW)kk):/f:/P&/W.:)):gg/):akkfGxW9_))ZZ/_xW)Z{.aN:gf)g:/.f):Nkxx_)a)_kW/kffk^)k.P:)ZggPVNf.k)Q:xg_?)W:_/fakk_)Wxk:f:/g:kPfW.g;xk::k))fa/kS!k:k_xxmk)_k!)Zf.//;ZW):N).gP/N.xk_faxkdB)NZf/dxaPfw)ag:_kNg./)fN:.x?xo)x)Pzk/_fWka)fN/:NZPg2xgf)kNM.x)Z:)k:S/Wa_k-)kx_:xPZg.k/fN)P,?k.:_)/Gx/_*akxZ,xNf_)vkkZff)/Z3NmN:g))g//g??kefxx_ a)RPW/axx_W5NaP:Okgg)/Nfg:Pg:xa)?)/%_/rfkkx)??Z:gZ/gW)PfNkgSPg.g.)x>a/g:Ikae_xW:a/fgP)Zfg)/qgg):/)g7?/5Gxk_.axkVl)akx?WfN/fO_gg:P)NgZ/P::kaf?xvrx)Pxk/.fyxk4gk/:NxPgxagfPkN_.x_g:)Zxp/Wg_kP{a)f:)/Zg.)/f<WPw/g.W))M:x/)Nakxelx::xPWg/)ff)/Z}x.N:Zff_:/aZ?k:)xx!:a)xk3.kfZ#WtZgP:/)ggfKWm.kx.:xx/?)ag_/ofa)_}PkZ:gZ/gZ+Pf/kW_)x#g.)gPa/kg9k/Y_gW:N/fg_WZf:)/daxP:N)a_?/?:xkfPaxx:?:kggaWf)kf(?Zg:ff/x./xg:k/)?xa:x))ga)_fP/k-gk/:a:PgW/ZP)k?f.xxJ:)?ZO/:f.Z^s/Pf:?:Zgg)/fZ:?/Nx:{))/?x/?fakgK?bk:ZxWg/)ff?aZ0fg/xg)xN:/Nk?k:=xx?/aP_gffkf.?WyZxP:WfZx)/?a.k)):xx:?)agxk7f//_VPNZ:ff/gZ/f?NkaN)x/Z.)_:a/.xWgaJZkW:aafg//Zf_k/Wgx.8N)a:?/W_xk)):g_:f.kg.xWfZkfcWgZZP)?/./f::k.4?x:/xZ1gW__f))kzfx/:Z)fgN/:g)k?..x?/:).g)kafZ.2!//f:PxZgx/)PgkxNNxg_))W8x/)xaaxyfkk:/:WgZ/ff{kZgPx)Ug)x::/?W?kN).:w:W._g)xkffkWmkgfZ/):/)/gx.k)v:x./?gagk_MfN)_EWxZ:_f//g/.:NkP))x::.)?gZkxff/a4Z/W:kffgW/ZxPk?Ngx.PN)a:?/NxgP?BWk_:ZZkgf/Wfak_k/xNBP)?:./:W:kg)?/a:k.mgNx_fWkk2_gW?Z)./N/)N)kNz.x?::.xg_)afkG;&kgf:v)a.P/))gkPfNx:h))Ngf??fWgxdZxk:gWWga3_N/kNfPxPxg))g:/Zf)k:5kk;:Wx_gkZkffkW/Zxg?/)gZ)/Nf.kP)Nkx:_gagEfVfkk_A?xkZf))/g/.kNk)a)xN/.:?g^_xfP)av_xW:af_.//N:PkWZgx):N)Zg_f:fa)?-W/_:PPkgx88WZkgZ/xg/P)Ng./PxN:.lx4a:xfBgk/_fs:kafxP.Z)PkN/gf)kND..?:okxg_Zaf_krQkxx?W)N/P//fgkP)Nxg/)_:ga_?fxwxSIxk:.)aNZ/ga/kN.Pxg.g)Pk/a.fx):+:kY:a)_g?za_fkPZZx__/)gg)/Wf.N)oLWx:_aaggW!fa:_NWx/xf).)g/PfNkZ)P^::aN?gfgxf6karxg?)k)Zf//?/Pk/;gx):fk.gx.:fax?Vax_:b)_/f/PaZkf4/xg:P)Ng)P)fqW.#?xa:xP2gk/.xWk/ffx//Z)PkN/ZfW.Nma_?:!/xg_)afxkFgkxgaW))gP/)?gkfsNk.:x):gW/?fW.xG?gkN_)P:Z/ax/kZ>PxW:ZN)g?).f_/:H)am:N)x?W//gfkPfZxNf/)Zg)WNfak)zgax:_xag.lx.kkZfWx0/f)/gg/_f/gg,xk::ax?g.Pxf)ka__xfCk)g://f.PkWFg:):?).gNP:fk/?>:gxPq)/:f/xxZkfX/xk:PaNg:))fI/.pf)a:g)?fk/ZgWk/ffxxxZ)fg:RgfxkN6k)?:Qxxg)8ax_kffkx/PW)ZgP/0fk.PG?k.:xx:g?Z?f::.!#xW?_))qZ/ff/kk)PkN::g)gJ:.f?k:Sxx?/a)Z:W//kfkW)Zxf:/gggx/NfaW)Arkx:))Zk_/f_kk/BWxNZf)Wkk)Pf?/gyaN::.)?gN/.MXkWf_xfOk)WP//kxfx/j:a):Wk.g?/:f.:?/axk){)xZf/WfZkf-/Zg:.xNg:f)f::.})xaNx)fZk//gWk/ffxW/:aPg))gf:?N>.x?:/).?{/Wg_kffkxW.W)kk__/f:WPiW/.:)):ggM):akkx&xxN_)WgZ/ffcPZK.kN::g)gN2.f)k::xxfNa)kZW//gfk)Lk:P:)fgggxNff?)BNxga?)Wk_/ZfkkgNWxk/PO/gN)PfWPg-)x::Z))_a/kgnkWf_x)Nk)_kWaZf.W/<gg):N).gP Naxk_xax_/F)kgf/GxZ/fB)Ng:PfNg./)f:k.Z?x=1x)fWk/_xWkam_)/:NfPgWagfx/N=kx)g:)kkV/:/_kxfkx_/WWZgg)/fkPPFNx.:f):Nx/_gakkf&xNN_)ykaxff)WZE_/N:g))g/*g??kuxxxPfa)_gW/ax_WWGNNP:zkgg)/Nf.kP::xaG?)WW_/nxkkxHx.Z:gf/gNxPf?/gq_xN/.)_ka/xNOkNg_x-/aPfgP)ZfNf/ogx):W)g)?/%gxk_faxc.d)akxPWfNWf72/g:P)NgZ#Pf:kax?xggx)8gk/xx?_khgN/:akPgN/gfP:/a.xxf:)Pfj/af_kp!a:f:PxZggx/fg:P4/xg/))#kx/_aakkfKxN:x3Wg/(ffk:Zmk/N:a))W:/a.?k?gxxf_a)xgWWkfgNW6)xP:?WggfeNZ.kxf:xg_?)ag_/)faP_FPkZ:gx/gaWPf/:ga)x??.)?ka/xf>k:)x)W:/gfgWJZfPk/#ZgP.N)aW?/:xxk?Xax_:?NkgZ)Wf/?f+/gg:f)/a./x.:kgN?x<sx)Pga#_fPNkmx&/:WxPgW+xg)k?f.xg/:)xgm/Nfxk!s/kf:PxZgxg/fkkf.Nx:>))E:x/:_ak.Ad.k:Z_Wg:gff)/Z&fg/_g)x::/gN?k:%xx)::k_gf)kfg/WY:.P:WfZ:)/?Z.kfg:xx:?):kWR#fWr_8?/Z:f)/gke:WNk:.)xWf.)?ga/xf??aCZkW:/ZfgW%ZffkW)gxxWN):K?/Jgxkfqag_:f_kg_.Wf:)f4WgZgP)?:./a/:k.s?xN:xfugW)_fP/khW?/:kfPNN/:Z)kWg.x?::).kWaafkyQD:/f:W)Zg_j/agk..Nx/6)):gx/)x:ZxLf/k:.kWgZ/ff/kZ_Px)tg).}:/.x?kNR.WR:W__gf_kfg/Wjkg__/)::)/fx.k)l:xg:)Wagk)Lf//_D)fZ:x))Wg/.gNk:f)x_Z.))g)WxffNaJgfW:/xfg?/kNPk)PgxxwN)7k?/Nx.P?oWk_:?akgf/Wfak_a/xNcP)?:./__:kg)?Wa:k.8gaQ_fWkkS_gWPZ)./N/gx)kNB.x)/:kxg__af_:LGkxf:W)x.P/)ggk..Nx./))NggN?fWNxu.?k:ZxWg:/kf/kNPPxfNg)aL:/.k/x:skk=:a:_gWWkffaWAZxPN/)gg)/Nx.k)V:x.:)fag_/5faI_1PkZ:_fWCg/.gNkWN)x::.)?gNaxff/a0_.W:kffg1/ZaPk)fgx.1N)gZ?/Nx.W?BWa_:.Wkgf/WfZk_Z/xN?P)NZ./)x:kZu?.a:k.lgWP_f:akJf:agZ)./N/Zf)kN?.x?W:)xgnWaf_kC&kxf:W)ZgP//_gkP}Nx:q)):gx/?faaxq;xk:Z.WgZ/ffWkkWPxN:g)_/:/ak?k:xP)n:Wg_g2?kffaW+ZZP:/)gZ)/Nf.k)P:xx:?)ag_W;fkk_7WxZ:f)/gg/P_Nkg*)x:N.)?ga/.f)ZaL_xW:?)fgPfZfP::Wgx.)N)g??/:fxk)BN__:5)kgxxWf/Cf=Wg?/P)?/./fg:k.0?xa/_?-gW__fWkk2fx/:k)_.N/gf)kPW.xxP:)x/Nkafk?&^a_f:WPZgPW/fgkP?Nx.:))y/x/?fak.!)_k:_)WgafffP?ZIP:kgg)xW:/._?k:?xx>Na)_gWWkffkWKN:P:/)ggP/gP.k)9:xak?)WW_/)f:?_6PNZ:f)/gkxPfNkg/)x?_.))/a/xfOkaqx_W:/ZfgP.ZfP:/(kx)/N):-?/:fxk)gax_:?:kgZgWfa_fy/xg:P)/?./x::kak?xa/x)?kNa_ffPk1a)/:Z)PgW/gN)k?Z.xx_:)?PM/:x_/V6Wvf:)?ZgP//fgkffNx:_)):kx/?xak.z))k:ZaWg)/ff)bZFfg/Wg).)://#?k:7xx)::__gfgkfZfWbf?P:WfkP)/?W.kfW:xx:?)agx:qfWf_qWgZ:ff/gZ//PNk:k)x_:.)__a/gf))apk?W:k)fg>xZfPk/Zgx.ZN):)?/:fxk?j:)_:fNkgZaWfZ:f*yxk)P))f./)f:kgg?xa:xkmgW:_ffPkOfx/:Z)fPN/NG)k?/.x?/:)gga?afk.>HN:f:g?Zg_8/_gk.WNxW?)):gx/?fNxxG_xk:_)WgZ/ff/kkfPx)Zg).g:/._?k/t.gb:WW_gPakfNZWlkg_P/)N.)/fZ.k)<:xx:?Nagk/ifkk_&WxZ:f)WZg/g?NkNp)x:N.)?g:Wxf_.a1kPW:k)fgh/kNPk)/gx..N)?k?//f?f?Vdf_:_;kgkWWfkMG:/xN:P)/x./)_:k.)?xa:xPRgk/_fP.kFfx/:Z)PZN/gf)kNr.x?::)xg?fafkg=7Wxf:WPZg_/)agk./Nx:g))xkx/Pfxfxs_fk:kcWgWWffW+_:Px):g))/:/._?k:)xxl:aP_gW/kfgrW+ZxP:/)gZ)/Nf.k)S:xx:?)agxf>fWg_vfxZ:fP/gk/.aNk:/)x?f.)aka/gfafajkfW:WGfgfWZff6k:gx.:N).:?/:_xk??ax_:9Pkgf/WfZkfH/xg:P)N/./.):k:E?xaNx))gW__ffgkegN/:PfPgW/)/)k?/.xxk:):Z</ak)x8AWxf:W/ZgPW/fg:PANx.N)):gx/))akxl9xk:_PWgZ/ff/kZ8PxN:g)/P:/:)?k?&xxLNa).gWWkfZgWHZxP:Phgg)//8.kx/:xx/?)ak_/Hk:)_<ffZ:kPW#gWPfNagn)k6N.)?ga/:_?)a?_xR!/Pfg//Zfku/gg.):/)Z.?/N)xkffaxkkn)Ng_:Wfkgf8)Zg:Z?NgZ/)_:kaW?xa:x)P/k/_f6ZkwZ./:/JPgN/gf)kN_.xxa:)aZ}/a__k?)a_f:f?Zgx//fgkP*WxPP))?.x/xPakVaCxa/_ZWg//ffG_ZrPxN:Zf)k:/:_?kP)xxc:a).g?xkfZaWo/.P:gxggf/N..k.?:xaN?)Wg_/?x:x_nfgZ:af/gg/PfWkZ_)x?/.)xka/xZIkNYZNW:WffgfUZfN_/wgxZ.N):.?/?xxk?)ax.:&xkgZ/Wfayfo.:g:_)NZ./.f:k:;?x?Nx)B/.k_ff:kHfg/:ZPPg/?gf)kN?.x?::)xZQ/af_kIhk.f:W)Zg_f/fgkPQNx.N)):gx/xPakxcrxk:_gWg//ffP:Z0P.N:k)xW:/:f?kNxxxkga).gkgkfZkWS/xP:fPggPfk(.k.):x..?)aZ_/u.kk_!W.Z:f)/ggWPfNkg()x:N.)?ga/.k2kaU_xW:kPfg//ZfgZ/6gx):N)./?/?fxkx)ax_Nv):gZ_Wf/kfiWfg:N/NgZ/:/:k:b?x7:x)xZk/_k:xk<Zg/:ZWPgNWgf)NNv.x?N:)xg</a__k-ekxf:WPZgP//fZxPbNx.:)):Zx/?fakkWnxk:_)WgkfffPkZ{ggN:gP)g//aa?k?#xx?ka)xNW/:fWfWA/xP:P)gggWNfgO/::xa/?)aW_/;_kk_PWxZ:fP/gg/PfNagQ)x::.)?Za/xfcka:_xW:k)fg/WZfPk/RN_):N).g?/..xkxCaxk/3)kZf/Lxk_fnPxg:f/Ng./)f/kgf?xhNx)Pak/k?WkkUfN/:/PPgPGgf)kNO.x)::)agO/af_k_)kx_2A/ZgP//fPPPgN..:f).)x/xZakafXxg?_)Qkk?fff?Z .gN:g))g:/g??k?_xxxPa)_kW/kkfWW5/aP:gkZb)WNf.k);:kkN?)ag_/k:a)_?Wxa:gZ/g/PPf)/g=./::ZgP:a/aZ-kfk_/WNk)+.//Zg.a/tgx):x:gU?W:fx/_?ax_:A)_q_xW_Zkx2)Ng:g.NgN))fx<.pPxxxx)_Nk/kZWk5?fxW)_/PgP_gfP)N;..?::_xgp/a__kojkxfNW)ZgP//fgaPQNx.:.x:gx/?fakx?Oxk:_)f.Z/ff/kZ&P:N:N.)g)_.f?a:2gx_Pa)kNW/Wgfkg:Zx_:g:gggPNf:W)().x:?ggf_/_akk__WxZNf)/ag/PfNag&)x:::x?ga/xf5ka?_xW:k)fZ//ZfPk/Hg.):N).gxN:fxk?haxx)-)WNf/faZkf?/xg:.fNgN?)f:k.v?xa:xg_gk/kfWkP?f//NZ)PkN/ggxaN&.x?:_P.YVWaf_k)_kxf:W)ZkP//fgkP,gg.:)):gxW?fakx{?.k:_)Wgk=ff/kZiPg/?g))g://f.N)?N).ga)x_W/kffkK)k_P:/fgg)WNf.k)8::Pg?)aa_/Jfkk_?WxZNf)/ggWPfNkgH).::.)?ga/Ngpka)_xW/k)fa//Zk_x/rgk):NN.g?W:fx:?zakZNb)kgf/WWZkf?/xa)vZNgg?)fNP.z?.a:xfyga)Z_WkkIfxW_Z)PZN/ggxaNL.x?:::xgiWaf_k):kx_!W)ZgP//fgkPz?W.:)x:gxW?fakxu#xN?_)W:Z/fx/kZePxN:Pf)g:/.f?a:2xxK:aP_gW/kffaWqZxP:/fZ^)/Nf.kZ))a:N.x?/:..iQW__WxZ:f)WkxNPfNkgs).::.)?ga/.f8ka?_xW:k)fg//Zff//=gx):NP.g?/:fxk)fax_:D)kgf/WfZkfjW)g:P)Ng.W)f:k. ?xa:x)cgk/_xW:kufx/:Zff)N/gf)k?xNWgg).kNgx?N:N.f?Zf/WkZgP//fW:Z_P./VggP?Nk.Z:gxVqxk:.)k)Z/f_/kZVPxNNg))g_f.f?N:=xxo:a)_gW/.PfkW?ZxPW/)gk)/NkWP)F:.x:?gag_WAfka_nWkNNf)/gg/PkNkg?)xNnaP?ga/xf?_aC_.W:af_.//Z_Pk/)gx):N).gkf:fx:?zax_:%)kgf/fWZkf?/xg/P)Ng./)fNN.l?.a:x)9gk/_fW//?fx/:Z)f_N/g_)kN4g9?::PxgRWaf_k3Bkx.?W)ZZP//xgkP%Nx.:Nf:gx/?faaxXbxk:_)WgZ/ff/ak?PxN:g))kN).f?k:saZ._):aNhqkWfkW>Zxg_fW/ZZ_PZaNgWP)Nagf/ax4?fkk_UWxN/kPfaWZZaf:/WZaPkNx_a)NN^.Z))gZW/a5fg//ZfgcfZWfZ=?g/?ZlP.N/_P?/:_x/(:_OWZZkfG/x/?.xf?/a_x::.x?xa:x)fa?N:DxZ?).Z//ZgPgN/gfxNf)Na.NPx:N?vag_kDLkxZ:_/WZa./_gkPzNx.:)):ga)_faa:xx:?)ag_/qfPf)ZZ)PNN:g))gPf/xgZ)Nag_PWf_kBPkffkW4/kk__xWfZPNxgf)}:xx:xx?NNx.g/NaWx)Daaf?aZ3P.Nkg;)xPkN.gWaWxf+kaY_xW:k)fg//Z_Pk/(gx):N)_ggN>fx:?fax_:D)/WakxP??.:/xg:P)Ngnf)f:k.2?xa:x)lg:/WaWkk%fx/:Z)PWN/gfP_Nc.g?::PxgC/af_kdZkxfWW)ZkP//fgkPL/a.:)x:gx/?fa:xq?gaa_)WNZ/fZ/kZDPxW:g/)gNP.f?W:d.fh::f.PW/kkfkWkZxP:/)Zk?aNfg?)IN_x:?)ag.U?_kk_gWxkaf)/gg/fx/WgQ)W::.a?ga/xfJkaP_xQ?k)_?//ZxPkWYkP):Nx.g?W:fxW?5:g.?b)kNf/WkZkfe/xk:fPNggP)f:W.m)?a:.fZkk/_kWkaIfx/:Z)fk./gfP?NXgx?::)xg)pag_kmgkx_:W)ZgP//fZ/PYNa.:)k:g.*?f:kx_6xaB_)WaZ/fZ/kZof/N:g))gN).f?::ugx)Za)_gW/kffkWgZxP:WWgg)/Nf.:)m:.x:?)P/_/rfkk_-WxZ:f)%gNWPfNkgu)x::.Z?ga/x/%ka)_xWNk)fg//afPN/igg):Nf.g)):f.:?.axxCl)aff/WfZkf WZg:PfNgg))f::.y?x:Wx)Yak/_xWkkcfx/:ZxPg/)gf)kNM..?:Nf_xs/aZ_k9xkxf:W)agfW/fgWPHNa.:)N:ggc?.akxxhxaa_)WgZ/_xWZZ0PNN:Z?)g:/.f):NZxx?fa)x.W/kffkWMa?P:/.ggPxNf.:)INx.f?)a:_/??kk__WxZ:??/gg/PfN/gQ)g::Z):)a/xf kaY_xGfk)fg:xZfPk/Ugg):NP.g?/:Nxk?<ax_:r)kgf/?fk/fE/xg:P)Ngg_)f:k.a?xa/x)EZk/_fWk:bf//:ZfPg/cgf)/N7gg)P:)x:*/:__khSkxf:S.Zgfs/fg/PDNg.:))f/x/?.akx)uxk:_)WgPfff//ZcPxN:gP)g/7x)?k:_xx?)a)_gW/:fxPWeZaP:/.ggPZNfg:)P:x.)?):g_/yfkkx)2jZ:fZ/gZ/PfNkgOPgNx.))6a/.fzkao_xW:aCfgWPZff)/vgg):/)gg?/:gxk?)axx?i)kg?NWfZkfY/kg:PfNgZ/:/:k.#?xa:x)?Mk/_f..k*fx/:ZfPgNWgf)kg).x?::)xZl/af_kFlkxf:W)Zggx/fgkPjNgZ?)):gx/_.)Z::._?/k__NYWaZfWW/ZZf?:NgNf./fgZ)ZNfg(af_WW/kffkfxWaZW_xW.kI%x.:)f:xx:?)8a:../oW_?WxZ:f)/gg/Wf)N:-)gN).)?ga/k..Z?::_x/N_fkW/ZfPk/1NkZ?fk/:.)Px:a./)Z::xP?kaPx)WNaZ/gZxP)Ng./.g)W/ggkWWN?.f?N:x)Nk)f//:Z)Pg)fWPZgffa:.N)_:N?R:<_k2XkxgWx?^kk:fZW:g)P./zgaPN/??xa/xnpxk::Z_Z!.ag/:ZWPxN:g)xkPN/x./)_Ng_W?aN)xPWfaPxgWakg/fZZ)/Nf.k.x)aN/gx)?:?x_?xZ?x)E_kZ_xWaZZfgWf)gN).)?ga/a/_P?/akx??kfkWaZfPk/l:.k?fx/.ga)_N/.Z?ZkWxa))aPW_?W)aP.ff_,_NxZxP::.g?xa:x)_NW.Z.xZ?)af_?-fPk/kgf)kN(:ax_r/N?g?)gkxx??Waax.!:f0/_gkP8NxNf)_:Z.G?gakx,Jx^sa..B?)fx/WZdPxN::_Z.Pk/Pg::)xk>:a)_gfP?)aW_NZgfP/)gg)/)k/PZP)W:/./?Nx}ogkk_SWxW?gx_?WaPxNWgb)x:::._:).N?P:a)_WW:k)fgfPNNgkf?/kZ#Pa/xg_:xxW?2ax_:_x??:)xXWWf)W)g:P)Ng:/g_)/Nf.W)k:Z_k?.aax)?ffgWfZ)PgN/:NZgfP/k.NP4:a.Pa__k*hkxf:W)Zg_/)fg:PPNx.:))PxNPgaa:xgSxk:_)f:VPa:_//PZW_x/.)kN).f?k:RafxN?WaNWWkffkW9ZxP:/)xgxNNxgf)R:xx:x.Q?k_.x7aaf_W(?ah_:ZdP/NkgQ)x?Z/?gxP)N.xW)):g_N?xfkW:ZfPk/A::Z_fDN:xf)NN:gP)kZWxk??ak_gZ:fg/xg:P))N:...P//)g_).:.!kaf_fWkk+gZ_? Sk:fPWx):Ng.x?::)ag.N).:P.f{WaaxmZZP//fgkPCNx_:Z?HgxW?fakxjdxk:_)(fN/f_/kZEPxN:g)qgPxaf?::Gxxd:a)_kL_kffkWiW:k/_?W_gp?aa:)?:xx:?)ag_/gf+<Z-W.Z:f)/gg/PfNkkgxx:/./?ga/xf_g?W:kx_6ga?_?W_k/fZW_ZkNfg??/:fxk.P)_:/.??N:)_Nlgk_/.g:P)Ng./)f:k.D?xaNx)Egk/_fWkkEgZ):ZffPN/gf)k??/f.W)kN.g8Af:ZxZ?f:UWfZ/P//fgkgvP.//g.Px/)?xaWx0Rxk:ZgxkWWa?fWZ?PxN:g))g:/.ftkWWxg?_a)_gW/WgkWxgFkggfP/kZPf}.:)a:xx:?)FgaWxg#/aZxfzPg/fNWfkgN:Zx)x::.)_k?W:.._?.:gxa?.ax_)/gk:f?WfZWf)NZZ+)ZNg.P)W_/?_kgf/Wf/)kW_gW_k:f./:Zg)aN:_.)g:axW?::?_WG/ak//ZkPgN/gf.:PW/k.NPxN?.N))_:wNkxf:W)NakN_BWZk))Z/?ZPPNNPg)?N:_sga:_)WgZ/gxfaWPk?fPWfZ.fP/)./cPN_.g)?:kP?kx_)WDZxP:P_/NZaPNa:gWP)NS?f:f_/dfkkkfxgWNa=_aW/Z_f:/_Zf)W/a?k:)xf!kap:k_N?_aPW4Z:Pk/3gx.Sf./k.WPgNP.W)f_/VZkgf/WfNNkW_f^SZ.fxW))x:W.Y?xa:kg..?::gxNk)_)/:Z)Pg)dWPZ:PfNag/e_N..k)P::PPk.f:W)ZgP//fgkPn?x.N)):gx/?fakxjP)/:_fW:Z/ff/k2.kgPNW)?f:/.f?k:5/:{:af_gW/kffkWhax/x/)gk)/Nx.kf_:x./?_agx)sfNk_iWxZ:f)/:g/PxNkgf)x:/.)?/:/xfI:aBx_W:kPfg//ZfP/)?gx):N)g.?/:_xk)):__:VfkggWWfZkfF}x?RP)Nk./)x:k.k?xa:xgwga^_fWak9f./:Z)_)N/gx)kNM.x?::)gg)?af_:{0kgf:?.Zg_&W9gkPfNxk:)):gx/?f:px{ugk:_xWgkhffW<kxPxN/g))/:/._?k:?xx?&WP_gW/kf_YW=Z.P:WfZ.)/Nx.kPN:xx:?)Ngk_yfk:_8WgZ:x?/gkK:xNkgP)xe).)?ga/xf):as_gW:kffgWjZff:WZgx)WN)Z_?/:fxkP9:g_:D_kg_?WfaZfmWgZ/P)N:./Pf:k.3?xa:xgpga?_fW:kvfg/:kf_%N/gg)k/N.x?::)gg)gaf_/73kkf:??Zg_D/.gkP_Nxaf)):gx/?faWxeLkk:_fWgkRffW:ZZPx/?g)f_:/.f?k/>.ZD:a._g#PkfxZWHkgf./)g/)/W..k)d:xx:?fagxPzfk:_lWgZ:.)WZg/PxNkk?)xW:.)?gNfxf?2a9_xW:k)fgW/k:Pk/)gxx?N)./?/Nx_g?=a:_:J.kgf/Wfakf./xZ)P)N/./_?:kg)):a:xZzgN._fWkkO_g!.Z)fAN/gg)kNU.x)/NNxg?.af_/H4kxf:W)kCP//kgkPZNx./))Ng.:?fa:x9ffk:_gWga-.N/kZxPxN/g))g:/ZfP?:Dx:R:ag_g?Nkf_:WaZxfP/)kk)/Nf.kP)N?x:?kagZl=fkk_VWxk.f)//g/P:Nkg))xN:.g?g:nxfP/ah_:W:N)_f//ZxPk?kgxxPN)gke):f.-?H::_:9)kgx/c:Zkfx/xZ)P)/x./ffN?.h?:a:xgKg:t_flkk?fx//Z)fxN/gk)k/)ZU?::gxg?Paf_ky&:xxxW)Z/P//kgk_NNxg/P?:g._?f/:x4oxk:xfgkZ/f:/k:)PxN:g)PkxZ.f)P: Zg%:a)_gW/kZfkWxZxf_/)gk)//fZf)-:gx:_.agxfXfNkx.WxZ/f)WPg/xxNkZ)Pk::.g?gN.xfMkaD.x8kk)f///ZkPkWWgxP///.g)_:fg:?Hax_:?fZ_f/W:Zk.)/xg:P)/kg:)fNP.m)_a:x)Jg:RxkWkkkfx?/Z)PgN/gfffNn.:?:::xg?Fafxk??kxf/W):pP//kgkf)N..:)g:gg.?fakxq)x:F_)W/Z/fk/kkWPx//?f)gN_.ff::MxxF::f/kW/k:fk))ZxP:/)ZkfPNfgP)>Wgx:?)ag.,?gkk_kWx:Wf)/gg/Pf/)g-):::.:?g:pxf?k:?_xW/k)fa//ZkPk?ikm):Nf.gP_:f.N?;/x_Wt)kkf/e?Zkgx/xZ/PfNggf)f/..E?xa:g)fWk/_kWkkxfxtaZ)fkkZgfP?N5Z(?::)xg*/:P_k5xkxf/W)ZkP/WfZPPJN:.:_.:g.S?f::x)AxaP_)?nZ/ff/kawP.N:gZ)gN_.fPZ:;.g?.a)x+W/NxfkWrZxf/W/ggP.NfZg)J:xx:?)Zf_/bakk_ZWxZ/f)WgZkPf/0gD_W::.Z?gN,xZCka._x?fk)fg//af_x/pgN):NZ.gPN:f.:??axxf4)Nkf/WfZk_)Wgg:PaNgZ:)f:k.S?x:Nx)^Wk/_NWkk)fxW:a?Pg/fgffxNH.N?:Nf..}/aa_k?Nkxf:W)agg_/fZ?P6NN.:f?:ggbNWakxgVxN)_)WgZ/ffLfZnPNN:gf)gNC.f)k:_xx?Pa)gNW/kxfkI)Z/P:/kggPPNf.k)Q/xgP?):S_/c:kk.NWxk/_?/gZ.PfzPgM)x::gf?ka/x/Gkaf_xW:k)_kgZZff_/sgk):N).g?/Nxxk?gaxx.2)kkf/FfkgfE/Ng:f.Nggx)fWkg.?x:Px)fgk/gaWka)f:/:ZkPgWagf)kNtZxP?:).JD/a:_k?Wkx_/qkZgf./fZaP^Nx.:))/kx/?:akx)pxk/_)*gaNffW)ZuxaN:gf)g/+N.?k:Zxx))a)_gW/:fxxW1ZWP:/aggxZNfZk)/:x._?):?_/)akkxU?PZ:fk/g:ZPf/Pg{Pg/P.))?a/.kbkaO_x?:kWfgW.ZffP/jZ)):W)gP?/:Nxk?ZaxgPu)agP Wfk)f;W)g:PaNgZeP_:k.Z?xNfx)>gk/.f8Wk0fW/:ZaPgWNgfP:/f.x)x:)ZkQ/af_k?)kkf:WNZgxN/fgkPQNx.N))N?x/?Wakx)dxa:_WWgk?ffWPZOPWN:Z)f.:/..?kW_xxr/a)gg_/kff/W3a.P:WNggP/WP.k)f:xk??)ak_/?xZg_iWWZ:f./gg/PfWkZ?)xN_.))?a/Z?2k:).)W:k:fg?.ZfPk/HZgP:N)gP?//Nxk?Aaxx/SWkg_kWf:PfJ/xg:P)N:./)N:k.:?xa/x)?ga._fW/kQgf/:ZaPgWeaN)kNZ.x?/:)xg</Nf_/BhkWf:WaZg_N/fZ:PZNxgx))/kx/?fak.)9Zk:_NWg:=ff/kZhPx//g)P?:/.W?k:)xx?::W_gF)kf./WXZWP:?)ga)/Ng.k_k:xkP?):kf)1faP_Oi:Z:f)/gk/fNNkgZ)xN_.))xa/gf?Pa(_WW:kafg3UZffkWggxPFN)gx?/:Nxk)):Z_:zakg_PWfZkf=XxZ?P)/?./)N:kZN?x:/._sgag_f):krfx/:kf:kN/gW)k8).x?::).kkZafxxr&Ngf:W)ZgP/WZgkPZNxgg)):kx/)fNxxy5kk:Z.Wgk.ff?kZ.Px/&g)PP:/kx?kN)xa;:aa_g?.kffkW!axf)/)Z?)/NN.kPW:x./)bagxg=f::_iWxZ:_fN_g/PWNka))x::.))k:axf?xa&.gW:k)fg68kxPk/Ngx_/N).g?/:f./?paW_:iWkg_SWfkkf//xZ3P)6+./)N:kg))Za:xacg:._fWkk!xxWfZ)f?N/gN)k/W.x)/_fxg?gafg:n+kxf:lf)kP//Wgkx)Nx.:))Nkg/?f:xxzPNk:_)Wga _P/kZNPxM/g))g:/.f)?:vxWy:aW_g&,kf_kuxZxfi/)ga)/NN.k)4Ngx:?aag_WMfkk_#?xkaf)W?g/PNNk:f)x/:.:?g:.xf?Pa6.kW::)gW//ZNPk/ZgxxaN)ggPN:fx/?4a/_:1akgx/PaZkfZ/xgNP)?a./)kPk.d?Wa:?.-gkW_fWkkofk)NZ)PgN/PZ)kN?.x)wlPxgn/af?M>uk.f:zf)kP//Ngk_:Nx.:))NggN?fa/xV?kk:_aWg:/_%/kZfPx/)g)_W:/gx?W:JxWL:a._gW/kfxk&aZxf_/)Z?)/z?.kP)::x:?:agg.!fkk_2>gkZf)WPg/_NNkgC)xN/.a?g:kxfPPa(_xW:k)_///ZNPk/:gx)/N)ggPN:fx/?uaN_:zakg./ekZkff/xk:P)?W./PxN..2?Wa:ZWpgk/_f?kaZfxW_Z)f?N/kP)kNJgf?:::xg(Waf_k4Iagx_W)kPP//_gkPdNxZ:Pk:g.Z?f:_xL)_k:xf kZ/_5/k:)PxN:g)PkNN.f).:mxaU:a)_g?/NkfkWNZxfZ/)a_)//x.a)YNfx:Paag_/ofa:_kWxkaf)??g/PfNkZ))/::g)?g/.xfRka*_x?.k)__//kfPk/Fgx):/a.g)Z:fxk?3ag_:?fa.f/U1Zkf?/xg:P)WgfP)fNx.U))a:g?0g:zxZWkkNfx)PZ)PgN/ZxP.NAgf?::.xgn/af.kXfkx_kW)kxP/??gkf)/?.:P?:gZZ?fakx;?g:f_)*gZ/xW/kZwPx//Za)gNW.ff_:sxxe:a)N7W/a)fkY?ZxP:/)gg/fNfgx)5:xx:?)ag_/kZkk_kWxZ:f)/Zg/PfW:g9)W::.f?g:1xf?kWN_x(?k)_N//ZNPk?{gg):N..g_k:fZg?*:x_WC)kNf/)ZZkf)/xk:PPNgg.)f:a.2_ga:xg?ak/_NWkgqfx/NZ)PgN/ggxaN&.x?:k)xgUWaf_/f?kxf:W).ZP//_gkf)xg.:)a:gZg?fakx7?gaa_)j)Z/._/kZ-PxW::Z)gNg.f)f:Yk/L:ag)fW/kWfkW3ZxPN/)gN)/Nf?a)5:xx:?fag_/^fkk_?WxZ:f)/kg/PfNkgV).::.)?g:_xfdkaA_xWNk)fg//ZgPk/2gx):NP.g?/:f.P?#ax_:#):kf/W/Zkf)/xg/P)Ngk/)fNf.b?.a:xPzgk/LxWkkQfx/NZ)PgN/g_)kNv.xPx:)xgF/ax_/}dkxf:P.1xaP_?g:PfNx.:))?Z/P._?/x?bxk:_)WgZ/ffNk:WPg/:g))g:/:g.WPgNkx8)faZx:?.ak_?Qgk?_2/ak.Nx.W)B:xx:x.W::..?N:_)WNZ:f)/gN)ZZfNWfZgPa/a?k:)xfeka%:N_N aa:WsZ.Pk/egxZkP./W)-:gxk?Kaxk:x/8Z:.W_Zkf(/xg:P)Ng_/xP:aRkkW__Wak?f.?NPZk)__/:Z)Pg)P/_ZNPZ/fgPhxN?g7?ZaN.fpWaaxbZkfx/fgkPc)x/aZ_P?/).N)Z:/qgab_)WgZ/agfa7Pk?N/ga)g:/.fx/P.:a.?)7k?x:#kaZW)k)P:/)ggg)fxNag/PZN:.P)k:P.)YN:ZWgk)f)/gg/gfPaW)gaPk/x?Za/xfYkaq_xW:k)fgWKkkPk/!gxx/PPNagZ)aN:.W)a:kxxW::e__GgaP_x/NkfPN/:g.fP.)?:a:x)^gW?:x_Wl?ak_?ZPaN:ZN_/)//WaQ.z?xk??af_k60W_:?xxZZ.??.aNxPsZkW/_J..#?WakxshxW?aPxa=.a)_?/Pkk__//gN:W:fPZZ.k_:?Z.f)PNk_fkW4ZxP:/)ggW/?PdZ)p:xx:?)N__/Ofkk_4WxZ:f)9gkpPfNkgs)x::gx?ga/.fRka)_xWNk)fg//kxP:/<gZ):/?.g?/:fgk?)ax_W-)kaf/W:Zk_)Wag:PxNggZ)f:k.0)gNxx)1Nk/__Wkksfx8://Pg/Pgf)WNug/?:/)g?A/aZ_kS_kxf/W)kkPW/fZbPJN..:)):gg/)?akxx xa)_)ufZ/xf%&ZzP:N:gg)g/f.f?kN?xx7Wa)_/W/kxfkWya6P:/xgg)/Nf.:)#Ng.Z?)aN_/&Zkk_EWxa:xg/gZPPfNWg%)/::gf)Za/xk6kak_xW:k)_k/WZff?/iZg):N).gP3Nkxk?gax._K)kgf/txk,f5/Wg:ffNg./)f:kgP?x:?x)??k/_xWkam_//:ZxPg/agf)WNEkx)&:)x:9/:._k?.kxf:W.ZgP//fg/P(Ng.:f)N.x/?fakxnQxa__)WgaZff/kZsPgN:gP)g:/g)?k:Bxx}:a)_gW/:f_/W8ZxP:/)ggf)Nf.kPf:xx/?)ak_/{fkkx)i_Z:f_/gZNPfNkg<fxgP.)?aa/x.Bkag_x=/k.fgW)Zff_/&gx):/fgx?/:Zxk??ax_:O):g_:WfZWfE/ag:fkNgZ/).:k._?x:?x)wkk/xxW:k,f:/:ZPPgN/gffkNW.x)):)x/{/:e_k)n/Nf:WgZgff/fkAPENxfa)):ax/?kakx)4xk:/gWgk)ff/kZ#P.N:a))::/.g?kN!xx?/a)_gjkkffkWLZkP:/fggf/NW.k)1:xx:?):?_/Vf:?_JWxZ:ff/ggWPfNkgN)x::.)?ga/xf;kN8_NW:k)fg//Zff//wgxPaN).k?/:.xk?7axx/??kg_?WfkZf;/xg:_)gW./).:k.P?x:fx)?kaZ_fW/kv_?/:Z)PgW{kM)kN_.x?N:)xgY/NfxPt%kaf:W.Zg_x/fkkf{Nxg?)):Nx/?xak.)y.k:_gWgZWff/kZ=_x/sg))/:/.k?k::xx):?g_gvfkf_yW2k:P:/)gW)/N..k)x:xx/?)agxM+fk/_7WxZ:fP/ga/_INkgf)xNl.))ka/xf)vaQ_xW:kxfgWsZf_kWagx):N).g?/:Nxk?zag_:O)kg_JWfZafnWggNP)Ng./P):k.d?xN:.P6gk/_fWkkrfN/:Z)faN/g_)kNf.x?::)xggaaf_kS;kgf:WPZgP/G?gkPXNx.:)):gx/Pf:/xVKxk:_)Wga)ff/kkNPxN/g))Z:/.f?kN)xN5:a__giNkffkWtaxfa/)ga)/N..k)g:x./)Pagx)bfa__;WxZ:_f/Ng/PZNkg?)x::.)Pg?kxfGWa!_aW:akfgu/k?Pk/_gxP?N).k?/Nx.Z?ta:_:LPkgf/Wfak_a/xZ)P)N/./Ps:kZ6):a:xgUgaf_f?pk#fxEZZ)PaN/gk)kN).x?:Nfxg?)af_km&kgf:^fkZP//ZgkP_Nx.:))/gZf?faWxDGak:_kWga1_:/kZxPx/xg))g:/gx?W:zxNq::f_gW/kf_:4)Zxff/)ZN)/Nf.kP)N?x:?aag.*Vfkk_VWxagf)/Ng/PNNkg))xN:gL?g:)xf?.a*_aW:N)f://ZgPkWPgx)WN).g)?:fxk?Mak_:Vfkgx/U_ZkfQ/xg:P)/?./)f/x.A?xa:xfOgkW_fWkaffx/:Z)PgN/gf)kW}g)?::)xg8/afx/j^kxxfW)ZkP//xgkPCNxg/P?:g.??f:Zx7qxk:.)kWZ/f./kZPPx/fg)Pk/?.f?/: .?u:a)_g?d:?fkW_ZxPN/)gg)/WfZ&)%:ax:?.ag.xpf:k_:Wxk?f)/Ng/PxNkZ)Pe::.g?gaWxfIka+.x{Wk)f///ZkPk/:gxf:?Z.g)f:f.4?<::_:3)..f/W.Zkfx/xg/P)Ng?f)f:/.}?xa:xP3gN/_gWkkffxW:Z)PaN/gfPaNd.x?::xxg?7af.k?Pkxf:W)ZgP//NgkP{W?.:)):g.3?faaxXhx:%_)WgZ/ff/kZFPxW:ZP)g:/.f?k:K.k4:a).fW/kxfkWPZxP:/)ZkPNNf.N)GN_x:?)ag./aakk_PWxZWf)Wcg/fx/ZgK)k::.N?ga/xf?:ag_xh?k)fZ//ZfPkU0Zg):N..g)P:fg)?<NxxaY)kNf/WZZkf)/xZ/P:Nggf)f:a.-?xa:g)cWk/_kWkkxfxWgZ)_gaggfP#NB.:?:Ngxg4/::_k#Pkx_)W)ZkP//fZaPnNk.:)):gxW?f/kx?zxas_)W:Z/f./kZ,f_N:g))gN).f?::&gx))a)_gW/kffkWZZxP:W:gg)/Nf.:)m:.x:)faZ_/Yfkk_/WxZ:f)GgZkPfNkgD)x::.Z?gN=.g^ka?_x?xk)fg//Zfa./tgx):Nf.g?W:fxkZxax_:*)kZf/WfZkfx_xg:P)NgS:)f:a.n?xa:xxfZk/_fWk)/fx/NZ)Pgxfgf)kN(..?::)xg)/Wa_keHkxf:W)kZP//kWkP!Nx.:a!:gxW?fakxe}k/N_)WgZ/N)/kZ?PxN:Gg)g:/.f?a:txxo:N){)W/kffkW8Zxf)/)ggkaNf.k)m:gx:?Pag_/axkk_eWxZNf)/gg/PfNkgU)x::.f?Wa/xf9ka)_/W:k)fgP)HZk:f?WkZ_f?/x)2/xxk?;axZW.??ga._ZW/xG)kW_k_Pa/NZx)/Zj_W)kNg.?))aZ?kWfa_;:N_kff.Wfg:PWN.g/)xxZ=/af_k&9kxf:W/NgfL0?gkPBNx/fZxP:N/g.WfgWP_?BaaxaO?aP_:WfxffP/Z_.)):ax:PZk/_N?Zk).?lkf:WxZxP:/)NxZNfg/PgxPWx/?Zag_/9f/NaWxf?lk._x5)Px/xg2)x::/_.NP):..x?Z:x_/??kZxrWgff/jgx):N)W/?/:fxk?;ax_:j):gBNWfZkfO/xg:P.Ng./Pf:k.)?xa:x)!kk/gf9Xk{fg/:ZgPg/jgf_kNZ.x?/:)xZ3/a._kn9kgf:W)ZgfC/fgaPe/g./)):gx/?aakxw}xa/_kWgZWff//Z2PxN:g)k_:/.f?k:)xx7Na)_ga-kffkWdZ.P:/)gg)/Nf.k)^:x.Z?)ag_/G_kk_rWxZ:f)kg/g.fN:gk)x::.)x:)PN:./WP:_xg??ak)?Zxfe/qgx):?_/kgP)_N/._agxk*)kgf/PkAPk/fkN)ZafkW?Zg;NNg.W)g:x!kax_fWkk(ZZ_?W/ZNf?WggWPf.g)?:)xgz/qg:P.f?)a?WfZ:P//fgkgjf)NNZa:Zx/?fakx&Fxk:a:PgkBfa/kZuPxf)WfZ.Pa:xx?5)x.O:a)_gW/kf)k_WNxP//ggg)/NfaNgWP)Nagf/ax(?qkk_#Wx/Pk._::Wkgf/W)gW)//.g:)Pxx?ka&_xW:/fkZ_?WWk?_)W_k?fYN:x?PPNx.W)ggW):kgf/WfZkW:/xg:P)Ng./)f:kZKP?a:x)Hgk/_f2xkz_g9iZ)PkN/gZ)kNi.x?::_xg??af_a;ekxf:W)k.P//fgkPPNx./)):/.-?fakxOs/k:_PWgZ/ff//N?PxN:g)P7:/._?k:fk.L:a)_g).kffaWcZx:)/)gg)/N_.k)}:xg:aZag_/Efkk_VWZZ:f)/Zg/PxNkg9)x::.)?g:/xfRNaX_gW:k)fg//kgPk/fgx):N).Z?/Nx.Z?paa_:&Nkgf/Wfak_)/xZ?P)NN./)N:kg))Wa:xg}gkW_fWkkL_gg:Z)PWN/g:)kNn.x)/NNxg?xafxfD,kxf:W)aPP//ZgkPgNx./))Ng._?fa/xL?Pk:_.WgZ/_1/kZePx/-g))k:/Zf)?:%xxC:a)_gG_kffkWgZxP:/)gk)/N_.k)Lf:x:?)ag_W(fkk_l?x/Nf)/gg/PfNkgP)x::.W?g:=xfUkaJ_xW::)_P//ZxPk/)gxPvN)gkP_:fx/?;a:_:Q)kgf/pkZkf)/xZoP)Nk./)fNZ.F?Za:xfXgk/_fWkaNfxWCZ)PgN/g_)k/)xf?::.xg?Zaf_kSs:x_ZW)ZNP//ZgkPZNxg/Pm:g.f?f:fx^dxk:xfW:Z/fa/kZkPxN:g)Pk/g.f)):%.p+:a)_gW/kNfkW_Zxff/)gk)//fZ?)q:kx:?fagxP&fkk?WWxZ:f)/:g/PxNkkCNH::.)?ga/xf??al_x.Zk)fg//ZxPk/?gx):gf.g?/:fxa?bax_:q)kgf/WfZkfZ/xg:P)Nkgf)f:k.Xxf)aNx.??f:NW:a:fx/:Z).afNWfZPP_NkP:AN:Ng.NfkxxZ?fa.?)/:kNLf:NZ:PW/:gfP.:Wgx?/x)?)k:_)Wg/_kZ_/N?kk_bWfZ?P</Zg/)_xg?fa)_gW//gaWx)W.a&faW.Z:Nxg))3:xx:x_?N:kxZeN:f_a*GffWfg/PfNkWPgaf}N_gf).Nfx:?Wa.x/lxfkW_ZfPk/j:ZZafz/:gPP)N/??ax_:H)kgf/Wfkxgp/gaxP)Ng./g:P//fgx)WZ:P.NN:f_a%/aZfW,fk?f/WgZNW/NZga)WZ../?:aax/?kaa_W:_kf_iWWkg{P/.g.f?Zafa/Z.)Axk:_)Wg_kff/kZBPxN:g))g//g:?k:6xxQ:a)_aW/axfWW}ZgP:/.gg)/Nf.kP::xxW?)ag_/hfkk_^WgZ:f)/gZ?PfN:gX):/_.)?ga/x:Rka?_xW:k)f:)WZfPk/9g/):NP.g))#_xk?paxxN;)kZf/Wf)(f!/xg:PPNg./)f/k)W?xa:x)Ggk/__WkkV_g/:ZfPgN/gf):Nykx)g:)xkM/aa_k*)kx.:HaZgfe/fg/PKN/.:))N:x/?fakx)qxkN_)mkk)ff/kZUP:N:g))g/;.:?k:?xx?_a)_gW/kf:.WbZxP:/fgg)WNf.kN):xx:?)aZ_/Ofkk_IWxZ:f)/gZgPfNkg}).::.)?ga/xfDka2_xWNWfUR<:?Z)_P?x/xaNf./?/:fxk_P)g:?xP?:aPW_ZkfK/xg:P)Ngx/xP::.f?xa:x)_g?ka_.Pk)_:/:Z)Pg)6/_gNPaNNg/P?NN.:?gk/.)U.akx_GgZW_x/WZ/PZW_)P:gx/?fakx3gx/NZ)Wkk?ff/kZzkff?WZ)kN).f?k:XaZ._):aNBCkZfkWHZxZ?)xW?Zajxg:)R:xx:?):P_/Hfkk_ WxZ:f)KgZ/PfNkgK)x::._?ga/.xtka)_xWNk)fg//Zff_/cgZ):Nf.g?/:fxk)xaxxlR)kgf/WxZk.w)_g:PxNggf)f::.>)g:Nx)1Nk/_/Wkkzfxs:ksPg/Pgf)WN9./?:Nf.W,/ak_kifkxf:W)kk_a/fZ?PoN..:)):ggi)EakxgdxkN_)WgZ/_xWaZ&PWN:gZ)g:/.f?kggxx??a)x?W/kxfk2Fk_P:/xggP.Nf.W)C:x.g?)ag_/8gkk_)Wxa:fg/gg/PfNkg&)a::.))_a/xfuka)_xWNk)fgYxZfPk/=g.):N).g?/:fxk?maxxx=)kgf/W_Zkft/xg:P)ag/Nxf::gY?xa:x)fk&Wa.x_L.ag_a,.kxf):.ZZP:/_g/W_xk?faf_kjn/Za/_.WZa)fZg:P/Nx.:))D/N.g)?/kxxW?/:_x:/?k:_PW:ZkN/gx)g:/.fxk)::.g_af_WW/kffk_xtgkafWNk._?x.:)_:xx:?) ::..g?xa_Wgkxf)/gg/ggPWWgZk+W/?gf)NNxPNa?_xW:k)fg//ZfPk/FggP)N).g?/5.NZ.:)_:/P_:kf/WfZkfqx:g:P)Ng./)f:k.oPxxPx)Cgk/_fWkkPfx/:kPPg/ygf)aNB.x?::).ZR/a._kn)kxf:W)ZgfW/fg/PsNx.:)P:gg(?aakx_9xax_)WgZ/xf/:Z+PaN:g.)gNf.f)::.xx?)a)_ZW/kffk,)PxP:/Zgg)WNf.k)<NgxW?):*_/6_kk_LWxZ:_Z/gZPPf/)g4)g::g)?Na/xg ka)_xh?k)fgWkZfPk/Rgk):Nf.gP/:/xk?eax_:q)kNf/Wfa=fO/xg:PfNg.W)f:kWx?xa:x)Jgk/_fWk:0Z./:Z)PgN/gf)NN>.x)x:)xk=/a__kHokxx:WPZgfd/fg:P2Nk.:PfN)x/?gakx.vxk:_)Wga.ff/:ZOPkN:gf)g:/gP?k:PxxL/a)_gW/kf_PW-ZkP:/)gg)WNfg:8/:x.??):)_/0fkk.^saZ:f./gZPPf/1gRPg/P.)?/a/xNckaz_x2/aWfgW_ZffP/Hgx):/fg.?/::xk?Zax_:0)kgxkWfZWfm//g:PfNgg/)x:k.f?x:fx)dNk/_f:Zk6fx/:ZxPg/qgffk.k.x?::)xg0/aZ_kQq)Pf:W)Zgf{/fgaP Nx)/)):gx/?_akxbqxk:_)WgZ/ffW:ZDPxN:gP)g:/.f?k:VxxW:W?_kLgkffkWJ/kk?_kW:.MfZ//ZfP_Nk?fag_/Kfkk_?WxZ:f)/gg/PfNkg+)gN..)?ga/k_.g?Pa/xa?fZg_NWNkg_fggPfN).g?/?fNZgP?WN!xa?.a:Wxk?fL/xg:ggPN/?ZgPZ/)fga/xkvgk/_ffPh/aZxyWPkxf?/Z):Nf.x?::)a:.P)::/n)k:f:W)ZgZg)NWgZfPaWf)f:/x/?faka3x.?/a.xx?)fx/NZtPxN:W,gNf_.x)Z:ExxX:W_:fx.^.a__?Wgkgf.:kkPfg//gWPfx/?xag_/RfWNaZ.U;?ffW/g/PfNk:)g.)WNN.WP NP.W?/ak_R?fkZ_:Y.kkf?WgZ?fUNaZ.:_xk?8ax_:d)kg)/PPZ:ff/xg:P))xNWZ?)W.)?aa:x)KgiPZgxPDN.g?LZ)PgN/gkxkNm.Z?::_xg,Waf_:z3kkgNW)ZgP//.gkP?Nxg/af:g.??fa/x%nxk:xfM.Z/fg/kZgPxN:g)fg):.f?/:%xkK:a/_g?okafkW_ZxP//)gg)/Nf.W)2:kx:?fagxG8fak_PWxk7f)WPg/P_NkaS)W::.x?g:.xf6Na+xgW/k)fN//ZaPk/Ygxf:/P.g)P:fxW?A:)_:?f.)f/WkZk_t/xg:P)/kgk)fN?.t)xa:x)#gk/_/Wkk_fxWPZ)PkN/ZfffND.k?::.xg?Pafx:?Pkx_?W)kkP//fgk_SNW.:).:g.P?f:xxB?g:)_)W/Z/_f/kZ4Px//xW)gN_.f?/:6xxy::f._W/k:fkQQZxP:/)ZkP:NfgP)r:kx:?)ag_/j.kk__Wxk_f)/kg/ff/)gM)k::.g?g:Pxf?::!_x^?k)_k//ZfPkQXZW):N..g)P:f.x?w:xP.q)k/f/W_ZkfP/xZ/fxNgg_)f:/.2?xa:.)))k/_:Wkk?fx/WZ)fk/:gfPPN>.k?::)xg,/:._k#_kx__W)ZkP/WfZ?PuNk.:P>:g.P?f/k.Ncxas_)cZZ/_?/k:-_1N:gx)gNN.f?a:OZx)fa)_:W/k/fkW?ZxP:/WggP)Nf.:)4:xx:?)xk_/Kfkk_?WxZ:f)/gg/PfNkgP)k::.)?g:nxgdkaI_x.hCPaa_ZZxP//jgx):fZNZg.PgxakkfWW_Zaf?/.ZNNZf)/Ng:P)Ng:)gZPN/fgg)aNa?Mk/_fWka))P/:ZPPgNWgf)kNdZx)I:)xZs/a__k8)kx_/5kZgfB/fgNP-Nx.:))/)x/?_akx)sxkN_)WgZWff/aZdPxN:g))g//.a?k:?xxrNa)_:W/kf_gWbZ.P:/fgg)WNf.k)P:xx:?)aZ_/Gfkk_dWxZ:f)/Zk?PfNkgF)gNk.)?ga/kk.P?/akf)paakx?ug.Nfg/WZgPx.k)g:fxk?0bk:?.k?:Z?xPVxkW_gaWPPNg./)f:k.sNx?xk)Cka/_fWkkCggfNW_kPf_WxZZf_/fgzn_N..k)P::PPkgfWW)ZgP/_)/Wk.NggP)):gx/.k)::W.PW/ZZPkZWff/kZ{PxN:8)xZB/._?k:jxxb:a)_g///Pf:WxZxP:/):akiPZNaZf)ax/?gag_/9f/NaWx);aaf?aZ-PgNkgb)x?:N/.ZP.xxC/ab_xW:/Zaf_NHaP:/_gx):N):Nx))NN.f)a._:+)kgf/WfZkfq/xg/P.Ng./)f?/NZgk)g:.tZk/_fWkkUfx/:W:.gNWgf)kN .x?:k)N.f/axx_3Akxf:PaG_ZWfa/W.Pf_/gZ?Pkk??xa/x#Vxk:k_x??gkZ)xZ<PxN:g)k/:/.f?k:qxx7:a).gk_kffkWUZxP:/agg)//k.k)):xxN?)ag_/{fa__;WZZ:ff/gg/PfNkg?)xN,.)?ga/xx2k:)xxW:k.fgWaZfPk/FkxPfN).N?/:Zxk?_axx/wNkg_fWfk)f>/xg:ff:_./)a:k./?xa:x)?ka__fy)k,_f/:Z)PgW Z))kNZ.x)P:)xgO/af.f<5kaf:WaZgf3/fZkfxNxgn))Nax/?Zak.)?Nk:_.Wgkgff/kZ!_x/fg))N:/.Z?k:xxx?/ff_g>fkffNW>ZxP:Wf)g)/Na.kP-:xx:?):k.?Ffa)_yo.Z:f)/gg/f_Nkg_)xNf.)?ka/.fU/a(_kW:kxfgWPZfPkWggx):N).:?/:xxkPCaW_:S)kgf/Wfk_fX/xZaP)Ng./)x:k.??xa:/g&gk/_fWkk;fx/:a)gZN/gf)kNv.x)_:)xg)aaf_:+wk.f:W)Zg_/WagkP)Nx./)):Zx/)x:kxjMkk:x?WgZ/ff/kkxPxN/g))::/.x?k:yxW0:a__g}ckffkW4Zx_g/)g:)/Nf.k)?:x./iAagxPKfaf_eWxZ:x)y_g/PZNkg_)xN).))kNZxf?;a3x.W:k)fg;GZNPk/.gxPNN).g?/NxxW?ra/_:?Pkgf/WfZk_?/xZ?P)/w./)x:kg+?:a:xx1gap_fWWkEfxaaZ)PgN/gg)kN).xP:x:xgl/af_kDEa?f:W).9P//fgkP)Nx.N)):ggP?fakxh;xk:_)Wga/_P/kZEPxN:g)P?:/.f)f:8xgu:aP_gW/kfxkKPZxP//)gk)/N_.kP)/?x:?xagxktfkk_zWxk?f)/kg/PgNkg))x::Wg?g:?xfF:ad_xW:k)N///ZgPk/(gx)NN)gkb::fxW?*:L_:-)kgx/WkZkf_/xZ?P)N/./PxNg.G?:a:x_,gk/_fS:kWfxWPZ)fgN/gf)k/)gP?::kxg?Waf_k5pkx_kW)ZNP//:gkP)Nxg:P=:g.)?f::xSAak:_):.Z/ff/kZfPxN/g)fg.g.f?k:5xxG:aN_gW/)?fkW&ZxP//)gZ)/Nf):)H:xx:?Pag_/^fkk_*WxZ:f)Wgg/PfNkg))N::.)?g=?NP.g)faaxk?xfkWNZfPk/mNxZgPPNagP):NZ.:?k:?.fW:aPx:K/f)/kg:P)NgW_g_PP/f?g:fx)Igk/Z.x)!_kZ_.NNZN_.gxP.N3.x?:5N:Ng.NfkP.P:xZ?_W+ga)_NkaP?Nx.:)):gx/?fZkZWLgk:_)WgZ/fxWfZhPxN::NgNf.Zf.G)?N)._?x.Z1HkkfkWnZxgk_?W:Z.PkWP)):kx:?)aga)xZ)):fWgkDf)/gg/kgPaWPZ?:/./?ga/xffW?/:kx??fxgPZWZaP^/af_kNP.g?/:fxk?^axxgf)kk__WfZkfpPZ/NkgPN:ZgZfP.)?/a:x)ugW):Zx:q?ak__A?kx/YkD)kNK.x._P?NNgeNfk_x_?Wx:Papa_/PaW:ZWff/Pf)?./APfWWNg.x?_:f_Nl)x//kZcPxN:Yg)g:/.f?k:nxx,:N)ZWW/kffkWnZxfx/)k/Y_Nf.k)+:ax:?Pagx_}fk/Z?WxZ:f)/Ng/P_Nkgfx.::.)?g:kxfiaa}_xg)k)fZ//Z_Pk/7gxf:x..g?W:fxa?YaW_:+)a_f/W.Zkf(/xg/P)bggN)f:N.h?.a:x.QgN/x:WkkPfxWaZ)f_N/gfPZNo..?::_xgiWaf_/ygkxf:W):?P//_gkP2_:.:)P:gxW?fakxl)x_x_)WZZ/f_/kZfPxN:N_)gN?.f?k:=xxI:a)).W/k_fkWPZxP//)g/Z/Nf.a)s/_x:?Pag_/Ffk/Z?WxZ:f)t.g/P_Nkgdk:::.P?ga/xf%ka0gx.gk)fZ//ZxPk/ggx):/g.g?W:fxk?dax_:?)a)f/W_Zkfk/xg:P)NggR)f:a.c?.a:x)^g:/xkWkk?fx/NZ)fxN/gfPZNb.Z?::)xg3/af_k{:kxfNW)ZaP//_gkf)/a.:)P:g.Z?fakxD)x:x_)WZZ/f_/kZPPx//Zg)gNJ.f)7:Dxx!:a)N_W/k_fkW)ZxPN/)g:xWNf.k)I/Wx:?Pag_/gkkk_?WxZNf)/gg/_fx_g*).::.P?g:.xfek:._xWWk)fg//ZxPk?MgW):N_.g?W:f.k?z/x.g=)kaf/6PZkfN/xg:faNg.W)f:N.j?.a:x)7Nk/__Wkk#fx/:Z)xg/fgf)aN1gm?::Zxgi/:g_k5?kxf:W)ZgP/?fZWPDN..:)f:g.k?fak?)}xk:_)WZZ/ff/kZHPxN:g))gNg.f?k:%x.p:a)_gW/kffkPfNxPN/)gg)/Nf.k)m:xx:?faa_/5fkka/_a?Pff//g/PfNk:PZgP?NPg:)Pxx)iaO_xW:/fkZ_?WWk?_)W_k?fGN:.)Px:a./)Z::xP?kaPx)WNaZ/.W)ZgP//fgkP8x0__a/xxbgk/_ffks:k.x_ZfPNN/gf)k)_akg_)WZk?nag_k&AkxZW_a?)kP/__.W:k)fg//Zf_)_P::x9Jxk:_)pPZ/ff/kZ^PxN:g)fg/k.f?k:,xxs:ax_gW/kkfkW)ZxPN/)gg)/Nf.:)G:Zx:?fag_/ofkkxPWxkzf)/gg/PxNkaux_::.x?g:Pxf?faYxg}:k)fN//Z:Pk/ngxf:NZ.g)P:fxW?QaZ_:?fagf/WkZkfx/xg:P)/kgf)fN?.>?ga:x)Ig:h_xWkkgfx//Z)PgN/ZxP)Nb.W?::Pxg0/af_k:gkx_?W)k?P//xgkf3/a.:)x:g..?faWx+&x:f_)WgZ/fg/kZ)PxW:ZP)g:/.f?k:rxNA:a)xoW/kffkW)ZxPN/)ggf.Nf.k)d:.x:?)ag_/Lfkk_GWxk_f)/gg/Px/)gs)x::axgNPn:_./?Z:_xkkfxf//ZfPk)PW_Z:PaNNg)/fa_._)W.:f/??a:_WakZf__k:._ff/.Zf):NW..)/:xMkak_fWkk}gN_?lx.Z_)WgZ:PZNgZ?Px:N?uN/_k*=kxafxx;:k/_.:f_Wj_/:gPPx/?..)::Z.x)A:_)xO?aP_.aWkxff/PZxf)/Pg./N::.g).N )aOWkWxZ:P.???gkPxNf.k)#?ZN?./?N:?.grWafWgk)f)/gg/g)fZWfgWP)/a?k:_xfJkasZZxa?7a:_Pq)k//)Z)):N).gZ?)ZN/.P)):_.)rkaN__R:kf/.g:P)Ng./)f:k.:_x:/x)6gk/_faxk<fx/:Z)PgN/gffkNP.x?::)xgb/a._k?)kWf:WfZgfP/fgkP!Nxgx)):ax/?fakx}hxk:xfWgZ/ff/NZvPgN:gg)::/.f?k:gxxGNa)_gW/kggaWYZxP:/kgg)WNf./x?:xx:?):Z_/F_kk_+.:Z:f)/ggWPfNkg fxga.)?ga/xf{kax_xW:aWfgW>ZfPk/Ygg):G)gZ?/:xxk?.ax_/H)Ng_.WfZ:fr/.g:PaNg./)W:k.J?xa/x)5Zk/xxWWkOfx/:ZkPgN/gfP:N).x?N:)x:1/af_kBE)Pf:W)Zgf4/fgaPuNx)/)):gx/?_akx{ xk:_)WgZ/ff/aZ6PxN:gfP?:/.f?kP.Ng._)xaNxf#Nax__ZaP:/)ggfy)b.k)):xxN?)ag_/nf:__*WZZ:f)/gg/PfNkg.)xNh.)?Za/xf%kaExZW:kffgW)ZfPa/IgxffN).g?/:_xk?dax_:L)kgf/WxkQfz/xg:PfN:./)f:kNx.W)k:x%kaP_fWkk3a)_a!ZZN_ gxPDN;.x?:P_N:gC?N:gx.kg_NW)ZgP/PNN/.?PN:ZZ??:N,_W)Z:?xWW!a.f#KZZ7/:ZfPxN:g)xNfxNNg/:)xZ>:a)_g__4Zk:taZxP:/)ZkN.Nf.:)>:Zx:?)ag./CWkk_)WxZ/f)/kg/Pf/kgD)Z::.P?ga/xfbkaZ_xW/k)fk//ZxPkW)ZZ):N_.g)?:fxk?vNx._U)kaf/W.Zkf)/xZ/fNNgg))f:/.J?xa:x)?.k/_.Wkk)fx//Z)_g/ggf)/Nv.g?::Pxgc/ag_kLxkxfWW)ZgP//f_ZP1Nk.:)g:g.H?f:XNZ9xa4_)=xZ/f_/kZ?Px/1:P)g:/.f)g:Gx.e:axZZW/kffktgZxPN/)ggafNf./)X:xx:?)ag./xPkk_fWxkVf)/Ng/PfN:g4)k::.f?gaWxfHkaW_x>lk)fZ//ZfPkW)ZZ):N..g)f:fxk?8axx)q)k/f/WxZkfj/xg:P_Ngg))fN(.h?.a:x)))k/_gWkk?fx/:Z)Pg/kgf)/N<.g?::)xg?):._koHkxxxW)ZZP//fNPPINk.:)):gx/?fakg_&xaX_)WkZ/ff/kZq/gN:g))g:W.f?k:3xx=:a)_gyDkf"
		)
		local f = h.yeUaXxdW
		h.SGCxPUEm(function()
			h.zmoWILaG()
			f = f + h.qlvHCnDB
		end)
		local function e(e, k)
			if k then
				return f
			end
			f = e + f
		end
		local k, f, r = t(h.yeUaXxdW, t, e, _, h.IxoRcouD)
		local function a()
			local k, f = h.IxoRcouD(_, e(h.qlvHCnDB, h.MqpQRwkm), e(h.zZ_jevnx, h.rYWzrrRh) + h.kayBCcxv)
			e(h.kayBCcxv)
			return (f * h.yLEJVVJG) + k
		end
		local b = true
		local b = h.yeUaXxdW
		local function c()
			local g = f()
			local e = f()
			local n = h.qlvHCnDB
			local g = (k(e, h.qlvHCnDB, h.SqaGMgnr) * (h.kayBCcxv ^ h.PbVKBCJT)) + g
			local f = k(e, h.MckfqlFy, h.QBykUoGj)
			local e = ((-h.qlvHCnDB) ^ k(e, h.PbVKBCJT))
			if f == h.yeUaXxdW then
				if g == b then
					return e * h.yeUaXxdW
				else
					f = h.qlvHCnDB
					n = h.yeUaXxdW
				end
			elseif f == h.thvJuWnX then
				return (g == h.yeUaXxdW) and (e * (h.qlvHCnDB / h.yeUaXxdW)) or (e * (h.yeUaXxdW / h.yeUaXxdW))
			end
			return h.BjYfaJGV(e, f - h.qkvraKaQ) * (n + (g / (h.kayBCcxv ^ h.THJiaUPh)))
		end
		local u = f
		local function m(f)
			local k
			if not f then
				f = u()
				if f == h.yeUaXxdW then
					return ""
				end
			end
			k = h.abxjZjMK(_, e(h.qlvHCnDB, h.MqpQRwkm), e(h.zZ_jevnx, h.rYWzrrRh) + f - h.qlvHCnDB)
			e(f)
			local e = ""
			for f = (h.qlvHCnDB + b), #k do
				e = e .. h.abxjZjMK(k, f, f)
			end
			return e
		end
		local p = #h.JbCjBUMF(s("\49.\48")) ~= h.qlvHCnDB
		local e = f
		local function ge(...)
			return { ... }, h.FHRtxZjR("#", ...)
		end
		local function fe()
			local u = {}
			local e = {}
			local s = {}
			local b = { s, u, nil, e }
			local e = f()
			local _ = {}
			for g = h.qlvHCnDB, e do
				local k = r()
				local f
				if k == h.MqpQRwkm then
					f = (r() ~= #{})
				elseif k == h.qlvHCnDB then
					local e = c()
					if p and h.bQIoEpid(h.JbCjBUMF(e), ".(\48+)$") then
						e = h.RzVfSzMR(e)
					end
					f = e
				elseif k == h.kayBCcxv then
					f = m()
				end
				_[g] = f
			end
			for b = h.qlvHCnDB, f() do
				local e = r()
				if k(e, h.qlvHCnDB, h.qlvHCnDB) == h.yeUaXxdW then
					local t = k(e, h.kayBCcxv, h.MqpQRwkm)
					local l = k(e, h.OSxTnXzA, h.rYWzrrRh)
					local e = { a(), a(), nil, nil }
					if t == h.yeUaXxdW then
						e[n] = a()
						e[d] = a()
					elseif t == #{ h.qlvHCnDB } then
						e[n] = f()
					elseif t == o[h.kayBCcxv] then
						e[n] = f() - (h.kayBCcxv ^ h.fjfPecWq)
					elseif t == o[h.MqpQRwkm] then
						e[n] = f() - (h.kayBCcxv ^ h.fjfPecWq)
						e[d] = a()
					end
					if k(l, h.qlvHCnDB, h.qlvHCnDB) == h.qlvHCnDB then
						e[g] = _[e[g]]
					end
					if k(l, h.kayBCcxv, h.kayBCcxv) == h.qlvHCnDB then
						e[n] = _[e[n]]
					end
					if k(l, h.MqpQRwkm, h.MqpQRwkm) == h.qlvHCnDB then
						e[d] = _[e[d]]
					end
					s[b] = e
				end
			end
			for e = h.qlvHCnDB, f() do
				u[e - #{ h.qlvHCnDB }] = fe()
			end
			b[h.MqpQRwkm] = r()
			return b
		end
		local function ke(k, e, f)
			local g = e
			local g = f
			return s(h.bQIoEpid(h.bQIoEpid(({ h.SGCxPUEm(k) })[h.kayBCcxv], e), f))
		end
		local function m(p, r, _)
			local function ke(...)
				local a, c, b, fe, o, f, s, ee, z, j, u, k
				local e = h.yeUaXxdW
				while -h.qlvHCnDB < e do
					if h.MqpQRwkm > e then
						if e > h.yeUaXxdW then
							if e >= -h.kayBCcxv then
								for k = h.cdqvJHMU, h.ubfjOPmW do
									if e > h.qlvHCnDB then
										f = -h.gfSWJUlY
										s = -h.qlvHCnDB
										break
									end
									b = t(h.rYWzrrRh, h.pImEvkFo, h.MqpQRwkm, h.IlcSbMZJ, p)
									o = ge
									fe = h.yeUaXxdW
									break
								end
							else
								b = t(h.rYWzrrRh, h.pImEvkFo, h.MqpQRwkm, h.IlcSbMZJ, p)
								o = ge
								fe = h.yeUaXxdW
							end
						else
							a = t(h.rYWzrrRh, h.VnsVQTry, h.qlvHCnDB, h.QBykUoGj, p)
							c = t(h.rYWzrrRh, h.OuM_askc, h.kayBCcxv, h.yFuqZDsn, p)
						end
					else
						if e > h.OSxTnXzA then
							if h.zZ_jevnx ~= e then
								e = -h.kayBCcxv
							else
								k = t(h.uuUnrexi)
							end
						else
							if e >= h.qlvHCnDB then
								repeat
									if h.MqpQRwkm ~= e then
										j = h.FHRtxZjR("#", ...) - h.qlvHCnDB
										u = {}
										break
									end
									ee = {}
									z = { ... }
								until true
							else
								j = h.FHRtxZjR("#", ...) - h.qlvHCnDB
								u = {}
							end
						end
					end
					e = e + h.qlvHCnDB
				end
				for e = h.yeUaXxdW, j do
					if e >= b then
						ee[e - b] = z[e + h.qlvHCnDB]
					else
						k[e] = z[e + h.qlvHCnDB]
					end
				end
				local e = j - b + h.qlvHCnDB
				local e
				local t
				local function b(...)
					while true do
					end
				end
				while true do
					if f < -h.pBsORCWc then
						f = f + 42
					end
					e = a[f]
					t = e[y]
					if t > 119 then
						if 180 <= t then
							if t > 209 then
								if t > 224 then
									if t < 233 then
										if t > 228 then
											if 230 >= t then
												if 230 == t then
													local _
													for t = 0, 6 do
														if t >= 3 then
															if t < 5 then
																if t >= 1 then
																	repeat
																		if t < 4 then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															else
																if t > 4 then
																	for h = 30, 95 do
																		if 6 ~= t then
																			_ = e[g]
																			k[_] = k[_](l(k, _ + 1, e[n]))
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = k[e[d]]
																		break
																	end
																else
																	k[e[g]][e[n]] = k[e[d]]
																end
															end
														else
															if t <= 0 then
																k[e[g]] = k[e[n]][e[d]]
																f = f + 1
																e = a[f]
															else
																if 2 == t then
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												else
													k[e[g]] = _[e[n]]
												end
											else
												if t >= 227 then
													for h = 29, 71 do
														if 231 < t then
															local h, o, s, b, r, t, u
															for t = 0, 6 do
																if 2 < t then
																	if 4 >= t then
																		if t >= 0 then
																			repeat
																				if t > 3 then
																					t = 0
																					while t > -1 do
																						if t < 3 then
																							if 1 <= t then
																								if -3 <= t then
																									for e = 28, 53 do
																										if t ~= 2 then
																											o = g
																											break
																										end
																										s = n
																										break
																									end
																								else
																									s = n
																								end
																							else
																								h = e
																							end
																						else
																							if 4 >= t then
																								if t > 2 then
																									repeat
																										if 4 > t then
																											b = h[s]
																											break
																										end
																										r = h[o]
																									until true
																								else
																									r = h[o]
																								end
																							else
																								if t > 5 then
																									t = -2
																								else
																									k(r, b)
																								end
																							end
																						end
																						t = t + 1
																					end
																					f = f + 1
																					e = a[f]
																					break
																				end
																				t = 0
																				while t > -1 do
																					if t < 3 then
																						if t > 0 then
																							if t == 2 then
																								s = n
																							else
																								o = g
																							end
																						else
																							h = e
																						end
																					else
																						if t > 4 then
																							if 5 ~= t then
																								t = -2
																							else
																								k(r, b)
																							end
																						else
																							if -1 < t then
																								for e = 27, 52 do
																									if 3 ~= t then
																										r = h[o]
																										break
																									end
																									b = h[s]
																									break
																								end
																							else
																								b = h[s]
																							end
																						end
																					end
																					t = t + 1
																				end
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			t = 0
																			while t > -1 do
																				if t < 3 then
																					if t > 0 then
																						if t == 2 then
																							s = n
																						else
																							o = g
																						end
																					else
																						h = e
																					end
																				else
																					if t > 4 then
																						if 5 ~= t then
																							t = -2
																						else
																							k(r, b)
																						end
																					else
																						if -1 < t then
																							for e = 27, 52 do
																								if 3 ~= t then
																									r = h[o]
																									break
																								end
																								b = h[s]
																								break
																							end
																						else
																							b = h[s]
																						end
																					end
																				end
																				t = t + 1
																			end
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if t ~= 2 then
																			repeat
																				if 5 ~= t then
																					k[e[g]][e[n]] = k[e[d]]
																					break
																				end
																				u = e[g]
																				k[u] = k[u](l(k, u + 1, e[n]))
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			k[e[g]][e[n]] = k[e[d]]
																		end
																	end
																else
																	if 1 <= t then
																		if -3 <= t then
																			repeat
																				if 2 ~= t then
																					k[e[g]] = k[e[n]][e[d]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				t = 0
																				while t > -1 do
																					if t > 2 then
																						if t <= 4 then
																							if t >= 1 then
																								repeat
																									if 3 ~= t then
																										r = h[o]
																										break
																									end
																									b = h[s]
																								until true
																							else
																								r = h[o]
																							end
																						else
																							if 5 ~= t then
																								t = -2
																							else
																								k(r, b)
																							end
																						end
																					else
																						if t <= 0 then
																							h = e
																						else
																							if t < 2 then
																								o = g
																							else
																								s = n
																							end
																						end
																					end
																					t = t + 1
																				end
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			t = 0
																			while t > -1 do
																				if t > 2 then
																					if t <= 4 then
																						if t >= 1 then
																							repeat
																								if 3 ~= t then
																									r = h[o]
																									break
																								end
																								b = h[s]
																							until true
																						else
																							r = h[o]
																						end
																					else
																						if 5 ~= t then
																							t = -2
																						else
																							k(r, b)
																						end
																					end
																				else
																					if t <= 0 then
																						h = e
																					else
																						if t < 2 then
																							o = g
																						else
																							s = n
																						end
																					end
																				end
																				t = t + 1
																			end
																			f = f + 1
																			e = a[f]
																		end
																	else
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
															break
														end
														local h, u, o, s, b, t, r
														for t = 0, 6 do
															if 3 <= t then
																if t < 5 then
																	if t > 1 then
																		repeat
																			if t > 3 then
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	if 2 <= t then
																		for _ = 45, 96 do
																			if 6 ~= t then
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]][e[n]] = k[e[d]]
																			break
																		end
																	else
																		k[e[g]][e[n]] = k[e[d]]
																	end
																end
															else
																if 1 <= t then
																	if -3 < t then
																		repeat
																			if t > 1 then
																				k[e[g]][e[n]] = k[e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			r = e[g]
																			k[r] = k[r](l(k, r + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	t = 0
																	while t > -1 do
																		if 3 > t then
																			if 1 <= t then
																				if t ~= 2 then
																					u = g
																				else
																					o = n
																				end
																			else
																				h = e
																			end
																		else
																			if 4 >= t then
																				if t > 1 then
																					for e = 30, 79 do
																						if t > 3 then
																							b = h[u]
																							break
																						end
																						s = h[o]
																						break
																					end
																				else
																					s = h[o]
																				end
																			else
																				if 6 ~= t then
																					k(b, s)
																				else
																					t = -2
																				end
																			end
																		end
																		t = t + 1
																	end
																	f = f + 1
																	e = a[f]
																end
															end
														end
														break
													end
												else
													local h, s, r, b, o, t, u
													for t = 0, 6 do
														if 2 < t then
															if 4 >= t then
																if t >= 0 then
																	repeat
																		if t > 3 then
																			t = 0
																			while t > -1 do
																				if t < 3 then
																					if 1 <= t then
																						if -3 <= t then
																							for e = 28, 53 do
																								if t ~= 2 then
																									s = g
																									break
																								end
																								r = n
																								break
																							end
																						else
																							r = n
																						end
																					else
																						h = e
																					end
																				else
																					if 4 >= t then
																						if t > 2 then
																							repeat
																								if 4 > t then
																									b = h[r]
																									break
																								end
																								o = h[s]
																							until true
																						else
																							o = h[s]
																						end
																					else
																						if t > 5 then
																							t = -2
																						else
																							k(o, b)
																						end
																					end
																				end
																				t = t + 1
																			end
																			f = f + 1
																			e = a[f]
																			break
																		end
																		t = 0
																		while t > -1 do
																			if t < 3 then
																				if t > 0 then
																					if t == 2 then
																						r = n
																					else
																						s = g
																					end
																				else
																					h = e
																				end
																			else
																				if t > 4 then
																					if 5 ~= t then
																						t = -2
																					else
																						k(o, b)
																					end
																				else
																					if -1 < t then
																						for e = 27, 52 do
																							if 3 ~= t then
																								o = h[s]
																								break
																							end
																							b = h[r]
																							break
																						end
																					else
																						b = h[r]
																					end
																				end
																			end
																			t = t + 1
																		end
																		f = f + 1
																		e = a[f]
																	until true
																else
																	t = 0
																	while t > -1 do
																		if t < 3 then
																			if t > 0 then
																				if t == 2 then
																					r = n
																				else
																					s = g
																				end
																			else
																				h = e
																			end
																		else
																			if t > 4 then
																				if 5 ~= t then
																					t = -2
																				else
																					k(o, b)
																				end
																			else
																				if -1 < t then
																					for e = 27, 52 do
																						if 3 ~= t then
																							o = h[s]
																							break
																						end
																						b = h[r]
																						break
																					end
																				else
																					b = h[r]
																				end
																			end
																		end
																		t = t + 1
																	end
																	f = f + 1
																	e = a[f]
																end
															else
																if t ~= 2 then
																	repeat
																		if 5 ~= t then
																			k[e[g]][e[n]] = k[e[d]]
																			break
																		end
																		u = e[g]
																		k[u] = k[u](l(k, u + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]][e[n]] = k[e[d]]
																end
															end
														else
															if 1 <= t then
																if -3 <= t then
																	repeat
																		if 2 ~= t then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		t = 0
																		while t > -1 do
																			if t > 2 then
																				if t <= 4 then
																					if t >= 1 then
																						repeat
																							if 3 ~= t then
																								o = h[s]
																								break
																							end
																							b = h[r]
																						until true
																					else
																						o = h[s]
																					end
																				else
																					if 5 ~= t then
																						t = -2
																					else
																						k(o, b)
																					end
																				end
																			else
																				if t <= 0 then
																					h = e
																				else
																					if t < 2 then
																						s = g
																					else
																						r = n
																					end
																				end
																			end
																			t = t + 1
																		end
																		f = f + 1
																		e = a[f]
																	until true
																else
																	t = 0
																	while t > -1 do
																		if t > 2 then
																			if t <= 4 then
																				if t >= 1 then
																					repeat
																						if 3 ~= t then
																							o = h[s]
																							break
																						end
																						b = h[r]
																					until true
																				else
																					o = h[s]
																				end
																			else
																				if 5 ~= t then
																					t = -2
																				else
																					k(o, b)
																				end
																			end
																		else
																			if t <= 0 then
																				h = e
																			else
																				if t < 2 then
																					s = g
																				else
																					r = n
																				end
																			end
																		end
																		t = t + 1
																	end
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = _[e[n]]
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											end
										else
											if t <= 226 then
												if 224 < t then
													for h = 36, 94 do
														if t > 225 then
															local h, u, r, s, o, t, b
															for t = 0, 6 do
																if t >= 3 then
																	if 4 < t then
																		if 3 <= t then
																			repeat
																				if t < 6 then
																					b = e[g]
																					k[b] = k[b](l(k, b + 1, e[n]))
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]][e[n]] = k[e[d]]
																			until true
																		else
																			b = e[g]
																			k[b] = k[b](l(k, b + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if 2 ~= t then
																			repeat
																				if t < 4 then
																					t = 0
																					while t > -1 do
																						if t > 2 then
																							if 5 > t then
																								if -1 ~= t then
																									repeat
																										if t ~= 4 then
																											s = h[r]
																											break
																										end
																										o = h[u]
																									until true
																								else
																									o = h[u]
																								end
																							else
																								if 5 == t then
																									k(o, s)
																								else
																									t = -2
																								end
																							end
																						else
																							if t >= 1 then
																								if -2 <= t then
																									repeat
																										if t ~= 1 then
																											r = n
																											break
																										end
																										u = g
																									until true
																								else
																									r = n
																								end
																							else
																								h = e
																							end
																						end
																						t = t + 1
																					end
																					f = f + 1
																					e = a[f]
																					break
																				end
																				t = 0
																				while t > -1 do
																					if 2 < t then
																						if 4 < t then
																							if t > 2 then
																								repeat
																									if 5 < t then
																										t = -2
																										break
																									end
																									k(o, s)
																								until true
																							else
																								k(o, s)
																							end
																						else
																							if t >= 0 then
																								for e = 28, 82 do
																									if t < 4 then
																										s = h[r]
																										break
																									end
																									o = h[u]
																									break
																								end
																							else
																								s = h[r]
																							end
																						end
																					else
																						if t >= 1 then
																							if t ~= 0 then
																								for e = 44, 66 do
																									if t < 2 then
																										u = g
																										break
																									end
																									r = n
																									break
																								end
																							else
																								r = n
																							end
																						else
																							h = e
																						end
																					end
																					t = t + 1
																				end
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			t = 0
																			while t > -1 do
																				if 2 < t then
																					if 4 < t then
																						if t > 2 then
																							repeat
																								if 5 < t then
																									t = -2
																									break
																								end
																								k(o, s)
																							until true
																						else
																							k(o, s)
																						end
																					else
																						if t >= 0 then
																							for e = 28, 82 do
																								if t < 4 then
																									s = h[r]
																									break
																								end
																								o = h[u]
																								break
																							end
																						else
																							s = h[r]
																						end
																					end
																				else
																					if t >= 1 then
																						if t ~= 0 then
																							for e = 44, 66 do
																								if t < 2 then
																									u = g
																									break
																								end
																								r = n
																								break
																							end
																						else
																							r = n
																						end
																					else
																						h = e
																					end
																				end
																				t = t + 1
																			end
																			f = f + 1
																			e = a[f]
																		end
																	end
																else
																	if t >= 1 then
																		if -3 ~= t then
																			for l = 27, 83 do
																				if t > 1 then
																					k[e[g]] = k[e[n]][e[d]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]] = _[e[n]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		end
																	else
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
															break
														end
														local h
														for t = 0, 6 do
															if t <= 2 then
																if 1 > t then
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																else
																	if t ~= 1 then
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																	else
																		h = e[g]
																		k[h] = k[h](l(k, h + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	end
																end
															else
																if t > 4 then
																	if 5 ~= t then
																		k[e[g]] = {}
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	if 2 <= t then
																		for l = 16, 90 do
																			if 3 ~= t then
																				k[e[g]] = _[e[n]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														end
														break
													end
												else
													local h
													for t = 0, 6 do
														if t <= 2 then
															if 1 > t then
																k(e[g], e[n])
																f = f + 1
																e = a[f]
															else
																if t ~= 1 then
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																else
																	h = e[g]
																	k[h] = k[h](l(k, h + 1, e[n]))
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if t > 4 then
																if 5 ~= t then
																	k[e[g]] = {}
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																if 2 <= t then
																	for l = 16, 90 do
																		if 3 ~= t then
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											else
												if 223 <= t then
													for l = 18, 54 do
														if t > 227 then
															for t = 0, 6 do
																if 3 > t then
																	if 0 >= t then
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	else
																		if -2 < t then
																			repeat
																				if t < 2 then
																					k[e[g]] = k[e[n]][e[d]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		end
																	end
																else
																	if t < 5 then
																		if 4 > t then
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																		else
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if 5 < t then
																			k(e[g], e[n])
																		else
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		end
																	end
																end
															end
															break
														end
														for t = 0, 6 do
															if 2 >= t then
																if 1 > t then
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																else
																	if -1 ~= t then
																		for _ = 41, 77 do
																			if t ~= 1 then
																				k[e[g]][e[n]] = k[e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]][e[n]] = e[d]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																	end
																end
															else
																if 4 < t then
																	if t >= 1 then
																		for _ = 12, 79 do
																			if 5 ~= t then
																				k[e[g]][e[n]] = k[e[d]]
																				break
																			end
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	if 0 <= t then
																		repeat
																			if t < 4 then
																				k[e[g]] = _[e[n]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														end
														break
													end
												else
													for t = 0, 6 do
														if 3 > t then
															if 0 >= t then
																k[e[g]] = _[e[n]]
																f = f + 1
																e = a[f]
															else
																if -2 < t then
																	repeat
																		if t < 2 then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if t < 5 then
																if 4 > t then
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																if 5 < t then
																	k(e[g], e[n])
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											end
										end
									else
										if t <= 236 then
											if 235 > t then
												if t > 230 then
													repeat
														if t ~= 234 then
															local g = e[g]
															local d = e[d]
															local a = g + 2
															local g = { k[g](k[g + 1], k[a]) }
															for e = 1, d do
																k[a + e] = g[e]
															end
															local g = g[1]
															if g then
																k[a] = g
																f = e[n]
															else
																f = f + 1
															end
															break
														end
														local l, r, o, s, h, t
														k[e[g]][e[n]] = e[d]
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = e[d]
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														t = 0
														while t > -1 do
															if 3 <= t then
																if 5 > t then
																	if 4 ~= t then
																		s = l[o]
																	else
																		h = l[r]
																	end
																else
																	if t < 6 then
																		k(h, s)
																	else
																		t = -2
																	end
																end
															else
																if 1 <= t then
																	if t >= -3 then
																		for e = 48, 86 do
																			if 2 ~= t then
																				r = g
																				break
																			end
																			o = n
																			break
																		end
																	else
																		r = g
																	end
																else
																	l = e
																end
															end
															t = t + 1
														end
														f = f + 1
														e = a[f]
														t = 0
														while t > -1 do
															if t < 3 then
																if 0 >= t then
																	l = e
																else
																	if t ~= 2 then
																		r = g
																	else
																		o = n
																	end
																end
															else
																if t <= 4 then
																	if 1 <= t then
																		repeat
																			if t > 3 then
																				h = l[r]
																				break
																			end
																			s = l[o]
																		until true
																	else
																		h = l[r]
																	end
																else
																	if 4 <= t then
																		repeat
																			if 6 ~= t then
																				k(h, s)
																				break
																			end
																			t = -2
																		until true
																	else
																		k(h, s)
																	end
																end
															end
															t = t + 1
														end
														f = f + 1
														e = a[f]
														t = 0
														while t > -1 do
															if 2 >= t then
																if t <= 0 then
																	l = e
																else
																	if t ~= -1 then
																		for e = 46, 89 do
																			if 1 ~= t then
																				o = n
																				break
																			end
																			r = g
																			break
																		end
																	else
																		o = n
																	end
																end
															else
																if 4 < t then
																	if 6 ~= t then
																		k(h, s)
																	else
																		t = -2
																	end
																else
																	if -1 ~= t then
																		repeat
																			if t ~= 4 then
																				s = l[o]
																				break
																			end
																			h = l[r]
																		until true
																	else
																		h = l[r]
																	end
																end
															end
															t = t + 1
														end
													until true
												else
													local l, r, o, s, h, t
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													t = 0
													while t > -1 do
														if 3 <= t then
															if 5 > t then
																if 4 ~= t then
																	s = l[o]
																else
																	h = l[r]
																end
															else
																if t < 6 then
																	k(h, s)
																else
																	t = -2
																end
															end
														else
															if 1 <= t then
																if t >= -3 then
																	for e = 48, 86 do
																		if 2 ~= t then
																			r = g
																			break
																		end
																		o = n
																		break
																	end
																else
																	r = g
																end
															else
																l = e
															end
														end
														t = t + 1
													end
													f = f + 1
													e = a[f]
													t = 0
													while t > -1 do
														if t < 3 then
															if 0 >= t then
																l = e
															else
																if t ~= 2 then
																	r = g
																else
																	o = n
																end
															end
														else
															if t <= 4 then
																if 1 <= t then
																	repeat
																		if t > 3 then
																			h = l[r]
																			break
																		end
																		s = l[o]
																	until true
																else
																	h = l[r]
																end
															else
																if 4 <= t then
																	repeat
																		if 6 ~= t then
																			k(h, s)
																			break
																		end
																		t = -2
																	until true
																else
																	k(h, s)
																end
															end
														end
														t = t + 1
													end
													f = f + 1
													e = a[f]
													t = 0
													while t > -1 do
														if 2 >= t then
															if t <= 0 then
																l = e
															else
																if t ~= -1 then
																	for e = 46, 89 do
																		if 1 ~= t then
																			o = n
																			break
																		end
																		r = g
																		break
																	end
																else
																	o = n
																end
															end
														else
															if 4 < t then
																if 6 ~= t then
																	k(h, s)
																else
																	t = -2
																end
															else
																if -1 ~= t then
																	repeat
																		if t ~= 4 then
																			s = l[o]
																			break
																		end
																		h = l[r]
																	until true
																else
																	h = l[r]
																end
															end
														end
														t = t + 1
													end
												end
											else
												if 235 ~= t then
													k[e[g]] = m(c[e[n]], nil, _)
												else
													local t
													for _ = 0, 6 do
														if _ >= 3 then
															if 4 >= _ then
																if 4 == _ then
																	t = e[g]
																	k[t] = k[t](l(k, t + 1, e[n]))
																	f = f + 1
																	e = a[f]
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															else
																if _ > 5 then
																	t = e[g]
																	k[t] = k[t](l(k, t + 1, e[n]))
																else
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if _ >= 1 then
																if _ > 1 then
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = k[e[n]][e[d]]
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											end
										else
											if 239 <= t then
												if 238 <= t then
													for h = 47, 85 do
														if 239 ~= t then
															local t, _
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															t = e[g]
															k[t] = k[t](l(k, t + 1, e[n]))
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = k[e[d]]
															f = f + 1
															e = a[f]
															t = e[g]
															k[t] = k[t](l(k, t + 1, e[n]))
															f = f + 1
															e = a[f]
															t = e[g]
															_ = k[e[n]]
															k[t + 1] = _
															k[t] = _[e[d]]
															f = f + 1
															e = a[f]
															t = e[g]
															k[t](k[t + 1])
															f = f + 1
															e = a[f]
															k[e[g]] = r[e[n]]
															break
														end
														k[e[g]] = m(c[e[n]], nil, _)
														break
													end
												else
													local t, _
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													t = e[g]
													_ = k[e[n]]
													k[t + 1] = _
													k[t] = _[e[d]]
													f = f + 1
													e = a[f]
													t = e[g]
													k[t](k[t + 1])
													f = f + 1
													e = a[f]
													k[e[g]] = r[e[n]]
												end
											else
												if 238 > t then
													local t
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
												else
													local t
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
												end
											end
										end
									end
								else
									if 216 >= t then
										if 212 < t then
											if t <= 214 then
												if 213 ~= t then
													local t, h
													for _ = 0, 5 do
														if 2 < _ then
															if _ > 3 then
																if 5 > _ then
																	t = e[g]
																	k[t] = k[t](l(k, t + 1, e[n]))
																	f = f + 1
																	e = a[f]
																else
																	if k[e[g]] then
																		f = f + 1
																	else
																		f = e[n]
																	end
																end
															else
																k[e[g]] = (e[n] ~= 0)
																f = f + 1
																e = a[f]
															end
														else
															if 1 <= _ then
																if _ ~= -2 then
																	for l = 36, 53 do
																		if _ < 2 then
																			t = e[g]
																			h = k[e[n]]
																			k[t + 1] = h
																			k[t] = h[e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	t = e[g]
																	h = k[e[n]]
																	k[t + 1] = h
																	k[t] = h[e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = r[e[n]]
																f = f + 1
																e = a[f]
															end
														end
													end
												else
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
												end
											else
												if t ~= 211 then
													repeat
														if 216 ~= t then
															if k[e[g]] ~= e[d] then
																f = f + 1
															else
																f = e[n]
															end
															break
														end
														local t, h, s, u, b, c, o, _
														for _ = 0, 6 do
															if _ > 2 then
																if _ <= 4 then
																	if 1 <= _ then
																		repeat
																			if _ ~= 3 then
																				t = e[g]
																				h = k[e[n]]
																				k[t + 1] = h
																				k[t] = h[e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = r[e[n]]
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		t = e[g]
																		h = k[e[n]]
																		k[t + 1] = h
																		k[t] = h[e[d]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	if 3 <= _ then
																		for d = 17, 71 do
																			if _ ~= 5 then
																				t = e[g]
																				k[t] = k[t](l(k, t + 1, e[n]))
																				break
																			end
																			_ = 0
																			while _ > -1 do
																				if 3 > _ then
																					if _ >= 1 then
																						if _ ~= -3 then
																							for e = 16, 53 do
																								if 1 < _ then
																									b = n
																									break
																								end
																								u = g
																								break
																							end
																						else
																							b = n
																						end
																					else
																						s = e
																					end
																				else
																					if _ >= 5 then
																						if _ == 5 then
																							k(o, c)
																						else
																							_ = -2
																						end
																					else
																						if _ >= 2 then
																							repeat
																								if 4 > _ then
																									c = s[b]
																									break
																								end
																								o = s[u]
																							until true
																						else
																							o = s[u]
																						end
																					end
																				end
																				_ = _ + 1
																			end
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		t = e[g]
																		k[t] = k[t](l(k, t + 1, e[n]))
																	end
																end
															else
																if _ > 0 then
																	if _ ~= -2 then
																		for l = 28, 89 do
																			if _ > 1 then
																				t = e[g]
																				h = k[e[n]]
																				k[t + 1] = h
																				k[t] = h[e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = r[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		t = e[g]
																		h = k[e[n]]
																		k[t + 1] = h
																		k[t] = h[e[d]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	t = e[g]
																	k[t](k[t + 1])
																	f = f + 1
																	e = a[f]
																end
															end
														end
													until true
												else
													local t, h, s, b, o, c, u, _
													for _ = 0, 6 do
														if _ > 2 then
															if _ <= 4 then
																if 1 <= _ then
																	repeat
																		if _ ~= 3 then
																			t = e[g]
																			h = k[e[n]]
																			k[t + 1] = h
																			k[t] = h[e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = r[e[n]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	t = e[g]
																	h = k[e[n]]
																	k[t + 1] = h
																	k[t] = h[e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																if 3 <= _ then
																	for d = 17, 71 do
																		if _ ~= 5 then
																			t = e[g]
																			k[t] = k[t](l(k, t + 1, e[n]))
																			break
																		end
																		_ = 0
																		while _ > -1 do
																			if 3 > _ then
																				if _ >= 1 then
																					if _ ~= -3 then
																						for e = 16, 53 do
																							if 1 < _ then
																								o = n
																								break
																							end
																							b = g
																							break
																						end
																					else
																						o = n
																					end
																				else
																					s = e
																				end
																			else
																				if _ >= 5 then
																					if _ == 5 then
																						k(u, c)
																					else
																						_ = -2
																					end
																				else
																					if _ >= 2 then
																						repeat
																							if 4 > _ then
																								c = s[o]
																								break
																							end
																							u = s[b]
																						until true
																					else
																						u = s[b]
																					end
																				end
																			end
																			_ = _ + 1
																		end
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	t = e[g]
																	k[t] = k[t](l(k, t + 1, e[n]))
																end
															end
														else
															if _ > 0 then
																if _ ~= -2 then
																	for l = 28, 89 do
																		if _ > 1 then
																			t = e[g]
																			h = k[e[n]]
																			k[t + 1] = h
																			k[t] = h[e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = r[e[n]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	t = e[g]
																	h = k[e[n]]
																	k[t + 1] = h
																	k[t] = h[e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																t = e[g]
																k[t](k[t + 1])
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											end
										else
											if t < 211 then
												local t
												k(e[g], e[n])
												f = f + 1
												e = a[f]
												k(e[g], e[n])
												f = f + 1
												e = a[f]
												k(e[g], e[n])
												f = f + 1
												e = a[f]
												t = e[g]
												k[t] = k[t](l(k, t + 1, e[n]))
												f = f + 1
												e = a[f]
												k[e[g]][e[n]] = k[e[d]]
												f = f + 1
												e = a[f]
												k[e[g]] = _[e[n]]
												f = f + 1
												e = a[f]
												k[e[g]] = k[e[n]][e[d]]
											else
												if 207 < t then
													repeat
														if 212 ~= t then
															for t = 0, 6 do
																if t >= 3 then
																	if t >= 5 then
																		if 6 ~= t then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		else
																			k(e[g], e[n])
																		end
																	else
																		if t ~= 2 then
																			for d = 47, 72 do
																				if t < 4 then
																					k[e[g]] = {}
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]] = _[e[n]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																		end
																	end
																else
																	if 0 >= t then
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																	else
																		if t >= -2 then
																			repeat
																				if 2 ~= t then
																					k[e[g]] = _[e[n]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		end
																	end
																end
															end
															break
														end
														local e = e[g]
														local g, f = o(k[e](k[e + 1]))
														s = f + e - 1
														local f = 0
														for e = e, s do
															f = f + 1
															k[e] = g[f]
														end
													until true
												else
													for t = 0, 6 do
														if t >= 3 then
															if t >= 5 then
																if 6 ~= t then
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k(e[g], e[n])
																end
															else
																if t ~= 2 then
																	for d = 47, 72 do
																		if t < 4 then
																			k[e[g]] = {}
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if 0 >= t then
																k[e[g]][e[n]] = k[e[d]]
																f = f + 1
																e = a[f]
															else
																if t >= -2 then
																	repeat
																		if 2 ~= t then
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											end
										end
									else
										if t > 220 then
											if t <= 222 then
												if 219 ~= t then
													for h = 24, 95 do
														if 221 < t then
															local t
															k[e[g]] = k[e[n]][e[d]]
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															t = e[g]
															k[t] = k[t](l(k, t + 1, e[n]))
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = k[e[d]]
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = e[d]
															break
														end
														local t, l
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														t = e[g]
														k[t](k[t + 1])
														f = f + 1
														e = a[f]
														k[e[g]] = r[e[n]]
														f = f + 1
														e = a[f]
														t = e[g]
														l = k[e[n]]
														k[t + 1] = l
														k[t] = l[e[d]]
														f = f + 1
														e = a[f]
														t = e[g]
														k[t](k[t + 1])
														f = f + 1
														e = a[f]
														do
															return
														end
														break
													end
												else
													local t, l
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t](k[t + 1])
													f = f + 1
													e = a[f]
													k[e[g]] = r[e[n]]
													f = f + 1
													e = a[f]
													t = e[g]
													l = k[e[n]]
													k[t + 1] = l
													k[t] = l[e[d]]
													f = f + 1
													e = a[f]
													t = e[g]
													k[t](k[t + 1])
													f = f + 1
													e = a[f]
													do
														return
													end
												end
											else
												if 221 ~= t then
													for o = 44, 59 do
														if 223 < t then
															local s = c[e[n]]
															local l
															local t = {}
															l = h.rHiMK_RU({}, {
																__index = function(f, e)
																	local e = t[e]
																	return e[1][e[2]]
																end,
																__newindex = function(k, e, f)
																	local e = t[e]
																	e[1][e[2]] = f
																end,
															})
															for g = 1, e[d] do
																f = f + 1
																local e = a[f]
																if e[y] == 1 then
																	t[g - 1] = { k, e[n] }
																else
																	t[g - 1] = { r, e[n] }
																end
																u[#u + 1] = t
															end
															k[e[g]] = m(s, l, _)
															break
														end
														local d
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = r[e[n]]
														f = f + 1
														e = a[f]
														d = e[g]
														do
															return k[d](l(k, d + 1, e[n]))
														end
														f = f + 1
														e = a[f]
														d = e[g]
														do
															return l(k, d, s)
														end
														f = f + 1
														e = a[f]
														do
															return
														end
														break
													end
												else
													local s = c[e[n]]
													local l
													local t = {}
													l = h.rHiMK_RU({}, {
														__index = function(f, e)
															local e = t[e]
															return e[1][e[2]]
														end,
														__newindex = function(k, e, f)
															local e = t[e]
															e[1][e[2]] = f
														end,
													})
													for g = 1, e[d] do
														f = f + 1
														local e = a[f]
														if e[y] == 1 then
															t[g - 1] = { k, e[n] }
														else
															t[g - 1] = { r, e[n] }
														end
														u[#u + 1] = t
													end
													k[e[g]] = m(s, l, _)
												end
											end
										else
											if t >= 219 then
												if t >= 218 then
													for h = 16, 80 do
														if 220 > t then
															local t
															k[e[g]] = e[n] + k[e[d]]
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															k[e[g]] = e[n] + k[e[d]]
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															t = e[g]
															k[t] = k[t](l(k, t + 1, e[n]))
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = k[e[d]]
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = e[d]
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = e[d]
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = e[d]
															f = f + 1
															e = a[f]
															do
																return k[e[g]]
															end
															break
														end
														local t
														t = e[g]
														k[t] = k[t](l(k, t + 1, e[n]))
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = k[e[d]]
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														t = e[g]
														k[t] = k[t](l(k, t + 1, e[n]))
														break
													end
												else
													local t
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
												end
											else
												if t > 214 then
													repeat
														if t ~= 217 then
															local t, r
															for h = 0, 9 do
																if h < 5 then
																	if 2 > h then
																		if 1 > h then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		else
																			t = e[g]
																			k[t] = k[t](l(k, t + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if 2 >= h then
																			k[e[g]] = {}
																			f = f + 1
																			e = a[f]
																		else
																			if h >= -1 then
																				repeat
																					if h ~= 4 then
																						k[e[g]][e[n]] = e[d]
																						f = f + 1
																						e = a[f]
																						break
																					end
																					t = e[g]
																					k[t] = k[t](l(k, t + 1, e[n]))
																					f = f + 1
																					e = a[f]
																				until true
																			else
																				t = e[g]
																				k[t] = k[t](l(k, t + 1, e[n]))
																				f = f + 1
																				e = a[f]
																			end
																		end
																	end
																else
																	if h >= 7 then
																		if 7 < h then
																			if h > 4 then
																				for t = 44, 57 do
																					if h ~= 8 then
																						k(e[g], e[n])
																						break
																					end
																					k[e[g]] = k[e[n]][e[d]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																			else
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																			end
																		else
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if 5 == h then
																			t = e[g]
																			r = k[e[n]]
																			k[t + 1] = r
																			k[t] = r[e[d]]
																			f = f + 1
																			e = a[f]
																		else
																			t = e[g]
																			k[t](k[t + 1])
																			f = f + 1
																			e = a[f]
																		end
																	end
																end
															end
															break
														end
														local t, h
														for _ = 0, 6 do
															if 3 > _ then
																if _ < 1 then
																	t = e[g]
																	h = k[e[n]]
																	k[t + 1] = h
																	k[t] = h[e[d]]
																	f = f + 1
																	e = a[f]
																else
																	if _ ~= 2 then
																		k[e[g]] = r[e[n]]
																		f = f + 1
																		e = a[f]
																	else
																		t = e[g]
																		h = k[e[n]]
																		k[t + 1] = h
																		k[t] = h[e[d]]
																		f = f + 1
																		e = a[f]
																	end
																end
															else
																if _ < 5 then
																	if _ > 2 then
																		for d = 26, 93 do
																			if _ < 4 then
																				k(e[g], e[n])
																				f = f + 1
																				e = a[f]
																				break
																			end
																			t = e[g]
																			k[t] = k[t](l(k, t + 1, e[n]))
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	end
																else
																	if 3 <= _ then
																		repeat
																			if 6 > _ then
																				k[e[g]] = r[e[n]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = {}
																		until true
																	else
																		k[e[g]] = r[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														end
													until true
												else
													local t, r
													for h = 0, 9 do
														if h < 5 then
															if 2 > h then
																if 1 > h then
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																else
																	t = e[g]
																	k[t] = k[t](l(k, t + 1, e[n]))
																	f = f + 1
																	e = a[f]
																end
															else
																if 2 >= h then
																	k[e[g]] = {}
																	f = f + 1
																	e = a[f]
																else
																	if h >= -1 then
																		repeat
																			if h ~= 4 then
																				k[e[g]][e[n]] = e[d]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			t = e[g]
																			k[t] = k[t](l(k, t + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		t = e[g]
																		k[t] = k[t](l(k, t + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														else
															if h >= 7 then
																if 7 < h then
																	if h > 4 then
																		for t = 44, 57 do
																			if h ~= 8 then
																				k(e[g], e[n])
																				break
																			end
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																if 5 == h then
																	t = e[g]
																	r = k[e[n]]
																	k[t + 1] = r
																	k[t] = r[e[d]]
																	f = f + 1
																	e = a[f]
																else
																	t = e[g]
																	k[t](k[t + 1])
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											end
										end
									end
								end
							else
								if t < 195 then
									if t <= 186 then
										if t > 182 then
											if 184 >= t then
												if 183 < t then
													if k[e[g]] ~= e[d] then
														f = f + 1
													else
														f = e[n]
													end
												else
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
												end
											else
												if 186 ~= t then
													local t
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
												else
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
												end
											end
										else
											if t >= 181 then
												if t ~= 177 then
													for f = 46, 93 do
														if t > 181 then
															local e = e[g]
															local g, f = o(k[e](l(k, e + 1, s)))
															s = f + e - 1
															local f = 0
															for e = e, s do
																f = f + 1
																k[e] = g[f]
															end
															break
														end
														local g = e[g]
														local n = { k[g](l(k, g + 1, s)) }
														local f = 0
														for e = g, e[d] do
															f = f + 1
															k[e] = n[f]
														end
														break
													end
												else
													local f = e[g]
													local n = { k[f](l(k, f + 1, s)) }
													local g = 0
													for e = f, e[d] do
														g = g + 1
														k[e] = n[g]
													end
												end
											else
												local h
												for t = 0, 6 do
													if t > 2 then
														if t <= 4 then
															if 2 ~= t then
																repeat
																	if 4 ~= t then
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																until true
															else
																k[e[g]][e[n]] = k[e[d]]
																f = f + 1
																e = a[f]
															end
														else
															if 5 == t then
																k[e[g]] = _[e[n]]
																f = f + 1
																e = a[f]
															else
																k[e[g]] = k[e[n]][e[d]]
															end
														end
													else
														if 0 >= t then
															k(e[g], e[n])
															f = f + 1
															e = a[f]
														else
															if -2 < t then
																for d = 48, 83 do
																	if t > 1 then
																		h = e[g]
																		k[h] = k[h](l(k, h + 1, e[n]))
																		f = f + 1
																		e = a[f]
																		break
																	end
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																	break
																end
															else
																k(e[g], e[n])
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											end
										end
									else
										if 191 <= t then
											if 192 < t then
												if 192 <= t then
													for h = 22, 52 do
														if t < 194 then
															local e = e[g]
															do
																return l(k, e, s)
															end
															break
														end
														local t
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														t = e[g]
														k[t] = k[t](l(k, t + 1, e[n]))
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = k[e[d]]
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = e[d]
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = k[e[d]]
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = e[d]
														break
													end
												else
													local t
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
												end
											else
												if t == 192 then
													local t
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
												else
													local t, r
													for h = 0, 6 do
														if h >= 3 then
															if 4 < h then
																if 4 <= h then
																	repeat
																		if h ~= 5 then
																			k(e[g], e[n])
																			break
																		end
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																if h > 0 then
																	repeat
																		if h < 4 then
																			k[e[g]][e[n]] = e[d]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		t = e[g]
																		k[t](l(k, t + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	until true
																else
																	t = e[g]
																	k[t](l(k, t + 1, e[n]))
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if h < 1 then
																t = e[g]
																r = k[e[n]]
																k[t + 1] = r
																k[t] = r[e[d]]
																f = f + 1
																e = a[f]
															else
																if 1 ~= h then
																	k[e[g]][e[n]] = e[d]
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]] = {}
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											end
										else
											if 188 >= t then
												if 188 ~= t then
													local t, _
													for h = 0, 3 do
														if 2 > h then
															if h ~= -3 then
																for r = 25, 90 do
																	if 0 ~= h then
																		t = e[g]
																		_ = k[e[n]]
																		k[t + 1] = _
																		k[t] = _[e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																	t = e[g]
																	k[t](l(k, t + 1, e[n]))
																	f = f + 1
																	e = a[f]
																	break
																end
															else
																t = e[g]
																_ = k[e[n]]
																k[t + 1] = _
																k[t] = _[e[d]]
																f = f + 1
																e = a[f]
															end
														else
															if h ~= 2 then
																if not k[e[g]] then
																	f = f + 1
																else
																	f = e[n]
																end
															else
																t = e[g]
																k[t] = k[t](k[t + 1])
																f = f + 1
																e = a[f]
															end
														end
													end
												else
													local t, _
													k[e[g]] = r[e[n]]
													f = f + 1
													e = a[f]
													t = e[g]
													_ = k[e[n]]
													k[t + 1] = _
													k[t] = _[e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k[e[g]] = (e[n] ~= 0)
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													if k[e[g]] then
														f = f + 1
													else
														f = e[n]
													end
												end
											else
												if t ~= 186 then
													repeat
														if t > 189 then
															local f = e[g]
															k[f](l(k, f + 1, e[n]))
															break
														end
														local _
														for t = 0, 4 do
															if t >= 2 then
																if 2 < t then
																	if 0 ~= t then
																		for h = 31, 85 do
																			if 3 ~= t then
																				k[e[g]][e[n]] = k[e[d]]
																				break
																			end
																			_ = e[g]
																			k[_] = k[_](l(k, _ + 1, e[n]))
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k[e[g]][e[n]] = k[e[d]]
																	end
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															else
																if -4 < t then
																	repeat
																		if 1 > t then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															end
														end
													until true
												else
													local _
													for t = 0, 4 do
														if t >= 2 then
															if 2 < t then
																if 0 ~= t then
																	for h = 31, 85 do
																		if 3 ~= t then
																			k[e[g]][e[n]] = k[e[d]]
																			break
																		end
																		_ = e[g]
																		k[_] = k[_](l(k, _ + 1, e[n]))
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]][e[n]] = k[e[d]]
																end
															else
																k(e[g], e[n])
																f = f + 1
																e = a[f]
															end
														else
															if -4 < t then
																repeat
																	if 1 > t then
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																		break
																	end
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																until true
															else
																k(e[g], e[n])
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											end
										end
									end
								else
									if t > 201 then
										if t < 206 then
											if t < 204 then
												if 203 > t then
													local h, b, r, s, o, t, u
													t = 0
													while t > -1 do
														if t <= 2 then
															if 0 >= t then
																h = e
															else
																if 2 ~= t then
																	b = g
																else
																	r = n
																end
															end
														else
															if 5 > t then
																if 4 > t then
																	s = h[r]
																else
																	o = h[b]
																end
															else
																if t == 6 then
																	t = -2
																else
																	k(o, s)
																end
															end
														end
														t = t + 1
													end
													f = f + 1
													e = a[f]
													t = 0
													while t > -1 do
														if t < 3 then
															if 0 < t then
																if -2 <= t then
																	repeat
																		if t < 2 then
																			b = g
																			break
																		end
																		r = n
																	until true
																else
																	r = n
																end
															else
																h = e
															end
														else
															if t > 4 then
																if t ~= 4 then
																	for e = 12, 64 do
																		if 5 < t then
																			t = -2
																			break
																		end
																		k(o, s)
																		break
																	end
																else
																	k(o, s)
																end
															else
																if t >= -1 then
																	repeat
																		if 3 ~= t then
																			o = h[b]
																			break
																		end
																		s = h[r]
																	until true
																else
																	s = h[r]
																end
															end
														end
														t = t + 1
													end
													f = f + 1
													e = a[f]
													u = e[g]
													k[u] = k[u](l(k, u + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													t = 0
													while t > -1 do
														if t < 3 then
															if 1 > t then
																h = e
															else
																if t >= -2 then
																	repeat
																		if t > 1 then
																			r = n
																			break
																		end
																		b = g
																	until true
																else
																	r = n
																end
															end
														else
															if t > 4 then
																if 1 < t then
																	repeat
																		if t > 5 then
																			t = -2
																			break
																		end
																		k(o, s)
																	until true
																else
																	t = -2
																end
															else
																if 1 ~= t then
																	repeat
																		if t > 3 then
																			o = h[b]
																			break
																		end
																		s = h[r]
																	until true
																else
																	o = h[b]
																end
															end
														end
														t = t + 1
													end
												else
													local l
													for t = 0, 6 do
														if 2 >= t then
															if 1 > t then
																k(e[g], e[n])
																f = f + 1
																e = a[f]
															else
																if t < 2 then
																	l = e[g]
																	k[l] = k[l](k[l + 1])
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if 4 >= t then
																if t < 4 then
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																if 3 < t then
																	for d = 23, 56 do
																		if t ~= 5 then
																			k(e[g], e[n])
																			break
																		end
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											else
												if 201 <= t then
													for l = 38, 70 do
														if 204 ~= t then
															for t = 0, 6 do
																if 3 > t then
																	if 0 < t then
																		if -1 <= t then
																			for _ = 19, 62 do
																				if 2 > t then
																					k[e[g]][e[n]] = k[e[d]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]][e[n]] = k[e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																		end
																	else
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	if t <= 4 then
																		if 3 ~= t then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		else
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if 1 ~= t then
																			for _ = 37, 76 do
																				if 6 ~= t then
																					k[e[g]] = k[e[n]][e[d]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]][e[n]] = k[e[d]]
																				break
																			end
																		else
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		end
																	end
																end
															end
															break
														end
														local s = c[e[n]]
														local l
														local t = {}
														l = h.rHiMK_RU({}, {
															__index = function(f, e)
																local e = t[e]
																return e[1][e[2]]
															end,
															__newindex = function(k, e, f)
																local e = t[e]
																e[1][e[2]] = f
															end,
														})
														for g = 1, e[d] do
															f = f + 1
															local e = a[f]
															if e[y] == 1 then
																t[g - 1] = { k, e[n] }
															else
																t[g - 1] = { r, e[n] }
															end
															u[#u + 1] = t
														end
														k[e[g]] = m(s, l, _)
														break
													end
												else
													for t = 0, 6 do
														if 3 > t then
															if 0 < t then
																if -1 <= t then
																	for _ = 19, 62 do
																		if 2 > t then
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]][e[n]] = k[e[d]]
																f = f + 1
																e = a[f]
															end
														else
															if t <= 4 then
																if 3 ~= t then
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																if 1 ~= t then
																	for _ = 37, 76 do
																		if 6 ~= t then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = k[e[d]]
																		break
																	end
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											end
										else
											if t < 208 then
												if t ~= 203 then
													for h = 29, 92 do
														if 206 ~= t then
															local f = e[g]
															k[f] = k[f](l(k, f + 1, e[n]))
															break
														end
														local h, o, u, s, r, b, t
														for t = 0, 6 do
															if t <= 2 then
																if 1 <= t then
																	if t ~= 2 then
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																	else
																		k[e[g]][e[n]] = e[d]
																		f = f + 1
																		e = a[f]
																	end
																else
																	h = e[g]
																	k[h] = k[h](l(k, h + 1, e[n]))
																	f = f + 1
																	e = a[f]
																end
															else
																if t <= 4 then
																	if 0 <= t then
																		repeat
																			if 4 > t then
																				k[e[g]][e[n]] = k[e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	if t ~= 5 then
																		t = 0
																		while t > -1 do
																			if 3 <= t then
																				if t > 4 then
																					if t >= 3 then
																						for e = 20, 56 do
																							if 5 < t then
																								t = -2
																								break
																							end
																							k(b, r)
																							break
																						end
																					else
																						k(b, r)
																					end
																				else
																					if t ~= 4 then
																						r = o[s]
																					else
																						b = o[u]
																					end
																				end
																			else
																				if t >= 1 then
																					if t >= -1 then
																						repeat
																							if 2 ~= t then
																								u = g
																								break
																							end
																							s = n
																						until true
																					else
																						s = n
																					end
																				else
																					o = e
																				end
																			end
																			t = t + 1
																		end
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														end
														break
													end
												else
													local h, r, u, o, s, b, t
													for t = 0, 6 do
														if t <= 2 then
															if 1 <= t then
																if t ~= 2 then
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]][e[n]] = e[d]
																	f = f + 1
																	e = a[f]
																end
															else
																h = e[g]
																k[h] = k[h](l(k, h + 1, e[n]))
																f = f + 1
																e = a[f]
															end
														else
															if t <= 4 then
																if 0 <= t then
																	repeat
																		if 4 > t then
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																if t ~= 5 then
																	t = 0
																	while t > -1 do
																		if 3 <= t then
																			if t > 4 then
																				if t >= 3 then
																					for e = 20, 56 do
																						if 5 < t then
																							t = -2
																							break
																						end
																						k(b, s)
																						break
																					end
																				else
																					k(b, s)
																				end
																			else
																				if t ~= 4 then
																					s = r[o]
																				else
																					b = r[u]
																				end
																			end
																		else
																			if t >= 1 then
																				if t >= -1 then
																					repeat
																						if 2 ~= t then
																							u = g
																							break
																						end
																						o = n
																					until true
																				else
																					o = n
																				end
																			else
																				r = e
																			end
																		end
																		t = t + 1
																	end
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											else
												if t ~= 207 then
													repeat
														if t < 209 then
															local h
															for t = 0, 6 do
																if 2 >= t then
																	if t < 1 then
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	else
																		if t ~= -3 then
																			for d = 12, 91 do
																				if t > 1 then
																					k(e[g], e[n])
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k(e[g], e[n])
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																		end
																	end
																else
																	if t >= 5 then
																		if t ~= 4 then
																			repeat
																				if 6 > t then
																					k[e[g]][e[n]] = e[d]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]] = _[e[n]]
																			until true
																		else
																			k[e[g]] = _[e[n]]
																		end
																	else
																		if -1 < t then
																			for _ = 36, 53 do
																				if t > 3 then
																					k[e[g]][e[n]] = k[e[d]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				h = e[g]
																				k[h] = k[h](l(k, h + 1, e[n]))
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			h = e[g]
																			k[h] = k[h](l(k, h + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		end
																	end
																end
															end
															break
														end
														local t
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														t = e[g]
														k[t] = k[t](k[t + 1])
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k(e[g], e[n])
													until true
												else
													local t
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](k[t + 1])
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
												end
											end
										end
									else
										if t <= 197 then
											if t < 196 then
												local _, h, o, s, c, u, b, t
												_ = e[g]
												k[_](k[_ + 1])
												f = f + 1
												e = a[f]
												k[e[g]] = r[e[n]]
												f = f + 1
												e = a[f]
												_ = e[g]
												h = k[e[n]]
												k[_ + 1] = h
												k[_] = h[e[d]]
												f = f + 1
												e = a[f]
												k[e[g]] = r[e[n]]
												f = f + 1
												e = a[f]
												_ = e[g]
												h = k[e[n]]
												k[_ + 1] = h
												k[_] = h[e[d]]
												f = f + 1
												e = a[f]
												t = 0
												while t > -1 do
													if 2 >= t then
														if t >= 1 then
															if t >= -2 then
																repeat
																	if 2 > t then
																		s = g
																		break
																	end
																	c = n
																until true
															else
																s = g
															end
														else
															o = e
														end
													else
														if 5 <= t then
															if t ~= 1 then
																for e = 39, 72 do
																	if 6 ~= t then
																		k(b, u)
																		break
																	end
																	t = -2
																	break
																end
															else
																t = -2
															end
														else
															if t > 0 then
																for e = 25, 77 do
																	if 3 < t then
																		b = o[s]
																		break
																	end
																	u = o[c]
																	break
																end
															else
																b = o[s]
															end
														end
													end
													t = t + 1
												end
												f = f + 1
												e = a[f]
												_ = e[g]
												k[_] = k[_](l(k, _ + 1, e[n]))
											else
												if t > 195 then
													for l = 32, 87 do
														if t < 197 then
															k[e[g]] = {}
															break
														end
														for t = 0, 6 do
															if 3 <= t then
																if 5 <= t then
																	if t > 5 then
																		k(e[g], e[n])
																	else
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	end
																else
																	if t < 4 then
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	else
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	end
																end
															else
																if t < 1 then
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																else
																	if t ~= -2 then
																		for d = 25, 82 do
																			if 2 > t then
																				k(e[g], e[n])
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														end
														break
													end
												else
													k[e[g]] = {}
												end
											end
										else
											if 199 < t then
												if t > 196 then
													repeat
														if t ~= 200 then
															local h
															for t = 0, 6 do
																if 2 >= t then
																	if 1 > t then
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	else
																		if 2 ~= t then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		else
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		end
																	end
																else
																	if t > 4 then
																		if t ~= 2 then
																			repeat
																				if 6 ~= t then
																					k[e[g]] = _[e[n]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]] = k[e[n]][e[d]]
																			until true
																		else
																			k[e[g]] = k[e[n]][e[d]]
																		end
																	else
																		if 0 <= t then
																			repeat
																				if t ~= 3 then
																					k[e[g]][e[n]] = k[e[d]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				h = e[g]
																				k[h] = k[h](l(k, h + 1, e[n]))
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																		end
																	end
																end
															end
															break
														end
														local t, _
														t = e[g]
														k[t] = k[t](l(k, t + 1, e[n]))
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = k[e[d]]
														f = f + 1
														e = a[f]
														t = e[g]
														k[t] = k[t](l(k, t + 1, e[n]))
														f = f + 1
														e = a[f]
														t = e[g]
														_ = k[e[n]]
														k[t + 1] = _
														k[t] = _[e[d]]
														f = f + 1
														e = a[f]
														t = e[g]
														k[t](k[t + 1])
														f = f + 1
														e = a[f]
														do
															return
														end
													until true
												else
													local h
													for t = 0, 6 do
														if 2 >= t then
															if 1 > t then
																k[e[g]] = _[e[n]]
																f = f + 1
																e = a[f]
															else
																if 2 ~= t then
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if t > 4 then
																if t ~= 2 then
																	repeat
																		if 6 ~= t then
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																	until true
																else
																	k[e[g]] = k[e[n]][e[d]]
																end
															else
																if 0 <= t then
																	repeat
																		if t ~= 3 then
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		h = e[g]
																		k[h] = k[h](l(k, h + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											else
												if 195 ~= t then
													repeat
														if t > 198 then
															f = e[n]
															break
														end
														k[e[g]] = (e[n] ~= 0)
													until true
												else
													f = e[n]
												end
											end
										end
									end
								end
							end
						else
							if t >= 150 then
								if 165 > t then
									if t >= 157 then
										if 161 <= t then
											if t < 163 then
												if 158 ~= t then
													repeat
														if t ~= 162 then
															k[e[g]] = r[e[n]]
															break
														end
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														k(e[g], e[n])
													until true
												else
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
												end
											else
												if 164 > t then
													local t, _
													t = e[g]
													_ = k[e[n]]
													k[t + 1] = _
													k[t] = _[e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k[e[g]] = (e[n] ~= 0)
													f = f + 1
													e = a[f]
													t = e[g]
													k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													t = e[g]
													_ = k[e[n]]
													k[t + 1] = _
													k[t] = _[e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k[e[g]] = (e[n] ~= 0)
													f = f + 1
													e = a[f]
													t = e[g]
													k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													for e = e[g], e[n] do
														k[e] = nil
													end
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
												else
													local h
													for t = 0, 6 do
														if t <= 2 then
															if 1 > t then
																k[e[g]] = _[e[n]]
																f = f + 1
																e = a[f]
															else
																if t > -2 then
																	for _ = 10, 96 do
																		if t > 1 then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if 5 <= t then
																if 1 <= t then
																	repeat
																		if t ~= 6 then
																			h = e[g]
																			k[h] = k[h](l(k, h + 1, e[n]))
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = k[e[d]]
																	until true
																else
																	h = e[g]
																	k[h] = k[h](l(k, h + 1, e[n]))
																	f = f + 1
																	e = a[f]
																end
															else
																if 4 ~= t then
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											end
										else
											if 158 < t then
												if 155 <= t then
													repeat
														if t ~= 159 then
															local t, h
															for _ = 0, 6 do
																if 3 > _ then
																	if _ >= 1 then
																		if -1 < _ then
																			for d = 18, 80 do
																				if _ < 2 then
																					k(e[g], e[n])
																					f = f + 1
																					e = a[f]
																					break
																				end
																				t = e[g]
																				k[t] = k[t](l(k, t + 1, e[n]))
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			t = e[g]
																			k[t] = k[t](l(k, t + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		end
																	else
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	end
																else
																	if _ >= 5 then
																		if 3 <= _ then
																			for l = 36, 81 do
																				if _ < 6 then
																					t = e[g]
																					h = k[e[n]]
																					k[t + 1] = h
																					k[t] = h[e[d]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				t = e[g]
																				k[t](k[t + 1])
																				break
																			end
																		else
																			t = e[g]
																			h = k[e[n]]
																			k[t + 1] = h
																			k[t] = h[e[d]]
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if _ < 4 then
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																		else
																			t = e[g]
																			k[t] = k[t](l(k, t + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		end
																	end
																end
															end
															break
														end
														local _, o, h, r, s, t, b
														for t = 0, 7 do
															if 3 < t then
																if t >= 6 then
																	if 6 ~= t then
																		k[e[g]] = k[e[n]][e[d]]
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	if 2 ~= t then
																		for _ = 48, 95 do
																			if t ~= 5 then
																				k[e[g]][e[n]] = e[d]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]][e[n]] = e[d]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k[e[g]][e[n]] = e[d]
																		f = f + 1
																		e = a[f]
																	end
																end
															else
																if t <= 1 then
																	if t > -4 then
																		for d = 49, 92 do
																			if 0 < t then
																				t = 0
																				while t > -1 do
																					if t < 3 then
																						if 1 <= t then
																							if 2 > t then
																								o = g
																							else
																								h = n
																							end
																						else
																							_ = e
																						end
																					else
																						if 4 < t then
																							if 2 <= t then
																								for e = 34, 75 do
																									if t < 6 then
																										k(s, r)
																										break
																									end
																									t = -2
																									break
																								end
																							else
																								t = -2
																							end
																						else
																							if 4 ~= t then
																								r = _[h]
																							else
																								s = _[o]
																							end
																						end
																					end
																					t = t + 1
																				end
																				f = f + 1
																				e = a[f]
																				break
																			end
																			t = 0
																			while t > -1 do
																				if 2 >= t then
																					if 0 >= t then
																						_ = e
																					else
																						if t == 1 then
																							o = g
																						else
																							h = n
																						end
																					end
																				else
																					if t >= 5 then
																						if t > 5 then
																							t = -2
																						else
																							k(s, r)
																						end
																					else
																						if t ~= 2 then
																							for e = 29, 71 do
																								if 3 < t then
																									s = _[o]
																									break
																								end
																								r = _[h]
																								break
																							end
																						else
																							r = _[h]
																						end
																					end
																				end
																				t = t + 1
																			end
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		t = 0
																		while t > -1 do
																			if 2 >= t then
																				if 0 >= t then
																					_ = e
																				else
																					if t == 1 then
																						o = g
																					else
																						h = n
																					end
																				end
																			else
																				if t >= 5 then
																					if t > 5 then
																						t = -2
																					else
																						k(s, r)
																					end
																				else
																					if t ~= 2 then
																						for e = 29, 71 do
																							if 3 < t then
																								s = _[o]
																								break
																							end
																							r = _[h]
																							break
																						end
																					else
																						r = _[h]
																					end
																				end
																			end
																			t = t + 1
																		end
																		f = f + 1
																		e = a[f]
																	end
																else
																	if -1 < t then
																		repeat
																			if t ~= 3 then
																				b = e[g]
																				k[b] = k[b](l(k, b + 1, e[n]))
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														end
													until true
												else
													local _, s, h, r, o, t, b
													for t = 0, 7 do
														if 3 < t then
															if t >= 6 then
																if 6 ~= t then
																	k[e[g]] = k[e[n]][e[d]]
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																if 2 ~= t then
																	for _ = 48, 95 do
																		if t ~= 5 then
																			k[e[g]][e[n]] = e[d]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = e[d]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]][e[n]] = e[d]
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if t <= 1 then
																if t > -4 then
																	for d = 49, 92 do
																		if 0 < t then
																			t = 0
																			while t > -1 do
																				if t < 3 then
																					if 1 <= t then
																						if 2 > t then
																							s = g
																						else
																							h = n
																						end
																					else
																						_ = e
																					end
																				else
																					if 4 < t then
																						if 2 <= t then
																							for e = 34, 75 do
																								if t < 6 then
																									k(o, r)
																									break
																								end
																								t = -2
																								break
																							end
																						else
																							t = -2
																						end
																					else
																						if 4 ~= t then
																							r = _[h]
																						else
																							o = _[s]
																						end
																					end
																				end
																				t = t + 1
																			end
																			f = f + 1
																			e = a[f]
																			break
																		end
																		t = 0
																		while t > -1 do
																			if 2 >= t then
																				if 0 >= t then
																					_ = e
																				else
																					if t == 1 then
																						s = g
																					else
																						h = n
																					end
																				end
																			else
																				if t >= 5 then
																					if t > 5 then
																						t = -2
																					else
																						k(o, r)
																					end
																				else
																					if t ~= 2 then
																						for e = 29, 71 do
																							if 3 < t then
																								o = _[s]
																								break
																							end
																							r = _[h]
																							break
																						end
																					else
																						r = _[h]
																					end
																				end
																			end
																			t = t + 1
																		end
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	t = 0
																	while t > -1 do
																		if 2 >= t then
																			if 0 >= t then
																				_ = e
																			else
																				if t == 1 then
																					s = g
																				else
																					h = n
																				end
																			end
																		else
																			if t >= 5 then
																				if t > 5 then
																					t = -2
																				else
																					k(o, r)
																				end
																			else
																				if t ~= 2 then
																					for e = 29, 71 do
																						if 3 < t then
																							o = _[s]
																							break
																						end
																						r = _[h]
																						break
																					end
																				else
																					r = _[h]
																				end
																			end
																		end
																		t = t + 1
																	end
																	f = f + 1
																	e = a[f]
																end
															else
																if -1 < t then
																	repeat
																		if t ~= 3 then
																			b = e[g]
																			k[b] = k[b](l(k, b + 1, e[n]))
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											else
												if t ~= 158 then
													k[e[g]] = {}
													f = f + 1
													e = a[f]
													k[e[g]] = {}
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
												else
													local l
													for t = 0, 6 do
														if t <= 2 then
															if 0 < t then
																if 0 <= t then
																	for _ = 19, 89 do
																		if 1 ~= t then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = _[e[n]]
																f = f + 1
																e = a[f]
															end
														else
															if 4 >= t then
																if 4 > t then
																	l = e[g]
																	k[l] = k[l](k[l + 1])
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																if 2 < t then
																	repeat
																		if 6 ~= t then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k(e[g], e[n])
																	until true
																else
																	k(e[g], e[n])
																end
															end
														end
													end
												end
											end
										end
									else
										if t <= 152 then
											if 151 <= t then
												if 151 ~= t then
													k[e[g]][e[n]] = k[e[d]]
												else
													local t
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
												end
											else
												k[e[g]] = {}
											end
										else
											if t > 154 then
												if 152 ~= t then
													for r = 24, 64 do
														if 156 ~= t then
															local t
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															t = e[g]
															k[t] = k[t](l(k, t + 1, e[n]))
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = k[e[d]]
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = e[d]
															f = f + 1
															e = a[f]
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															break
														end
														local t, c, u, b, p
														for r = 0, 6 do
															if r < 3 then
																if 1 <= r then
																	if r >= -3 then
																		for t = 17, 61 do
																			if 2 ~= r then
																				k[e[g]] = _[e[n]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	t = e[g]
																	k[t] = k[t](l(k, t + 1, e[n]))
																	f = f + 1
																	e = a[f]
																end
															else
																if r < 5 then
																	if 1 ~= r then
																		for d = 10, 72 do
																			if r < 4 then
																				k(e[g], e[n])
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	end
																else
																	if r > 4 then
																		repeat
																			if 6 ~= r then
																				t = e[g]
																				c, u = o(k[t](l(k, t + 1, e[n])))
																				s = u + t - 1
																				b = 0
																				for e = t, s do
																					b = b + 1
																					k[e] = c[b]
																				end
																				f = f + 1
																				e = a[f]
																				break
																			end
																			t = e[g]
																			p = k[t]
																			for e = t + 1, s do
																				h.ixMwRZhL(p, k[e])
																			end
																		until true
																	else
																		t = e[g]
																		c, u = o(k[t](l(k, t + 1, e[n])))
																		s = u + t - 1
																		b = 0
																		for e = t, s do
																			b = b + 1
																			k[e] = c[b]
																		end
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														end
														break
													end
												else
													local t
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
												end
											else
												if 150 ~= t then
													repeat
														if 154 ~= t then
															local t
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															t = e[g]
															k[t] = k[t](l(k, t + 1, e[n]))
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = k[e[d]]
															f = f + 1
															e = a[f]
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															break
														end
														local l, r, h, b, o, t, s
														for t = 0, 6 do
															if 2 < t then
																if t <= 4 then
																	if t ~= -1 then
																		for d = 19, 81 do
																			if t ~= 4 then
																				s = e[g]
																				k[s] = k[s](k[s + 1])
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		s = e[g]
																		k[s] = k[s](k[s + 1])
																		f = f + 1
																		e = a[f]
																	end
																else
																	if 6 ~= t then
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	else
																		t = 0
																		while t > -1 do
																			if t < 3 then
																				if 1 > t then
																					l = e
																				else
																					if 2 ~= t then
																						r = g
																					else
																						h = n
																					end
																				end
																			else
																				if t <= 4 then
																					if 4 > t then
																						b = l[h]
																					else
																						o = l[r]
																					end
																				else
																					if t == 6 then
																						t = -2
																					else
																						k(o, b)
																					end
																				end
																			end
																			t = t + 1
																		end
																	end
																end
															else
																if t > 0 then
																	if t >= 0 then
																		repeat
																			if 1 < t then
																				t = 0
																				while t > -1 do
																					if t > 2 then
																						if 4 >= t then
																							if t > -1 then
																								for e = 24, 81 do
																									if 3 ~= t then
																										o = l[r]
																										break
																									end
																									b = l[h]
																									break
																								end
																							else
																								o = l[r]
																							end
																						else
																							if 6 > t then
																								k(o, b)
																							else
																								t = -2
																							end
																						end
																					else
																						if t <= 0 then
																							l = e
																						else
																							if -2 ~= t then
																								repeat
																									if t > 1 then
																										h = n
																										break
																									end
																									r = g
																								until true
																							else
																								h = n
																							end
																						end
																					end
																					t = t + 1
																				end
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		t = 0
																		while t > -1 do
																			if t > 2 then
																				if 4 >= t then
																					if t > -1 then
																						for e = 24, 81 do
																							if 3 ~= t then
																								o = l[r]
																								break
																							end
																							b = l[h]
																							break
																						end
																					else
																						o = l[r]
																					end
																				else
																					if 6 > t then
																						k(o, b)
																					else
																						t = -2
																					end
																				end
																			else
																				if t <= 0 then
																					l = e
																				else
																					if -2 ~= t then
																						repeat
																							if t > 1 then
																								h = n
																								break
																							end
																							r = g
																						until true
																					else
																						h = n
																					end
																				end
																			end
																			t = t + 1
																		end
																		f = f + 1
																		e = a[f]
																	end
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													until true
												else
													local l, r, h, b, o, t, s
													for t = 0, 6 do
														if 2 < t then
															if t <= 4 then
																if t ~= -1 then
																	for d = 19, 81 do
																		if t ~= 4 then
																			s = e[g]
																			k[s] = k[s](k[s + 1])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	s = e[g]
																	k[s] = k[s](k[s + 1])
																	f = f + 1
																	e = a[f]
																end
															else
																if 6 ~= t then
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																else
																	t = 0
																	while t > -1 do
																		if t < 3 then
																			if 1 > t then
																				l = e
																			else
																				if 2 ~= t then
																					r = g
																				else
																					h = n
																				end
																			end
																		else
																			if t <= 4 then
																				if 4 > t then
																					b = l[h]
																				else
																					o = l[r]
																				end
																			else
																				if t == 6 then
																					t = -2
																				else
																					k(o, b)
																				end
																			end
																		end
																		t = t + 1
																	end
																end
															end
														else
															if t > 0 then
																if t >= 0 then
																	repeat
																		if 1 < t then
																			t = 0
																			while t > -1 do
																				if t > 2 then
																					if 4 >= t then
																						if t > -1 then
																							for e = 24, 81 do
																								if 3 ~= t then
																									o = l[r]
																									break
																								end
																								b = l[h]
																								break
																							end
																						else
																							o = l[r]
																						end
																					else
																						if 6 > t then
																							k(o, b)
																						else
																							t = -2
																						end
																					end
																				else
																					if t <= 0 then
																						l = e
																					else
																						if -2 ~= t then
																							repeat
																								if t > 1 then
																									h = n
																									break
																								end
																								r = g
																							until true
																						else
																							h = n
																						end
																					end
																				end
																				t = t + 1
																			end
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	t = 0
																	while t > -1 do
																		if t > 2 then
																			if 4 >= t then
																				if t > -1 then
																					for e = 24, 81 do
																						if 3 ~= t then
																							o = l[r]
																							break
																						end
																						b = l[h]
																						break
																					end
																				else
																					o = l[r]
																				end
																			else
																				if 6 > t then
																					k(o, b)
																				else
																					t = -2
																				end
																			end
																		else
																			if t <= 0 then
																				l = e
																			else
																				if -2 ~= t then
																					repeat
																						if t > 1 then
																							h = n
																							break
																						end
																						r = g
																					until true
																				else
																					h = n
																				end
																			end
																		end
																		t = t + 1
																	end
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = _[e[n]]
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											end
										end
									end
								else
									if t < 172 then
										if t < 168 then
											if 166 > t then
												local e = e[g]
												local f = k[e]
												for e = e + 1, s do
													h.ixMwRZhL(f, k[e])
												end
											else
												if 165 <= t then
													repeat
														if 167 ~= t then
															local t, h
															k[e[g]] = r[e[n]]
															f = f + 1
															e = a[f]
															t = e[g]
															h = k[e[n]]
															k[t + 1] = h
															k[t] = h[e[d]]
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															t = e[g]
															k[t] = k[t](l(k, t + 1, e[n]))
															f = f + 1
															e = a[f]
															k[e[g]] = r[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = {}
															f = f + 1
															e = a[f]
															k[e[g]] = _[e[n]]
															break
														end
														local l, h
														for t = 0, 6 do
															if 2 < t then
																if t <= 4 then
																	if t ~= -1 then
																		for d = 45, 88 do
																			if 3 < t then
																				k[e[g]] = _[e[n]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = {}
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	if t < 6 then
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	else
																		k(e[g], e[n])
																	end
																end
															else
																if t >= 1 then
																	if -1 < t then
																		repeat
																			if 2 > t then
																				k[e[g]] = r[e[n]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = r[e[n]]
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		k[e[g]] = r[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	l = e[g]
																	h = k[e[n]]
																	k[l + 1] = h
																	k[l] = h[e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													until true
												else
													local l, h
													for t = 0, 6 do
														if 2 < t then
															if t <= 4 then
																if t ~= -1 then
																	for d = 45, 88 do
																		if 3 < t then
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = {}
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																if t < 6 then
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k(e[g], e[n])
																end
															end
														else
															if t >= 1 then
																if -1 < t then
																	repeat
																		if 2 > t then
																			k[e[g]] = r[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = r[e[n]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = r[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																l = e[g]
																h = k[e[n]]
																k[l + 1] = h
																k[l] = h[e[d]]
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											end
										else
											if t > 169 then
												if t > 169 then
													repeat
														if t > 170 then
															local t, _
															t = e[g]
															k[t] = k[t](l(k, t + 1, e[n]))
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = k[e[d]]
															f = f + 1
															e = a[f]
															t = e[g]
															k[t] = k[t](l(k, t + 1, e[n]))
															f = f + 1
															e = a[f]
															t = e[g]
															_ = k[e[n]]
															k[t + 1] = _
															k[t] = _[e[d]]
															f = f + 1
															e = a[f]
															t = e[g]
															k[t](k[t + 1])
															f = f + 1
															e = a[f]
															do
																return
															end
															break
														end
														local g = e[g]
														local f = k[e[n]]
														k[g + 1] = f
														k[g] = f[e[d]]
													until true
												else
													local t, _
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													t = e[g]
													_ = k[e[n]]
													k[t + 1] = _
													k[t] = _[e[d]]
													f = f + 1
													e = a[f]
													t = e[g]
													k[t](k[t + 1])
													f = f + 1
													e = a[f]
													do
														return
													end
												end
											else
												if t ~= 165 then
													for l = 24, 60 do
														if t ~= 168 then
															local t, l
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]]
															f = f + 1
															e = a[f]
															t = e[g]
															k[t] = k[t](k[t + 1])
															f = f + 1
															e = a[f]
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															t = e[g]
															k[t] = k[t](k[t + 1])
															f = f + 1
															e = a[f]
															t = e[g]
															l = k[e[n]]
															k[t + 1] = l
															k[t] = l[e[d]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]]
															break
														end
														k[e[g]][e[n]] = k[e[d]]
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = e[d]
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = k[e[d]]
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = k[e[d]]
														break
													end
												else
													local t, l
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]]
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](k[t + 1])
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](k[t + 1])
													f = f + 1
													e = a[f]
													t = e[g]
													l = k[e[n]]
													k[t + 1] = l
													k[t] = l[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]]
												end
											end
										end
									else
										if 175 >= t then
											if t <= 173 then
												if 168 <= t then
													for h = 47, 98 do
														if t < 173 then
															local t
															for h = 0, 6 do
																if 3 > h then
																	if 0 >= h then
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	else
																		if -2 ~= h then
																			for _ = 12, 72 do
																				if h ~= 2 then
																					t = e[g]
																					k[t] = k[t](l(k, t + 1, e[n]))
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]][e[n]] = k[e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			t = e[g]
																			k[t] = k[t](l(k, t + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		end
																	end
																else
																	if 4 < h then
																		if h ~= 2 then
																			repeat
																				if 5 < h then
																					k[e[g]][e[n]] = k[e[d]]
																					break
																				end
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			k[e[g]][e[n]] = k[e[d]]
																		end
																	else
																		if h < 4 then
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																		else
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		end
																	end
																end
															end
															break
														end
														local a = k[e[d]]
														if a then
															f = f + 1
														else
															k[e[g]] = a
															f = e[n]
														end
														break
													end
												else
													local a = k[e[d]]
													if a then
														f = f + 1
													else
														k[e[g]] = a
														f = e[n]
													end
												end
											else
												if t > 172 then
													repeat
														if t ~= 174 then
															local _, c, h, r, s, b, u, o, t
															for t = 0, 6 do
																if 3 <= t then
																	if 5 > t then
																		if t ~= -1 then
																			repeat
																				if 3 < t then
																					_ = e[g]
																					c = k[e[n]]
																					k[_ + 1] = c
																					k[_] = c[e[d]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				_ = e[g]
																				k[_] = k[_](l(k, _ + 1, e[n]))
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			_ = e[g]
																			k[_] = k[_](l(k, _ + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if 3 < t then
																			repeat
																				if t ~= 5 then
																					_ = e[g]
																					k[_] = k[_](l(k, _ + 1, e[n]))
																					break
																				end
																				t = 0
																				while t > -1 do
																					if 4 <= t then
																						if t > 5 then
																							if t > 3 then
																								repeat
																									if t ~= 7 then
																										k[o] = u
																										break
																									end
																									t = -2
																								until true
																							else
																								t = -2
																							end
																						else
																							if 4 == t then
																								u = b[h[s]]
																							else
																								o = h[r]
																							end
																						end
																					else
																						if 2 > t then
																							if t < 1 then
																								h = e
																							else
																								r = g
																							end
																						else
																							if -2 <= t then
																								for e = 24, 53 do
																									if 2 < t then
																										b = k
																										break
																									end
																									s = n
																									break
																								end
																							else
																								b = k
																							end
																						end
																					end
																					t = t + 1
																				end
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			t = 0
																			while t > -1 do
																				if 4 <= t then
																					if t > 5 then
																						if t > 3 then
																							repeat
																								if t ~= 7 then
																									k[o] = u
																									break
																								end
																								t = -2
																							until true
																						else
																							t = -2
																						end
																					else
																						if 4 == t then
																							u = b[h[s]]
																						else
																							o = h[r]
																						end
																					end
																				else
																					if 2 > t then
																						if t < 1 then
																							h = e
																						else
																							r = g
																						end
																					else
																						if -2 <= t then
																							for e = 24, 53 do
																								if 2 < t then
																									b = k
																									break
																								end
																								s = n
																								break
																							end
																						else
																							b = k
																						end
																					end
																				end
																				t = t + 1
																			end
																			f = f + 1
																			e = a[f]
																		end
																	end
																else
																	if 1 <= t then
																		if t > -1 then
																			for l = 41, 53 do
																				if t ~= 2 then
																					_ = e[g]
																					c = k[e[n]]
																					k[_ + 1] = c
																					k[_] = c[e[d]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				t = 0
																				while t > -1 do
																					if 3 >= t then
																						if t < 2 then
																							if -2 <= t then
																								repeat
																									if t < 1 then
																										h = e
																										break
																									end
																									r = g
																								until true
																							else
																								r = g
																							end
																						else
																							if t > -2 then
																								for e = 41, 69 do
																									if 3 ~= t then
																										s = n
																										break
																									end
																									b = k
																									break
																								end
																							else
																								s = n
																							end
																						end
																					else
																						if t > 5 then
																							if t == 6 then
																								k[o] = u
																							else
																								t = -2
																							end
																						else
																							if t ~= 1 then
																								for e = 40, 56 do
																									if 5 > t then
																										u = b[h[s]]
																										break
																									end
																									o = h[r]
																									break
																								end
																							else
																								o = h[r]
																							end
																						end
																					end
																					t = t + 1
																				end
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			t = 0
																			while t > -1 do
																				if 3 >= t then
																					if t < 2 then
																						if -2 <= t then
																							repeat
																								if t < 1 then
																									h = e
																									break
																								end
																								r = g
																							until true
																						else
																							r = g
																						end
																					else
																						if t > -2 then
																							for e = 41, 69 do
																								if 3 ~= t then
																									s = n
																									break
																								end
																								b = k
																								break
																							end
																						else
																							s = n
																						end
																					end
																				else
																					if t > 5 then
																						if t == 6 then
																							k[o] = u
																						else
																							t = -2
																						end
																					else
																						if t ~= 1 then
																							for e = 40, 56 do
																								if 5 > t then
																									u = b[h[s]]
																									break
																								end
																								o = h[r]
																								break
																							end
																						else
																							o = h[r]
																						end
																					end
																				end
																				t = t + 1
																			end
																			f = f + 1
																			e = a[f]
																		end
																	else
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
															break
														end
														k[e[g]] = e[n] + k[e[d]]
													until true
												else
													k[e[g]] = e[n] + k[e[d]]
												end
											end
										else
											if 177 < t then
												if 174 < t then
													for h = 12, 64 do
														if 178 < t then
															local t, u, r, c, h, b
															for r = 0, 5 do
																if 2 < r then
																	if r <= 3 then
																		t = e[g]
																		b, c = o(k[t](k[t + 1]))
																		s = c + t - 1
																		h = 0
																		for e = t, s do
																			h = h + 1
																			k[e] = b[h]
																		end
																		f = f + 1
																		e = a[f]
																	else
																		if r >= 3 then
																			for _ = 27, 76 do
																				if r > 4 then
																					f = e[n]
																					break
																				end
																				t = e[g]
																				b = { k[t](l(k, t + 1, s)) }
																				h = 0
																				for e = t, e[d] do
																					h = h + 1
																					k[e] = b[h]
																				end
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			t = e[g]
																			b = { k[t](l(k, t + 1, s)) }
																			h = 0
																			for e = t, e[d] do
																				h = h + 1
																				k[e] = b[h]
																			end
																			f = f + 1
																			e = a[f]
																		end
																	end
																else
																	if 1 > r then
																		t = e[g]
																		k[t](l(k, t + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	else
																		if r ~= -1 then
																			repeat
																				if 2 > r then
																					k[e[g]] = _[e[n]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				t = e[g]
																				u = k[e[n]]
																				k[t + 1] = u
																				k[t] = u[e[d]]
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																		end
																	end
																end
															end
															break
														end
														do
															return
														end
														break
													end
												else
													local t, u, r, c, h, b
													for r = 0, 5 do
														if 2 < r then
															if r <= 3 then
																t = e[g]
																b, c = o(k[t](k[t + 1]))
																s = c + t - 1
																h = 0
																for e = t, s do
																	h = h + 1
																	k[e] = b[h]
																end
																f = f + 1
																e = a[f]
															else
																if r >= 3 then
																	for _ = 27, 76 do
																		if r > 4 then
																			f = e[n]
																			break
																		end
																		t = e[g]
																		b = { k[t](l(k, t + 1, s)) }
																		h = 0
																		for e = t, e[d] do
																			h = h + 1
																			k[e] = b[h]
																		end
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	t = e[g]
																	b = { k[t](l(k, t + 1, s)) }
																	h = 0
																	for e = t, e[d] do
																		h = h + 1
																		k[e] = b[h]
																	end
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if 1 > r then
																t = e[g]
																k[t](l(k, t + 1, e[n]))
																f = f + 1
																e = a[f]
															else
																if r ~= -1 then
																	repeat
																		if 2 > r then
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		t = e[g]
																		u = k[e[n]]
																		k[t + 1] = u
																		k[t] = u[e[d]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											else
												if t >= 175 then
													repeat
														if 177 > t then
															local t, l
															t = e[g]
															k[t] = k[t](k[t + 1])
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = e[d]
															f = f + 1
															e = a[f]
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															f = f + 1
															e = a[f]
															t = e[g]
															l = k[e[n]]
															k[t + 1] = l
															k[t] = l[e[d]]
															break
														end
														local h, s, r, b, o, t, u
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														t = 0
														while t > -1 do
															if t < 3 then
																if t >= 1 then
																	if t ~= -2 then
																		for e = 46, 70 do
																			if t > 1 then
																				r = n
																				break
																			end
																			s = g
																			break
																		end
																	else
																		r = n
																	end
																else
																	h = e
																end
															else
																if t >= 5 then
																	if t >= 3 then
																		repeat
																			if 6 ~= t then
																				k(o, b)
																				break
																			end
																			t = -2
																		until true
																	else
																		t = -2
																	end
																else
																	if 1 <= t then
																		for e = 22, 92 do
																			if 4 ~= t then
																				b = h[r]
																				break
																			end
																			o = h[s]
																			break
																		end
																	else
																		o = h[s]
																	end
																end
															end
															t = t + 1
														end
														f = f + 1
														e = a[f]
														t = 0
														while t > -1 do
															if 2 >= t then
																if 1 <= t then
																	if t >= -3 then
																		for e = 30, 85 do
																			if t ~= 1 then
																				r = n
																				break
																			end
																			s = g
																			break
																		end
																	else
																		r = n
																	end
																else
																	h = e
																end
															else
																if t > 4 then
																	if 1 <= t then
																		repeat
																			if t < 6 then
																				k(o, b)
																				break
																			end
																			t = -2
																		until true
																	else
																		t = -2
																	end
																else
																	if 3 == t then
																		b = h[r]
																	else
																		o = h[s]
																	end
																end
															end
															t = t + 1
														end
														f = f + 1
														e = a[f]
														u = e[g]
														k[u] = k[u](l(k, u + 1, e[n]))
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = k[e[d]]
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
													until true
												else
													local t, l
													t = e[g]
													k[t] = k[t](k[t + 1])
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													t = e[g]
													l = k[e[n]]
													k[t + 1] = l
													k[t] = l[e[d]]
												end
											end
										end
									end
								end
							else
								if t <= 134 then
									if t > 126 then
										if t > 130 then
											if t > 132 then
												if 133 < t then
													k[e[g]] = r[e[n]]
												else
													local l, _
													for t = 0, 4 do
														if t > 1 then
															if 3 > t then
																k[e[g]] = r[e[n]]
																f = f + 1
																e = a[f]
															else
																if t > -1 then
																	for d = 43, 98 do
																		if 4 > t then
																			k[e[g]] = r[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = {}
																		break
																	end
																else
																	k[e[g]] = {}
																end
															end
														else
															if 0 ~= t then
																l = e[g]
																_ = k[e[n]]
																k[l + 1] = _
																k[l] = _[e[d]]
																f = f + 1
																e = a[f]
															else
																k[e[g]] = r[e[n]]
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											else
												if t > 130 then
													repeat
														if t < 132 then
															if k[e[g]] == e[d] then
																f = f + 1
															else
																f = e[n]
															end
															break
														end
														local t, h
														for _ = 0, 6 do
															if _ >= 3 then
																if _ >= 5 then
																	if 4 <= _ then
																		repeat
																			if _ < 6 then
																				t = e[g]
																				k[t] = k[t](l(k, t + 1, e[n]))
																				f = f + 1
																				e = a[f]
																				break
																			end
																			if not k[e[g]] then
																				f = f + 1
																			else
																				f = e[n]
																			end
																		until true
																	else
																		t = e[g]
																		k[t] = k[t](l(k, t + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	end
																else
																	if _ >= 0 then
																		repeat
																			if 3 ~= _ then
																				k(e[g], e[n])
																				f = f + 1
																				e = a[f]
																				break
																			end
																			t = e[g]
																			h = k[e[n]]
																			k[t + 1] = h
																			k[t] = h[e[d]]
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	end
																end
															else
																if _ <= 0 then
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																else
																	if -1 ~= _ then
																		for d = 23, 68 do
																			if 1 < _ then
																				k[e[g]] = r[e[n]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]]()
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k[e[g]] = r[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														end
													until true
												else
													local t, h
													for _ = 0, 6 do
														if _ >= 3 then
															if _ >= 5 then
																if 4 <= _ then
																	repeat
																		if _ < 6 then
																			t = e[g]
																			k[t] = k[t](l(k, t + 1, e[n]))
																			f = f + 1
																			e = a[f]
																			break
																		end
																		if not k[e[g]] then
																			f = f + 1
																		else
																			f = e[n]
																		end
																	until true
																else
																	t = e[g]
																	k[t] = k[t](l(k, t + 1, e[n]))
																	f = f + 1
																	e = a[f]
																end
															else
																if _ >= 0 then
																	repeat
																		if 3 ~= _ then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		t = e[g]
																		h = k[e[n]]
																		k[t + 1] = h
																		k[t] = h[e[d]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if _ <= 0 then
																k[e[g]] = k[e[n]][e[d]]
																f = f + 1
																e = a[f]
															else
																if -1 ~= _ then
																	for d = 23, 68 do
																		if 1 < _ then
																			k[e[g]] = r[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]]()
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]] = r[e[n]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											end
										else
											if t >= 129 then
												if 129 ~= t then
													local _
													for t = 0, 4 do
														if 1 < t then
															if t <= 2 then
																_ = e[g]
																k[_] = k[_](l(k, _ + 1, e[n]))
																f = f + 1
																e = a[f]
															else
																if 1 < t then
																	repeat
																		if t > 3 then
																			k[e[g]][e[n]] = e[d]
																			break
																		end
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]][e[n]] = e[d]
																end
															end
														else
															if -2 < t then
																for d = 24, 92 do
																	if t > 0 then
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																		break
																	end
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																	break
																end
															else
																k(e[g], e[n])
																f = f + 1
																e = a[f]
															end
														end
													end
												else
													local e = e[g]
													k[e] = k[e](l(k, e + 1, s))
												end
											else
												if t ~= 128 then
													local a = k[e[d]]
													if not a then
														f = f + 1
													else
														k[e[g]] = a
														f = e[n]
													end
												else
													local t
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
												end
											end
										end
									else
										if t > 122 then
											if 125 <= t then
												if t ~= 123 then
													for f = 46, 75 do
														if t > 125 then
															local e = e[g]
															local g, f = o(k[e](l(k, e + 1, s)))
															s = f + e - 1
															local f = 0
															for e = e, s do
																f = f + 1
																k[e] = g[f]
															end
															break
														end
														local e = e[g]
														k[e](k[e + 1])
														break
													end
												else
													local e = e[g]
													local g, f = o(k[e](l(k, e + 1, s)))
													s = f + e - 1
													local f = 0
													for e = e, s do
														f = f + 1
														k[e] = g[f]
													end
												end
											else
												if t ~= 124 then
													local e = e[g]
													k[e] = k[e](l(k, e + 1, s))
												else
													local h, s
													for t = 0, 9 do
														if t >= 5 then
															if t < 7 then
																if t >= 2 then
																	repeat
																		if t > 5 then
																			h = e[g]
																			k[h](l(k, h + 1, e[n]))
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = k[e[n]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = k[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																if 7 < t then
																	if 7 < t then
																		repeat
																			if t ~= 8 then
																				k(e[g], e[n])
																				break
																			end
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		k(e[g], e[n])
																	end
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if t <= 1 then
																if t >= -1 then
																	for _ = 21, 83 do
																		if t < 1 then
																			k[e[g]][e[n]] = e[d]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = r[e[n]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]] = r[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																if t < 3 then
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																else
																	if 0 ~= t then
																		repeat
																			if 4 > t then
																				k[e[g]] = r[e[n]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			h = e[g]
																			s = k[e[n]]
																			k[h + 1] = s
																			k[h] = s[e[d]]
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		h = e[g]
																		s = k[e[n]]
																		k[h + 1] = s
																		k[h] = s[e[d]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														end
													end
												end
											end
										else
											if 120 >= t then
												local f = e[g]
												local g, e = o(k[f](l(k, f + 1, e[n])))
												s = e + f - 1
												local e = 0
												for f = f, s do
													e = e + 1
													k[f] = g[e]
												end
											else
												if t >= 120 then
													repeat
														if 122 > t then
															if not k[e[g]] then
																f = f + 1
															else
																f = e[n]
															end
															break
														end
														for t = 0, 6 do
															if 3 > t then
																if 1 <= t then
																	if -1 ~= t then
																		repeat
																			if 2 > t then
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																if 5 <= t then
																	if t >= 2 then
																		for _ = 44, 72 do
																			if 6 > t then
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]][e[n]] = k[e[d]]
																			break
																		end
																	else
																		k[e[g]][e[n]] = k[e[d]]
																	end
																else
																	if 3 ~= t then
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	else
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														end
													until true
												else
													for t = 0, 6 do
														if 3 > t then
															if 1 <= t then
																if -1 ~= t then
																	repeat
																		if 2 > t then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = k[e[n]][e[d]]
																f = f + 1
																e = a[f]
															end
														else
															if 5 <= t then
																if t >= 2 then
																	for _ = 44, 72 do
																		if 6 > t then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = k[e[d]]
																		break
																	end
																else
																	k[e[g]][e[n]] = k[e[d]]
																end
															else
																if 3 ~= t then
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											end
										end
									end
								else
									if t <= 141 then
										if 138 <= t then
											if t < 140 then
												if t >= 134 then
													repeat
														if 138 < t then
															local _, h
															for t = 0, 8 do
																if 3 >= t then
																	if 2 <= t then
																		if -1 <= t then
																			for _ = 25, 59 do
																				if t ~= 2 then
																					k[e[g]][e[n]] = e[d]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]][e[n]] = e[d]
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			k[e[g]][e[n]] = e[d]
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if t > -3 then
																			for l = 25, 60 do
																				if 0 < t then
																					k[e[g]] = {}
																					f = f + 1
																					e = a[f]
																					break
																				end
																				_ = e[g]
																				h = k[e[n]]
																				k[_ + 1] = h
																				k[_] = h[e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			k[e[g]] = {}
																			f = f + 1
																			e = a[f]
																		end
																	end
																else
																	if t < 6 then
																		if t > 4 then
																			k[e[g]] = r[e[n]]
																			f = f + 1
																			e = a[f]
																		else
																			_ = e[g]
																			k[_](l(k, _ + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if t < 7 then
																			k[e[g]][e[n]] = e[d]
																			f = f + 1
																			e = a[f]
																		else
																			if t > 3 then
																				for _ = 21, 83 do
																					if 8 > t then
																						k[e[g]] = r[e[n]]
																						f = f + 1
																						e = a[f]
																						break
																					end
																					k[e[g]][e[n]] = e[d]
																					break
																				end
																			else
																				k[e[g]][e[n]] = e[d]
																			end
																		end
																	end
																end
															end
															break
														end
														local t, _
														k[e[g]] = r[e[n]]
														f = f + 1
														e = a[f]
														t = e[g]
														_ = k[e[n]]
														k[t + 1] = _
														k[t] = _[e[d]]
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														k[e[g]] = (e[n] ~= 0)
														f = f + 1
														e = a[f]
														t = e[g]
														k[t] = k[t](l(k, t + 1, e[n]))
														f = f + 1
														e = a[f]
														if k[e[g]] then
															f = f + 1
														else
															f = e[n]
														end
													until true
												else
													local t, _
													k[e[g]] = r[e[n]]
													f = f + 1
													e = a[f]
													t = e[g]
													_ = k[e[n]]
													k[t + 1] = _
													k[t] = _[e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k[e[g]] = (e[n] ~= 0)
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													if k[e[g]] then
														f = f + 1
													else
														f = e[n]
													end
												end
											else
												if 139 <= t then
													repeat
														if t < 141 then
															local d, a, _, l, t
															local f = 0
															while f > -1 do
																if 2 < f then
																	if 4 < f then
																		if f ~= 6 then
																			k(t, l)
																		else
																			f = -2
																		end
																	else
																		if f ~= 2 then
																			for e = 35, 88 do
																				if 4 ~= f then
																					l = d[_]
																					break
																				end
																				t = d[a]
																				break
																			end
																		else
																			t = d[a]
																		end
																	end
																else
																	if f >= 1 then
																		if -1 < f then
																			for e = 21, 91 do
																				if 2 > f then
																					a = g
																					break
																				end
																				_ = n
																				break
																			end
																		else
																			a = g
																		end
																	else
																		d = e
																	end
																end
																f = f + 1
															end
															break
														end
														local t
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														t = e[g]
														k[t] = k[t](k[t + 1])
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k(e[g], e[n])
													until true
												else
													local d, a, _, l, t
													local f = 0
													while f > -1 do
														if 2 < f then
															if 4 < f then
																if f ~= 6 then
																	k(t, l)
																else
																	f = -2
																end
															else
																if f ~= 2 then
																	for e = 35, 88 do
																		if 4 ~= f then
																			l = d[_]
																			break
																		end
																		t = d[a]
																		break
																	end
																else
																	t = d[a]
																end
															end
														else
															if f >= 1 then
																if -1 < f then
																	for e = 21, 91 do
																		if 2 > f then
																			a = g
																			break
																		end
																		_ = n
																		break
																	end
																else
																	a = g
																end
															else
																d = e
															end
														end
														f = f + 1
													end
												end
											end
										else
											if t >= 136 then
												if 137 ~= t then
													for t = 0, 6 do
														if 2 >= t then
															if t >= 1 then
																if 0 < t then
																	repeat
																		if 1 < t then
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = e[d]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]][e[n]] = k[e[d]]
																f = f + 1
																e = a[f]
															end
														else
															if 4 >= t then
																if t ~= 2 then
																	repeat
																		if t > 3 then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																if t ~= 6 then
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																else
																	k(e[g], e[n])
																end
															end
														end
													end
												else
													local t
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
												end
											else
												local h
												for t = 0, 6 do
													if t < 3 then
														if 0 >= t then
															k(e[g], e[n])
															f = f + 1
															e = a[f]
														else
															if -3 ~= t then
																for d = 49, 98 do
																	if t ~= 2 then
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																		break
																	end
																	h = e[g]
																	k[h] = k[h](l(k, h + 1, e[n]))
																	f = f + 1
																	e = a[f]
																	break
																end
															else
																h = e[g]
																k[h] = k[h](l(k, h + 1, e[n]))
																f = f + 1
																e = a[f]
															end
														end
													else
														if t > 4 then
															if 1 <= t then
																for _ = 15, 62 do
																	if 5 ~= t then
																		k(e[g], e[n])
																		break
																	end
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																	break
																end
															else
																k(e[g], e[n])
															end
														else
															if 2 < t then
																repeat
																	if 4 ~= t then
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																until true
															else
																k[e[g]][e[n]] = k[e[d]]
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											end
										end
									else
										if 145 < t then
											if 147 < t then
												if t > 148 then
													local t, _
													t = e[g]
													_ = k[e[n]]
													k[t + 1] = _
													k[t] = _[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = {}
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													t = e[g]
													k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													f = e[n]
												else
													local e = e[g]
													k[e] = k[e]()
												end
											else
												if 145 < t then
													repeat
														if 146 < t then
															local h
															for t = 0, 6 do
																if 2 >= t then
																	if 1 <= t then
																		if 2 ~= t then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		else
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																		end
																	else
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	if t > 4 then
																		if t >= 1 then
																			repeat
																				if 6 > t then
																					h = e[g]
																					k[h] = k[h](l(k, h + 1, e[n]))
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]][e[n]] = k[e[d]]
																			until true
																		else
																			k[e[g]][e[n]] = k[e[d]]
																		end
																	else
																		if 0 ~= t then
																			repeat
																				if t ~= 3 then
																					k(e[g], e[n])
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k(e[g], e[n])
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																		end
																	end
																end
															end
															break
														end
														local a, d, _, l, t
														local f = 0
														while f > -1 do
															if 3 <= f then
																if f > 4 then
																	if f > 1 then
																		repeat
																			if 6 ~= f then
																				k(t, l)
																				break
																			end
																			f = -2
																		until true
																	else
																		f = -2
																	end
																else
																	if 0 ~= f then
																		repeat
																			if 3 ~= f then
																				t = a[d]
																				break
																			end
																			l = a[_]
																		until true
																	else
																		t = a[d]
																	end
																end
															else
																if f >= 1 then
																	if -2 ~= f then
																		for e = 36, 52 do
																			if f > 1 then
																				_ = n
																				break
																			end
																			d = g
																			break
																		end
																	else
																		d = g
																	end
																else
																	a = e
																end
															end
															f = f + 1
														end
													until true
												else
													local h
													for t = 0, 6 do
														if 2 >= t then
															if 1 <= t then
																if 2 ~= t then
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = _[e[n]]
																f = f + 1
																e = a[f]
															end
														else
															if t > 4 then
																if t >= 1 then
																	repeat
																		if 6 > t then
																			h = e[g]
																			k[h] = k[h](l(k, h + 1, e[n]))
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = k[e[d]]
																	until true
																else
																	k[e[g]][e[n]] = k[e[d]]
																end
															else
																if 0 ~= t then
																	repeat
																		if t ~= 3 then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											end
										else
											if t <= 143 then
												if t > 141 then
													repeat
														if t ~= 143 then
															local h
															for t = 0, 6 do
																if t >= 3 then
																	if t >= 5 then
																		if t >= 3 then
																			for _ = 44, 56 do
																				if t ~= 5 then
																					k(e[g], e[n])
																					break
																				end
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if 4 > t then
																			k[e[g]][e[n]] = e[d]
																			f = f + 1
																			e = a[f]
																		else
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																		end
																	end
																else
																	if t <= 0 then
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	else
																		if t == 2 then
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																		else
																			h = e[g]
																			k[h] = k[h](l(k, h + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		end
																	end
																end
															end
															break
														end
														k[e[g]] = e[n] + k[e[d]]
													until true
												else
													k[e[g]] = e[n] + k[e[d]]
												end
											else
												if t > 144 then
													local f = e[g]
													do
														return k[f](l(k, f + 1, e[n]))
													end
												else
													for t = 0, 6 do
														if 3 > t then
															if t > 0 then
																if -1 <= t then
																	for _ = 18, 67 do
																		if 1 ~= t then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = _[e[n]]
																f = f + 1
																e = a[f]
															end
														else
															if t >= 5 then
																if 5 ~= t then
																	k(e[g], e[n])
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																if t >= 0 then
																	for l = 28, 56 do
																		if 4 ~= t then
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					else
						if 59 >= t then
							if t <= 29 then
								if 15 > t then
									if 7 > t then
										if t <= 2 then
											if t > 0 then
												if -1 ~= t then
													for h = 42, 75 do
														if 2 ~= t then
															local a, _, h, l, t, d
															local f = 0
															while f > -1 do
																if 3 >= f then
																	if f <= 1 then
																		if 0 < f then
																			_ = g
																		else
																			a = e
																		end
																	else
																		if 2 < f then
																			l = k
																		else
																			h = n
																		end
																	end
																else
																	if f >= 6 then
																		if 5 < f then
																			repeat
																				if f > 6 then
																					f = -2
																					break
																				end
																				k[d] = t
																			until true
																		else
																			k[d] = t
																		end
																	else
																		if f > 2 then
																			repeat
																				if 5 > f then
																					t = l[a[h]]
																					break
																				end
																				d = a[_]
																			until true
																		else
																			d = a[_]
																		end
																	end
																end
																f = f + 1
															end
															break
														end
														local t
														for h = 0, 6 do
															if 3 <= h then
																if h <= 4 then
																	if 3 < h then
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	else
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	end
																else
																	if 4 < h then
																		repeat
																			if h > 5 then
																				k[e[g]][e[n]] = k[e[d]]
																				break
																			end
																			t = e[g]
																			k[t] = k[t](l(k, t + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		t = e[g]
																		k[t] = k[t](l(k, t + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	end
																end
															else
																if h > 0 then
																	if -2 ~= h then
																		for t = 35, 54 do
																			if 1 < h then
																				k(e[g], e[n])
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	end
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
														break
													end
												else
													local h
													for t = 0, 6 do
														if 3 <= t then
															if t <= 4 then
																if 3 < t then
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															else
																if 4 < t then
																	repeat
																		if t > 5 then
																			k[e[g]][e[n]] = k[e[d]]
																			break
																		end
																		h = e[g]
																		k[h] = k[h](l(k, h + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	until true
																else
																	h = e[g]
																	k[h] = k[h](l(k, h + 1, e[n]))
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if t > 0 then
																if -2 ~= t then
																	for _ = 35, 54 do
																		if 1 < t then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = _[e[n]]
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											else
												if not k[e[g]] then
													f = f + 1
												else
													f = e[n]
												end
											end
										else
											if 4 < t then
												if t >= 2 then
													for h = 10, 57 do
														if 6 > t then
															local t
															t = e[g]
															k[t] = k[t](k[t + 1])
															f = f + 1
															e = a[f]
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															t = e[g]
															k[t] = k[t](k[t + 1])
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = e[d]
															f = f + 1
															e = a[f]
															k[e[g]] = r[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = k[e[d]]
															break
														end
														local f = e[g]
														k[f](l(k, f + 1, e[n]))
														break
													end
												else
													local f = e[g]
													k[f](l(k, f + 1, e[n]))
												end
											else
												if 4 ~= t then
													local d
													for t = 0, 2 do
														if 0 < t then
															if 0 < t then
																for _ = 41, 81 do
																	if t ~= 1 then
																		if k[e[g]] then
																			f = f + 1
																		else
																			f = e[n]
																		end
																		break
																	end
																	d = e[g]
																	k[d] = k[d](l(k, d + 1, e[n]))
																	f = f + 1
																	e = a[f]
																	break
																end
															else
																if k[e[g]] then
																	f = f + 1
																else
																	f = e[n]
																end
															end
														else
															k(e[g], e[n])
															f = f + 1
															e = a[f]
														end
													end
												else
													local t, h
													for _ = 0, 6 do
														if _ <= 2 then
															if _ <= 0 then
																k[e[g]][e[n]] = e[d]
																f = f + 1
																e = a[f]
															else
																if 0 <= _ then
																	for r = 12, 86 do
																		if 2 ~= _ then
																			t = e[g]
																			k[t] = k[t](l(k, t + 1, e[n]))
																			f = f + 1
																			e = a[f]
																			break
																		end
																		t = e[g]
																		h = k[e[n]]
																		k[t + 1] = h
																		k[t] = h[e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	t = e[g]
																	k[t] = k[t](l(k, t + 1, e[n]))
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if _ >= 5 then
																if _ > 4 then
																	repeat
																		if 5 ~= _ then
																			k[e[g]] = r[e[n]]
																			break
																		end
																		t = e[g]
																		h = k[e[n]]
																		k[t + 1] = h
																		k[t] = h[e[d]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = r[e[n]]
																end
															else
																if _ ~= 0 then
																	repeat
																		if 4 > _ then
																			t = e[g]
																			k[t](k[t + 1])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = r[e[n]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	t = e[g]
																	k[t](k[t + 1])
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											end
										end
									else
										if 11 <= t then
											if t <= 12 then
												if 9 < t then
													for h = 41, 56 do
														if t < 12 then
															local _, t
															for l = 0, 4 do
																if 1 >= l then
																	if -3 ~= l then
																		for h = 32, 67 do
																			if l < 1 then
																				k[e[g]] = r[e[n]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			_ = e[g]
																			t = k[e[n]]
																			k[_ + 1] = t
																			k[_] = t[e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		_ = e[g]
																		t = k[e[n]]
																		k[_ + 1] = t
																		k[_] = t[e[d]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	if 2 < l then
																		if 3 ~= l then
																			k[e[g]] = {}
																		else
																			k[e[g]] = r[e[n]]
																			f = f + 1
																			e = a[f]
																		end
																	else
																		k[e[g]] = r[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
															break
														end
														local t
														k[e[g]][e[n]] = e[d]
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														t = e[g]
														k[t] = k[t](l(k, t + 1, e[n]))
														break
													end
												else
													local t, _
													for l = 0, 4 do
														if 1 >= l then
															if -3 ~= l then
																for h = 32, 67 do
																	if l < 1 then
																		k[e[g]] = r[e[n]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																	t = e[g]
																	_ = k[e[n]]
																	k[t + 1] = _
																	k[t] = _[e[d]]
																	f = f + 1
																	e = a[f]
																	break
																end
															else
																t = e[g]
																_ = k[e[n]]
																k[t + 1] = _
																k[t] = _[e[d]]
																f = f + 1
																e = a[f]
															end
														else
															if 2 < l then
																if 3 ~= l then
																	k[e[g]] = {}
																else
																	k[e[g]] = r[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = r[e[n]]
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											else
												if t < 14 then
													local e = e[g]
													k[e](k[e + 1])
												else
													local _, h, s, o, c, r, b, u, t
													for t = 0, 3 do
														if t >= 2 then
															if t ~= -2 then
																repeat
																	if t ~= 3 then
																		t = 0
																		while t > -1 do
																			if 4 <= t then
																				if t >= 6 then
																					if 3 <= t then
																						for e = 13, 76 do
																							if t ~= 7 then
																								k[u] = b
																								break
																							end
																							t = -2
																							break
																						end
																					else
																						t = -2
																					end
																				else
																					if t ~= 5 then
																						b = r[s[c]]
																					else
																						u = s[o]
																					end
																				end
																			else
																				if t <= 1 then
																					if -4 < t then
																						repeat
																							if t > 0 then
																								o = g
																								break
																							end
																							s = e
																						until true
																					else
																						o = g
																					end
																				else
																					if t ~= -2 then
																						repeat
																							if 2 < t then
																								r = k
																								break
																							end
																							c = n
																						until true
																					else
																						r = k
																					end
																				end
																			end
																			t = t + 1
																		end
																		f = f + 1
																		e = a[f]
																		break
																	end
																	_ = e[g]
																	k[_](l(k, _ + 1, e[n]))
																until true
															else
																_ = e[g]
																k[_](l(k, _ + 1, e[n]))
															end
														else
															if -4 < t then
																repeat
																	if 1 > t then
																		k[e[g]][e[n]] = e[d]
																		f = f + 1
																		e = a[f]
																		break
																	end
																	_ = e[g]
																	h = k[e[n]]
																	k[_ + 1] = h
																	k[_] = h[e[d]]
																	f = f + 1
																	e = a[f]
																until true
															else
																_ = e[g]
																h = k[e[n]]
																k[_ + 1] = h
																k[_] = h[e[d]]
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											end
										else
											if 9 > t then
												if t ~= 4 then
													for _ = 35, 60 do
														if t ~= 7 then
															local _
															for t = 0, 6 do
																if 3 <= t then
																	if 4 >= t then
																		if 2 ~= t then
																			repeat
																				if t ~= 3 then
																					_ = e[g]
																					k[_] = k[_](l(k, _ + 1, e[n]))
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k(e[g], e[n])
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if t ~= 3 then
																			for _ = 28, 83 do
																				if t < 6 then
																					k[e[g]][e[n]] = k[e[d]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]][e[n]] = e[d]
																				break
																			end
																		else
																			k[e[g]][e[n]] = e[d]
																		end
																	end
																else
																	if t > 0 then
																		if -2 ~= t then
																			for d = 31, 73 do
																				if 1 < t then
																					k(e[g], e[n])
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k(e[g], e[n])
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																		end
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
															break
														end
														local e = e[g]
														k[e] = k[e]()
														break
													end
												else
													local _
													for t = 0, 6 do
														if 3 <= t then
															if 4 >= t then
																if 2 ~= t then
																	repeat
																		if t ~= 3 then
																			_ = e[g]
																			k[_] = k[_](l(k, _ + 1, e[n]))
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															else
																if t ~= 3 then
																	for _ = 28, 83 do
																		if t < 6 then
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = e[d]
																		break
																	end
																else
																	k[e[g]][e[n]] = e[d]
																end
															end
														else
															if t > 0 then
																if -2 ~= t then
																	for d = 31, 73 do
																		if 1 < t then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = k[e[n]][e[d]]
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											else
												if 9 < t then
													for e = e[g], e[n] do
														k[e] = nil
													end
												else
													local _
													for t = 0, 6 do
														if 3 <= t then
															if t < 5 then
																if 0 < t then
																	for d = 28, 52 do
																		if 3 ~= t then
																			_ = e[g]
																			k[_] = k[_](l(k, _ + 1, e[n]))
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	_ = e[g]
																	k[_] = k[_](l(k, _ + 1, e[n]))
																	f = f + 1
																	e = a[f]
																end
															else
																if t == 6 then
																	k[e[g]][e[n]] = e[d]
																else
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if 1 > t then
																k[e[g]] = k[e[n]][e[d]]
																f = f + 1
																e = a[f]
															else
																if t > 0 then
																	for d = 18, 98 do
																		if t < 2 then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											end
										end
									end
								else
									if 21 >= t then
										if 17 < t then
											if 19 < t then
												if 16 < t then
													repeat
														if 20 ~= t then
															local h
															for t = 0, 6 do
																if 3 <= t then
																	if t <= 4 then
																		if 1 < t then
																			repeat
																				if t ~= 4 then
																					k[e[g]][e[n]] = k[e[d]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]][e[n]] = e[d]
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			k[e[g]][e[n]] = e[d]
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if t >= 4 then
																			for l = 47, 75 do
																				if t < 6 then
																					k[e[g]][e[n]] = e[d]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]] = _[e[n]]
																				break
																			end
																		else
																			k[e[g]][e[n]] = e[d]
																			f = f + 1
																			e = a[f]
																		end
																	end
																else
																	if t <= 0 then
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	else
																		if -2 < t then
																			for d = 19, 66 do
																				if 2 ~= t then
																					k(e[g], e[n])
																					f = f + 1
																					e = a[f]
																					break
																				end
																				h = e[g]
																				k[h] = k[h](l(k, h + 1, e[n]))
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			h = e[g]
																			k[h] = k[h](l(k, h + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		end
																	end
																end
															end
															break
														end
														k[e[g]] = r[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
													until true
												else
													k[e[g]] = r[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
												end
											else
												if t > 17 then
													repeat
														if t ~= 18 then
															local e = e[g]
															do
																return l(k, e, s)
															end
															break
														end
														local t
														k[e[g]][e[n]] = k[e[d]]
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														t = e[g]
														k[t] = k[t]()
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														t = e[g]
														k[t] = k[t]()
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
													until true
												else
													local e = e[g]
													do
														return l(k, e, s)
													end
												end
											end
										else
											if 15 < t then
												if 13 ~= t then
													for h = 43, 74 do
														if t > 16 then
															local l, o, h, r, s, t
															k[e[g]][e[n]] = k[e[d]]
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = e[d]
															f = f + 1
															e = a[f]
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															f = f + 1
															e = a[f]
															t = 0
															while t > -1 do
																if 3 <= t then
																	if 5 > t then
																		if 4 > t then
																			r = l[h]
																		else
																			s = l[o]
																		end
																	else
																		if 6 == t then
																			t = -2
																		else
																			k(s, r)
																		end
																	end
																else
																	if 1 <= t then
																		if -3 <= t then
																			repeat
																				if t ~= 2 then
																					o = g
																					break
																				end
																				h = n
																			until true
																		else
																			h = n
																		end
																	else
																		l = e
																	end
																end
																t = t + 1
															end
															f = f + 1
															e = a[f]
															t = 0
															while t > -1 do
																if t > 2 then
																	if t < 5 then
																		if 3 < t then
																			s = l[o]
																		else
																			r = l[h]
																		end
																	else
																		if t ~= 2 then
																			repeat
																				if 5 < t then
																					t = -2
																					break
																				end
																				k(s, r)
																			until true
																		else
																			k(s, r)
																		end
																	end
																else
																	if 1 > t then
																		l = e
																	else
																		if t == 2 then
																			h = n
																		else
																			o = g
																		end
																	end
																end
																t = t + 1
															end
															f = f + 1
															e = a[f]
															t = 0
															while t > -1 do
																if t >= 3 then
																	if 4 >= t then
																		if t ~= -1 then
																			for e = 33, 77 do
																				if 3 ~= t then
																					s = l[o]
																					break
																				end
																				r = l[h]
																				break
																			end
																		else
																			r = l[h]
																		end
																	else
																		if t ~= 6 then
																			k(s, r)
																		else
																			t = -2
																		end
																	end
																else
																	if 1 > t then
																		l = e
																	else
																		if t == 2 then
																			h = n
																		else
																			o = g
																		end
																	end
																end
																t = t + 1
															end
															break
														end
														local g = e[g]
														local n = { k[g](l(k, g + 1, s)) }
														local f = 0
														for e = g, e[d] do
															f = f + 1
															k[e] = n[f]
														end
														break
													end
												else
													local g = e[g]
													local n = { k[g](l(k, g + 1, s)) }
													local f = 0
													for e = g, e[d] do
														f = f + 1
														k[e] = n[f]
													end
												end
											else
												k[e[g]] = _[e[n]]
											end
										end
									else
										if 25 < t then
											if t > 27 then
												if t ~= 28 then
													local l, h
													for t = 0, 6 do
														if t < 3 then
															if t > 0 then
																if t < 2 then
																	l = e[g]
																	h = k[e[n]]
																	k[l + 1] = h
																	k[l] = h[e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]] = r[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = r[e[n]]
																f = f + 1
																e = a[f]
															end
														else
															if t > 4 then
																if 2 <= t then
																	repeat
																		if 6 ~= t then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = _[e[n]]
																	until true
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															else
																if 1 ~= t then
																	repeat
																		if 4 > t then
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												else
													local a = k[e[d]]
													if a then
														f = f + 1
													else
														k[e[g]] = a
														f = e[n]
													end
												end
											else
												if 26 < t then
													local h
													for t = 0, 6 do
														if 3 <= t then
															if t >= 5 then
																if 3 <= t then
																	for l = 34, 56 do
																		if 6 ~= t then
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = _[e[n]]
																		break
																	end
																else
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																if t >= 1 then
																	for _ = 32, 75 do
																		if t > 3 then
																			k[e[g]][e[n]] = e[d]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = e[d]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]][e[n]] = e[d]
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if 0 < t then
																if 2 == t then
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																else
																	h = e[g]
																	k[h] = k[h](l(k, h + 1, e[n]))
																	f = f + 1
																	e = a[f]
																end
															else
																k(e[g], e[n])
																f = f + 1
																e = a[f]
															end
														end
													end
												else
													local h
													for t = 0, 9 do
														if t >= 5 then
															if t <= 6 then
																if t ~= 1 then
																	repeat
																		if t ~= 6 then
																			k[e[g]][e[n]] = e[d]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = e[d]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]][e[n]] = e[d]
																	f = f + 1
																	e = a[f]
																end
															else
																if t > 7 then
																	if t ~= 5 then
																		for l = 21, 54 do
																			if 9 ~= t then
																				k[e[g]] = _[e[n]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = k[e[n]][e[d]]
																			break
																		end
																	else
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	k[e[g]][e[n]] = e[d]
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if t < 2 then
																if t ~= 1 then
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															else
																if t <= 2 then
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																else
																	if t ~= -1 then
																		for _ = 27, 83 do
																			if t ~= 4 then
																				h = e[g]
																				k[h] = k[h](l(k, h + 1, e[n]))
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		h = e[g]
																		k[h] = k[h](l(k, h + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														end
													end
												end
											end
										else
											if 24 <= t then
												if t > 23 then
													for l = 16, 68 do
														if t ~= 24 then
															local l, r, b, s, h, t, o
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															f = f + 1
															e = a[f]
															t = 0
															while t > -1 do
																if 2 < t then
																	if 5 > t then
																		if 3 < t then
																			h = l[r]
																		else
																			s = l[b]
																		end
																	else
																		if 2 ~= t then
																			for e = 12, 64 do
																				if 6 ~= t then
																					k(h, s)
																					break
																				end
																				t = -2
																				break
																			end
																		else
																			t = -2
																		end
																	end
																else
																	if t > 0 then
																		if 1 == t then
																			r = g
																		else
																			b = n
																		end
																	else
																		l = e
																	end
																end
																t = t + 1
															end
															f = f + 1
															e = a[f]
															o = e[g]
															k[o] = k[o](k[o + 1])
															f = f + 1
															e = a[f]
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															f = f + 1
															e = a[f]
															t = 0
															while t > -1 do
																if 3 > t then
																	if t >= 1 then
																		if -1 ~= t then
																			for e = 27, 87 do
																				if t < 2 then
																					r = g
																					break
																				end
																				b = n
																				break
																			end
																		else
																			r = g
																		end
																	else
																		l = e
																	end
																else
																	if t < 5 then
																		if t == 3 then
																			s = l[b]
																		else
																			h = l[r]
																		end
																	else
																		if t > 3 then
																			for e = 30, 81 do
																				if 6 ~= t then
																					k(h, s)
																					break
																				end
																				t = -2
																				break
																			end
																		else
																			k(h, s)
																		end
																	end
																end
																t = t + 1
															end
															break
														end
														_[e[n]] = k[e[g]]
														break
													end
												else
													_[e[n]] = k[e[g]]
												end
											else
												if t > 18 then
													repeat
														if t ~= 22 then
															for e = e[g], e[n] do
																k[e] = nil
															end
															break
														end
														for t = 0, 6 do
															if 3 <= t then
																if 4 >= t then
																	if t > 1 then
																		repeat
																			if t > 3 then
																				k[e[g]] = _[e[n]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = {}
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		k[e[g]] = {}
																		f = f + 1
																		e = a[f]
																	end
																else
																	if t > 2 then
																		for _ = 23, 80 do
																			if t ~= 5 then
																				k(e[g], e[n])
																				break
																			end
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																end
															else
																if t > 0 then
																	if t > -3 then
																		repeat
																			if t > 1 then
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	k[e[g]][e[n]] = e[d]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													until true
												else
													for t = 0, 6 do
														if 3 <= t then
															if 4 >= t then
																if t > 1 then
																	repeat
																		if t > 3 then
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = {}
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = {}
																	f = f + 1
																	e = a[f]
																end
															else
																if t > 2 then
																	for _ = 23, 80 do
																		if t ~= 5 then
																			k(e[g], e[n])
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if t > 0 then
																if t > -3 then
																	repeat
																		if t > 1 then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]][e[n]] = e[d]
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											end
										end
									end
								end
							else
								if t > 44 then
									if 52 <= t then
										if 56 <= t then
											if 57 < t then
												if t ~= 56 then
													for h = 48, 67 do
														if t ~= 58 then
															local h
															for t = 0, 6 do
																if 2 < t then
																	if t < 5 then
																		if t >= -1 then
																			repeat
																				if 4 ~= t then
																					k(e[g], e[n])
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k(e[g], e[n])
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if t == 5 then
																			h = e[g]
																			k[h] = k[h](l(k, h + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		else
																			k[e[g]][e[n]] = k[e[d]]
																		end
																	end
																else
																	if t >= 1 then
																		if -2 ~= t then
																			repeat
																				if 1 < t then
																					k(e[g], e[n])
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																		end
																	else
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
															break
														end
														for t = 0, 6 do
															if 3 > t then
																if t >= 1 then
																	if 1 < t then
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																if t <= 4 then
																	if 4 ~= t then
																		k[e[g]][e[n]] = e[d]
																		f = f + 1
																		e = a[f]
																	else
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	if t ~= 2 then
																		for _ = 12, 60 do
																			if t ~= 5 then
																				k(e[g], e[n])
																				break
																			end
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														end
														break
													end
												else
													for t = 0, 6 do
														if 3 > t then
															if t >= 1 then
																if 1 < t then
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = k[e[n]][e[d]]
																f = f + 1
																e = a[f]
															end
														else
															if t <= 4 then
																if 4 ~= t then
																	k[e[g]][e[n]] = e[d]
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																if t ~= 2 then
																	for _ = 12, 60 do
																		if t ~= 5 then
																			k(e[g], e[n])
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											else
												if t ~= 54 then
													for h = 44, 96 do
														if 56 ~= t then
															local h
															for t = 0, 6 do
																if 2 < t then
																	if t > 4 then
																		if 6 == t then
																			k[e[g]][e[n]] = e[d]
																		else
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if 4 ~= t then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																		else
																			h = e[g]
																			k[h] = k[h](l(k, h + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		end
																	end
																else
																	if t <= 0 then
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	else
																		if 2 ~= t then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		else
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																		end
																	end
																end
															end
															break
														end
														for t = 0, 6 do
															if t < 3 then
																if t <= 0 then
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																else
																	if 2 > t then
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	else
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																end
															else
																if 4 < t then
																	if t ~= 3 then
																		for l = 13, 64 do
																			if 6 > t then
																				k[e[g]] = _[e[n]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = k[e[n]][e[d]]
																			break
																		end
																	else
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	if t ~= 4 then
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														end
														break
													end
												else
													local h
													for t = 0, 6 do
														if 2 < t then
															if t > 4 then
																if 6 == t then
																	k[e[g]][e[n]] = e[d]
																else
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																if 4 ~= t then
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																else
																	h = e[g]
																	k[h] = k[h](l(k, h + 1, e[n]))
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if t <= 0 then
																k[e[g]] = _[e[n]]
																f = f + 1
																e = a[f]
															else
																if 2 ~= t then
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											end
										else
											if t >= 54 then
												if t < 55 then
													local h, p, c, r, b, t, u, y, j, m
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													t = 0
													while t > -1 do
														if 2 >= t then
															if t >= 1 then
																if t == 2 then
																	c = n
																else
																	p = g
																end
															else
																h = e
															end
														else
															if 4 < t then
																if t > 1 then
																	for e = 27, 63 do
																		if t ~= 5 then
																			t = -2
																			break
																		end
																		k(b, r)
																		break
																	end
																else
																	t = -2
																end
															else
																if t >= -1 then
																	repeat
																		if 4 > t then
																			r = h[c]
																			break
																		end
																		b = h[p]
																	until true
																else
																	r = h[c]
																end
															end
														end
														t = t + 1
													end
													f = f + 1
													e = a[f]
													t = 0
													while t > -1 do
														if 2 >= t then
															if t > 0 then
																if t ~= 0 then
																	for e = 46, 65 do
																		if 1 ~= t then
																			c = n
																			break
																		end
																		p = g
																		break
																	end
																else
																	c = n
																end
															else
																h = e
															end
														else
															if t > 4 then
																if t >= 2 then
																	for e = 30, 86 do
																		if 5 ~= t then
																			t = -2
																			break
																		end
																		k(b, r)
																		break
																	end
																else
																	k(b, r)
																end
															else
																if t >= -1 then
																	for e = 21, 75 do
																		if 3 < t then
																			b = h[p]
																			break
																		end
																		r = h[c]
																		break
																	end
																else
																	b = h[p]
																end
															end
														end
														t = t + 1
													end
													f = f + 1
													e = a[f]
													t = 0
													while t > -1 do
														if 3 > t then
															if 1 <= t then
																if t ~= 2 then
																	p = g
																else
																	c = n
																end
															else
																h = e
															end
														else
															if 4 >= t then
																if t ~= 3 then
																	b = h[p]
																else
																	r = h[c]
																end
															else
																if t >= 4 then
																	repeat
																		if t > 5 then
																			t = -2
																			break
																		end
																		k(b, r)
																	until true
																else
																	k(b, r)
																end
															end
														end
														t = t + 1
													end
													f = f + 1
													e = a[f]
													u = e[g]
													y, j = o(k[u](l(k, u + 1, e[n])))
													s = j + u - 1
													m = 0
													for e = u, s do
														m = m + 1
														k[e] = y[m]
													end
													f = f + 1
													e = a[f]
													u = e[g]
													k[u] = k[u](l(k, u + 1, s))
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
												else
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
												end
											else
												if 50 < t then
													for _ = 30, 72 do
														if 52 ~= t then
															local e = e[g]
															local g, f = o(k[e](k[e + 1]))
															s = f + e - 1
															local f = 0
															for e = e, s do
																f = f + 1
																k[e] = g[f]
															end
															break
														end
														local _, h, s, o, r, t, b
														for t = 0, 4 do
															if 1 < t then
																if 3 > t then
																	t = 0
																	while t > -1 do
																		if 2 >= t then
																			if t >= 1 then
																				if 2 ~= t then
																					h = g
																				else
																					s = n
																				end
																			else
																				_ = e
																			end
																		else
																			if t < 5 then
																				if 4 ~= t then
																					o = _[s]
																				else
																					r = _[h]
																				end
																			else
																				if t ~= 1 then
																					repeat
																						if 5 ~= t then
																							t = -2
																							break
																						end
																						k(r, o)
																					until true
																				else
																					t = -2
																				end
																			end
																		end
																		t = t + 1
																	end
																	f = f + 1
																	e = a[f]
																else
																	if 1 ~= t then
																		repeat
																			if t ~= 4 then
																				b = e[g]
																				k[b] = k[b](l(k, b + 1, e[n]))
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]][e[n]] = k[e[d]]
																		until true
																	else
																		k[e[g]][e[n]] = k[e[d]]
																	end
																end
															else
																if t > -3 then
																	repeat
																		if t > 0 then
																			t = 0
																			while t > -1 do
																				if 3 <= t then
																					if 4 >= t then
																						if t >= 2 then
																							for e = 26, 93 do
																								if 3 ~= t then
																									r = _[h]
																									break
																								end
																								o = _[s]
																								break
																							end
																						else
																							r = _[h]
																						end
																					else
																						if 3 <= t then
																							repeat
																								if t ~= 5 then
																									t = -2
																									break
																								end
																								k(r, o)
																							until true
																						else
																							t = -2
																						end
																					end
																				else
																					if 0 >= t then
																						_ = e
																					else
																						if -1 ~= t then
																							for e = 30, 56 do
																								if 1 ~= t then
																									s = n
																									break
																								end
																								h = g
																								break
																							end
																						else
																							h = g
																						end
																					end
																				end
																				t = t + 1
																			end
																			f = f + 1
																			e = a[f]
																			break
																		end
																		t = 0
																		while t > -1 do
																			if t >= 3 then
																				if 5 <= t then
																					if t ~= 4 then
																						for e = 44, 69 do
																							if 5 ~= t then
																								t = -2
																								break
																							end
																							k(r, o)
																							break
																						end
																					else
																						t = -2
																					end
																				else
																					if t > 2 then
																						repeat
																							if t < 4 then
																								o = _[s]
																								break
																							end
																							r = _[h]
																						until true
																					else
																						r = _[h]
																					end
																				end
																			else
																				if t <= 0 then
																					_ = e
																				else
																					if t ~= -1 then
																						for e = 43, 75 do
																							if t ~= 1 then
																								s = n
																								break
																							end
																							h = g
																							break
																						end
																					else
																						s = n
																					end
																				end
																			end
																			t = t + 1
																		end
																		f = f + 1
																		e = a[f]
																	until true
																else
																	t = 0
																	while t > -1 do
																		if t >= 3 then
																			if 5 <= t then
																				if t ~= 4 then
																					for e = 44, 69 do
																						if 5 ~= t then
																							t = -2
																							break
																						end
																						k(r, o)
																						break
																					end
																				else
																					t = -2
																				end
																			else
																				if t > 2 then
																					repeat
																						if t < 4 then
																							o = _[s]
																							break
																						end
																						r = _[h]
																					until true
																				else
																					r = _[h]
																				end
																			end
																		else
																			if t <= 0 then
																				_ = e
																			else
																				if t ~= -1 then
																					for e = 43, 75 do
																						if t ~= 1 then
																							s = n
																							break
																						end
																						h = g
																						break
																					end
																				else
																					s = n
																				end
																			end
																		end
																		t = t + 1
																	end
																	f = f + 1
																	e = a[f]
																end
															end
														end
														break
													end
												else
													local e = e[g]
													local g, f = o(k[e](k[e + 1]))
													s = f + e - 1
													local f = 0
													for e = e, s do
														f = f + 1
														k[e] = g[f]
													end
												end
											end
										end
									else
										if t < 48 then
											if t >= 46 then
												if 47 ~= t then
													local f = e[g]
													k[f] = k[f](l(k, f + 1, e[n]))
												else
													k[e[g]] = k[e[n]][e[d]]
												end
											else
												local t
												k[e[g]] = _[e[n]]
												f = f + 1
												e = a[f]
												k[e[g]] = k[e[n]][e[d]]
												f = f + 1
												e = a[f]
												k(e[g], e[n])
												f = f + 1
												e = a[f]
												t = e[g]
												k[t] = k[t](k[t + 1])
												f = f + 1
												e = a[f]
												k[e[g]][e[n]] = k[e[d]]
												f = f + 1
												e = a[f]
												k[e[g]] = _[e[n]]
												f = f + 1
												e = a[f]
												k[e[g]] = k[e[n]][e[d]]
												f = f + 1
												e = a[f]
												k(e[g], e[n])
												f = f + 1
												e = a[f]
												t = e[g]
												k[t] = k[t](k[t + 1])
											end
										else
											if 49 >= t then
												if t ~= 49 then
													k[e[g]]()
												else
													do
														return k[e[g]]
													end
												end
											else
												if 50 ~= t then
													local h
													for t = 0, 6 do
														if 3 > t then
															if 1 > t then
																k(e[g], e[n])
																f = f + 1
																e = a[f]
															else
																if t >= -2 then
																	for d = 31, 64 do
																		if t > 1 then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if t >= 5 then
																if 3 < t then
																	repeat
																		if t < 6 then
																			k[e[g]][e[n]] = e[d]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = _[e[n]]
																	until true
																else
																	k[e[g]] = _[e[n]]
																end
															else
																if 2 < t then
																	repeat
																		if t ~= 3 then
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		h = e[g]
																		k[h] = k[h](l(k, h + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	until true
																else
																	h = e[g]
																	k[h] = k[h](l(k, h + 1, e[n]))
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												else
													local l, b, h, r, o, t, s
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													t = 0
													while t > -1 do
														if t >= 3 then
															if t >= 5 then
																if t > 5 then
																	t = -2
																else
																	k(o, r)
																end
															else
																if t ~= 1 then
																	for e = 18, 56 do
																		if t < 4 then
																			r = l[h]
																			break
																		end
																		o = l[b]
																		break
																	end
																else
																	r = l[h]
																end
															end
														else
															if 0 >= t then
																l = e
															else
																if t ~= -1 then
																	for e = 13, 71 do
																		if 2 > t then
																			b = g
																			break
																		end
																		h = n
																		break
																	end
																else
																	h = n
																end
															end
														end
														t = t + 1
													end
													f = f + 1
													e = a[f]
													s = e[g]
													k[s] = k[s](k[s + 1])
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													t = 0
													while t > -1 do
														if t > 2 then
															if t <= 4 then
																if -1 ~= t then
																	for e = 43, 59 do
																		if 3 < t then
																			o = l[b]
																			break
																		end
																		r = l[h]
																		break
																	end
																else
																	r = l[h]
																end
															else
																if 2 ~= t then
																	for e = 23, 93 do
																		if t ~= 6 then
																			k(o, r)
																			break
																		end
																		t = -2
																		break
																	end
																else
																	t = -2
																end
															end
														else
															if 1 > t then
																l = e
															else
																if t == 1 then
																	b = g
																else
																	h = n
																end
															end
														end
														t = t + 1
													end
												end
											end
										end
									end
								else
									if 36 < t then
										if 40 < t then
											if 42 >= t then
												if 41 < t then
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
												else
													local f = e[g]
													local n = { k[f](k[f + 1]) }
													local g = 0
													for e = f, e[d] do
														g = g + 1
														k[e] = n[g]
													end
												end
											else
												if 44 > t then
													for t = 0, 6 do
														if 3 <= t then
															if 5 > t then
																if 1 <= t then
																	repeat
																		if 4 > t then
																			k[e[g]][e[n]] = e[d]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																if t ~= 6 then
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k(e[g], e[n])
																end
															end
														else
															if 0 < t then
																if t == 1 then
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]][e[n]] = e[d]
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = k[e[n]][e[d]]
																f = f + 1
																e = a[f]
															end
														end
													end
												else
													k[e[g]] = (e[n] ~= 0)
													f = f + 1
												end
											end
										else
											if t < 39 then
												if t < 38 then
													do
														return k[e[g]]
													end
												else
													local t
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
												end
											else
												if 38 <= t then
													repeat
														if 40 > t then
															local l, h, r, s, u, b, o, t
															k[e[g]][e[n]] = k[e[d]]
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = k[e[d]]
															f = f + 1
															e = a[f]
															k[e[g]] = {}
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = k[e[d]]
															f = f + 1
															e = a[f]
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
															l = e[g]
															h = k[e[n]]
															k[l + 1] = h
															k[l] = h[e[d]]
															f = f + 1
															e = a[f]
															t = 0
															while t > -1 do
																if 2 < t then
																	if 5 <= t then
																		if 5 ~= t then
																			t = -2
																		else
																			k(o, b)
																		end
																	else
																		if t == 3 then
																			b = r[u]
																		else
																			o = r[s]
																		end
																	end
																else
																	if t > 0 then
																		if t >= -1 then
																			repeat
																				if 2 > t then
																					s = g
																					break
																				end
																				u = n
																			until true
																		else
																			s = g
																		end
																	else
																		r = e
																	end
																end
																t = t + 1
															end
															break
														end
														local r, h, u, b, s, t, o
														for t = 0, 6 do
															if t > 2 then
																if 5 > t then
																	if t == 3 then
																		t = 0
																		while t > -1 do
																			if t >= 3 then
																				if t >= 5 then
																					if 6 == t then
																						t = -2
																					else
																						k(s, b)
																					end
																				else
																					if 0 < t then
																						repeat
																							if 4 > t then
																								b = r[u]
																								break
																							end
																							s = r[h]
																						until true
																					else
																						s = r[h]
																					end
																				end
																			else
																				if t > 0 then
																					if -2 <= t then
																						for e = 17, 71 do
																							if 2 > t then
																								h = g
																								break
																							end
																							u = n
																							break
																						end
																					else
																						h = g
																					end
																				else
																					r = e
																				end
																			end
																			t = t + 1
																		end
																		f = f + 1
																		e = a[f]
																	else
																		t = 0
																		while t > -1 do
																			if 3 > t then
																				if t < 1 then
																					r = e
																				else
																					if t ~= -2 then
																						repeat
																							if t ~= 2 then
																								h = g
																								break
																							end
																							u = n
																						until true
																					else
																						h = g
																					end
																				end
																			else
																				if 5 > t then
																					if 0 ~= t then
																						for e = 47, 71 do
																							if 4 ~= t then
																								b = r[u]
																								break
																							end
																							s = r[h]
																							break
																						end
																					else
																						s = r[h]
																					end
																				else
																					if t > 1 then
																						repeat
																							if 6 > t then
																								k(s, b)
																								break
																							end
																							t = -2
																						until true
																					else
																						t = -2
																					end
																				end
																			end
																			t = t + 1
																		end
																		f = f + 1
																		e = a[f]
																	end
																else
																	if t >= 1 then
																		repeat
																			if 5 ~= t then
																				k[e[g]][e[n]] = k[e[d]]
																				break
																			end
																			o = e[g]
																			k[o] = k[o](l(k, o + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		k[e[g]][e[n]] = k[e[d]]
																	end
																end
															else
																if 0 >= t then
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																else
																	if -2 < t then
																		for l = 38, 52 do
																			if 1 ~= t then
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														end
													until true
												else
													local h, r, o, u, s, t, b
													for t = 0, 6 do
														if t > 2 then
															if 5 > t then
																if t == 3 then
																	t = 0
																	while t > -1 do
																		if t >= 3 then
																			if t >= 5 then
																				if 6 == t then
																					t = -2
																				else
																					k(s, u)
																				end
																			else
																				if 0 < t then
																					repeat
																						if 4 > t then
																							u = h[o]
																							break
																						end
																						s = h[r]
																					until true
																				else
																					s = h[r]
																				end
																			end
																		else
																			if t > 0 then
																				if -2 <= t then
																					for e = 17, 71 do
																						if 2 > t then
																							r = g
																							break
																						end
																						o = n
																						break
																					end
																				else
																					r = g
																				end
																			else
																				h = e
																			end
																		end
																		t = t + 1
																	end
																	f = f + 1
																	e = a[f]
																else
																	t = 0
																	while t > -1 do
																		if 3 > t then
																			if t < 1 then
																				h = e
																			else
																				if t ~= -2 then
																					repeat
																						if t ~= 2 then
																							r = g
																							break
																						end
																						o = n
																					until true
																				else
																					r = g
																				end
																			end
																		else
																			if 5 > t then
																				if 0 ~= t then
																					for e = 47, 71 do
																						if 4 ~= t then
																							u = h[o]
																							break
																						end
																						s = h[r]
																						break
																					end
																				else
																					s = h[r]
																				end
																			else
																				if t > 1 then
																					repeat
																						if 6 > t then
																							k(s, u)
																							break
																						end
																						t = -2
																					until true
																				else
																					t = -2
																				end
																			end
																		end
																		t = t + 1
																	end
																	f = f + 1
																	e = a[f]
																end
															else
																if t >= 1 then
																	repeat
																		if 5 ~= t then
																			k[e[g]][e[n]] = k[e[d]]
																			break
																		end
																		b = e[g]
																		k[b] = k[b](l(k, b + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]][e[n]] = k[e[d]]
																end
															end
														else
															if 0 >= t then
																k[e[g]][e[n]] = k[e[d]]
																f = f + 1
																e = a[f]
															else
																if -2 < t then
																	for l = 38, 52 do
																		if 1 ~= t then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											end
										end
									else
										if 33 > t then
											if t <= 30 then
												local h
												for t = 0, 6 do
													if 3 > t then
														if 0 < t then
															if t >= 0 then
																for _ = 49, 64 do
																	if 1 ~= t then
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																	h = e[g]
																	k[h] = k[h](l(k, h + 1, e[n]))
																	f = f + 1
																	e = a[f]
																	break
																end
															else
																k[e[g]][e[n]] = k[e[d]]
																f = f + 1
																e = a[f]
															end
														else
															k(e[g], e[n])
															f = f + 1
															e = a[f]
														end
													else
														if t >= 5 then
															if t < 6 then
																k[e[g]][e[n]] = k[e[d]]
																f = f + 1
																e = a[f]
															else
																k[e[g]] = _[e[n]]
															end
														else
															if t > 3 then
																k[e[g]][e[n]] = e[d]
																f = f + 1
																e = a[f]
															else
																k[e[g]][e[n]] = k[e[d]]
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											else
												if 32 == t then
													local _
													for t = 0, 6 do
														if t > 2 then
															if t <= 4 then
																if t > 1 then
																	repeat
																		if t ~= 3 then
																			k[e[g]] = r[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = r[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																if t ~= 3 then
																	repeat
																		if t ~= 6 then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																	until true
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if 0 < t then
																if t ~= -1 then
																	repeat
																		if t ~= 2 then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		_ = e[g]
																		k[_] = k[_](l(k, _ + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															else
																k(e[g], e[n])
																f = f + 1
																e = a[f]
															end
														end
													end
												else
													k[e[g]][e[n]] = k[e[d]]
												end
											end
										else
											if t > 34 then
												if t > 32 then
													for h = 44, 70 do
														if 35 ~= t then
															if k[e[g]] == e[d] then
																f = f + 1
															else
																f = e[n]
															end
															break
														end
														local h
														for t = 0, 6 do
															if 2 >= t then
																if t >= 1 then
																	if 2 ~= t then
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	else
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	end
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																if 4 < t then
																	if 6 ~= t then
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																	else
																		k[e[g]] = _[e[n]]
																	end
																else
																	if t ~= 2 then
																		repeat
																			if 3 < t then
																				h = e[g]
																				k[h] = k[h](l(k, h + 1, e[n]))
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														end
														break
													end
												else
													local h
													for t = 0, 6 do
														if 2 >= t then
															if t >= 1 then
																if 2 ~= t then
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = k[e[n]][e[d]]
																f = f + 1
																e = a[f]
															end
														else
															if 4 < t then
																if 6 ~= t then
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]] = _[e[n]]
																end
															else
																if t ~= 2 then
																	repeat
																		if 3 < t then
																			h = e[g]
																			k[h] = k[h](l(k, h + 1, e[n]))
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											else
												if t >= 29 then
													for h = 11, 82 do
														if 34 ~= t then
															local t
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															t = e[g]
															k[t] = k[t](l(k, t + 1, e[n]))
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = k[e[d]]
															break
														end
														local e = e[g]
														k[e] = k[e](k[e + 1])
														break
													end
												else
													local e = e[g]
													k[e] = k[e](k[e + 1])
												end
											end
										end
									end
								end
							end
						else
							if t <= 89 then
								if 74 < t then
									if t > 81 then
										if 86 > t then
											if t >= 84 then
												if 85 == t then
													local _
													for t = 0, 4 do
														if 1 >= t then
															if t >= -3 then
																repeat
																	if 1 ~= t then
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																		break
																	end
																	_ = e[g]
																	k[_] = k[_](l(k, _ + 1, e[n]))
																	f = f + 1
																	e = a[f]
																until true
															else
																k(e[g], e[n])
																f = f + 1
																e = a[f]
															end
														else
															if 2 >= t then
																k[e[g]][e[n]] = k[e[d]]
																f = f + 1
																e = a[f]
															else
																if t >= 2 then
																	repeat
																		if t < 4 then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																	until true
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												else
													k[e[g]] = (e[n] ~= 0)
													f = f + 1
												end
											else
												if 81 ~= t then
													repeat
														if 82 ~= t then
															local a, t, d, h, l, _
															local f = 0
															while f > -1 do
																if f > 3 then
																	if 5 < f then
																		if 4 < f then
																			repeat
																				if f ~= 6 then
																					f = -2
																					break
																				end
																				k[_] = l
																			until true
																		else
																			f = -2
																		end
																	else
																		if 0 <= f then
																			repeat
																				if 5 > f then
																					l = h[a[d]]
																					break
																				end
																				_ = a[t]
																			until true
																		else
																			_ = a[t]
																		end
																	end
																else
																	if 1 >= f then
																		if -1 ~= f then
																			repeat
																				if 1 > f then
																					a = e
																					break
																				end
																				t = g
																			until true
																		else
																			a = e
																		end
																	else
																		if 0 ~= f then
																			repeat
																				if f < 3 then
																					d = n
																					break
																				end
																				h = k
																			until true
																		else
																			d = n
																		end
																	end
																end
																f = f + 1
															end
															break
														end
														k[e[g]]()
													until true
												else
													k[e[g]]()
												end
											end
										else
											if 87 >= t then
												if t > 85 then
													repeat
														if 87 ~= t then
															local t
															t = e[g]
															k[t] = k[t](l(k, t + 1, e[n]))
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = k[e[d]]
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = e[d]
															f = f + 1
															e = a[f]
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															break
														end
														local e = e[g]
														local f = k[e]
														for e = e + 1, s do
															h.ixMwRZhL(f, k[e])
														end
													until true
												else
													local e = e[g]
													local f = k[e]
													for e = e + 1, s do
														h.ixMwRZhL(f, k[e])
													end
												end
											else
												if 87 <= t then
													repeat
														if t ~= 88 then
															local t
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															t = e[g]
															k[t] = k[t](l(k, t + 1, e[n]))
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = k[e[d]]
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = k[e[d]]
															f = f + 1
															e = a[f]
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															break
														end
														local h, b, u, r
														for t = 0, 6 do
															if 3 <= t then
																if 4 < t then
																	if t >= 1 then
																		for d = 39, 76 do
																			if 6 > t then
																				k(e[g], e[n])
																				f = f + 1
																				e = a[f]
																				break
																			end
																			h = e[g]
																			b, u = o(k[h](l(k, h + 1, e[n])))
																			s = u + h - 1
																			r = 0
																			for e = h, s do
																				r = r + 1
																				k[e] = b[r]
																			end
																			break
																		end
																	else
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	end
																else
																	if t ~= -1 then
																		for d = 12, 86 do
																			if t ~= 3 then
																				k(e[g], e[n])
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	end
																end
															else
																if 1 <= t then
																	if 2 == t then
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	else
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															end
														end
													until true
												else
													local h, u, b, r
													for t = 0, 6 do
														if 3 <= t then
															if 4 < t then
																if t >= 1 then
																	for d = 39, 76 do
																		if 6 > t then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		h = e[g]
																		u, b = o(k[h](l(k, h + 1, e[n])))
																		s = b + h - 1
																		r = 0
																		for e = h, s do
																			r = r + 1
																			k[e] = u[r]
																		end
																		break
																	end
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															else
																if t ~= -1 then
																	for d = 12, 86 do
																		if t ~= 3 then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if 1 <= t then
																if 2 == t then
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																k(e[g], e[n])
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											end
										end
									else
										if 78 <= t then
											if 79 >= t then
												if t == 78 then
													local h
													for t = 0, 7 do
														if t > 3 then
															if 5 < t then
																if 5 ~= t then
																	for d = 32, 89 do
																		if 7 ~= t then
																			k[e[g]] = {}
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = _[e[n]]
																		break
																	end
																else
																	k[e[g]] = {}
																	f = f + 1
																	e = a[f]
																end
															else
																if t > 2 then
																	repeat
																		if 4 ~= t then
																			h = e[g]
																			k[h] = k[h](l(k, h + 1, e[n]))
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if 1 < t then
																if t ~= -1 then
																	for l = 22, 83 do
																		if t ~= 3 then
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																if -4 ~= t then
																	for _ = 38, 95 do
																		if 0 ~= t then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												else
													local a = e[g]
													local g = {}
													for e = 1, #u do
														local e = u[e]
														for f = 0, #e do
															local f = e[f]
															local n = f[1]
															local e = f[2]
															if n == k and e >= a then
																g[e] = n[e]
																f[1] = g
															end
														end
													end
												end
											else
												if t ~= 79 then
													for _ = 33, 97 do
														if t ~= 80 then
															local t, _
															t = e[g]
															_ = k[e[n]]
															k[t + 1] = _
															k[t] = _[e[d]]
															f = f + 1
															e = a[f]
															k[e[g]] = r[e[n]]
															f = f + 1
															e = a[f]
															t = e[g]
															_ = k[e[n]]
															k[t + 1] = _
															k[t] = _[e[d]]
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															t = e[g]
															k[t] = k[t](l(k, t + 1, e[n]))
															f = f + 1
															e = a[f]
															k[e[g]] = r[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = {}
															break
														end
														local a = e[g]
														local d = e[d]
														local g = a + 2
														local a = { k[a](k[a + 1], k[g]) }
														for e = 1, d do
															k[g + e] = a[e]
														end
														local a = a[1]
														if a then
															k[g] = a
															f = e[n]
														else
															f = f + 1
														end
														break
													end
												else
													local t, _
													t = e[g]
													_ = k[e[n]]
													k[t + 1] = _
													k[t] = _[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = r[e[n]]
													f = f + 1
													e = a[f]
													t = e[g]
													_ = k[e[n]]
													k[t + 1] = _
													k[t] = _[e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]] = r[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = {}
												end
											end
										else
											if 75 < t then
												if 72 <= t then
													for h = 40, 53 do
														if t ~= 77 then
															local d
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = r[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]]
															f = f + 1
															e = a[f]
															d = e[g]
															k[d](l(k, d + 1, e[n]))
															f = f + 1
															e = a[f]
															do
																return
															end
															break
														end
														for t = 0, 4 do
															if 2 <= t then
																if t >= 3 then
																	if 2 <= t then
																		for _ = 32, 55 do
																			if t > 3 then
																				if k[e[g]] then
																					f = f + 1
																				else
																					f = e[n]
																				end
																				break
																			end
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																if 1 > t then
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]][e[n]] = e[d]
																	f = f + 1
																	e = a[f]
																end
															end
														end
														break
													end
												else
													for t = 0, 4 do
														if 2 <= t then
															if t >= 3 then
																if 2 <= t then
																	for _ = 32, 55 do
																		if t > 3 then
																			if k[e[g]] then
																				f = f + 1
																			else
																				f = e[n]
																			end
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]][e[n]] = k[e[d]]
																f = f + 1
																e = a[f]
															end
														else
															if 1 > t then
																k[e[g]][e[n]] = k[e[d]]
																f = f + 1
																e = a[f]
															else
																k[e[g]][e[n]] = e[d]
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											else
												local h
												for t = 0, 6 do
													if t < 3 then
														if 0 < t then
															if t < 2 then
																k[e[g]] = k[e[n]][e[d]]
																f = f + 1
																e = a[f]
															else
																k[e[g]] = k[e[n]][e[d]]
																f = f + 1
																e = a[f]
															end
														else
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
														end
													else
														if t <= 4 then
															if t >= 1 then
																for l = 32, 80 do
																	if 3 ~= t then
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																	break
																end
															else
																k[e[g]] = k[e[n]][e[d]]
																f = f + 1
																e = a[f]
															end
														else
															if 3 <= t then
																repeat
																	if t < 6 then
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																	h = e[g]
																	k[h] = k[h](l(k, h + 1, e[n]))
																until true
															else
																k[e[g]] = k[e[n]][e[d]]
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											end
										end
									end
								else
									if 66 >= t then
										if 63 <= t then
											if 64 < t then
												if t ~= 65 then
													local a = e[g]
													local g = {}
													for e = 1, #u do
														local e = u[e]
														for f = 0, #e do
															local f = e[f]
															local n = f[1]
															local e = f[2]
															if n == k and e >= a then
																g[e] = n[e]
																f[1] = g
															end
														end
													end
												else
													f = e[n]
												end
											else
												if t == 63 then
													local l, r, o, s, h, t
													for t = 0, 6 do
														if 2 < t then
															if 4 < t then
																if t ~= 2 then
																	for d = 17, 52 do
																		if t < 6 then
																			t = 0
																			while t > -1 do
																				if t >= 3 then
																					if 4 < t then
																						if t > 1 then
																							repeat
																								if 6 > t then
																									k(h, s)
																									break
																								end
																								t = -2
																							until true
																						else
																							t = -2
																						end
																					else
																						if 0 ~= t then
																							for e = 45, 92 do
																								if 4 ~= t then
																									s = l[o]
																									break
																								end
																								h = l[r]
																								break
																							end
																						else
																							h = l[r]
																						end
																					end
																				else
																					if t < 1 then
																						l = e
																					else
																						if 2 == t then
																							o = n
																						else
																							r = g
																						end
																					end
																				end
																				t = t + 1
																			end
																			f = f + 1
																			e = a[f]
																			break
																		end
																		t = 0
																		while t > -1 do
																			if 3 > t then
																				if 1 > t then
																					l = e
																				else
																					if 2 ~= t then
																						r = g
																					else
																						o = n
																					end
																				end
																			else
																				if t > 4 then
																					if 6 ~= t then
																						k(h, s)
																					else
																						t = -2
																					end
																				else
																					if t >= 1 then
																						repeat
																							if 4 ~= t then
																								s = l[o]
																								break
																							end
																							h = l[r]
																						until true
																					else
																						h = l[r]
																					end
																				end
																			end
																			t = t + 1
																		end
																		break
																	end
																else
																	t = 0
																	while t > -1 do
																		if t >= 3 then
																			if 4 < t then
																				if t > 1 then
																					repeat
																						if 6 > t then
																							k(h, s)
																							break
																						end
																						t = -2
																					until true
																				else
																					t = -2
																				end
																			else
																				if 0 ~= t then
																					for e = 45, 92 do
																						if 4 ~= t then
																							s = l[o]
																							break
																						end
																						h = l[r]
																						break
																					end
																				else
																					h = l[r]
																				end
																			end
																		else
																			if t < 1 then
																				l = e
																			else
																				if 2 == t then
																					o = n
																				else
																					r = g
																				end
																			end
																		end
																		t = t + 1
																	end
																	f = f + 1
																	e = a[f]
																end
															else
																if 4 == t then
																	t = 0
																	while t > -1 do
																		if t < 3 then
																			if t <= 0 then
																				l = e
																			else
																				if t < 2 then
																					r = g
																				else
																					o = n
																				end
																			end
																		else
																			if 4 < t then
																				if t >= 3 then
																					for e = 41, 89 do
																						if t ~= 6 then
																							k(h, s)
																							break
																						end
																						t = -2
																						break
																					end
																				else
																					k(h, s)
																				end
																			else
																				if t ~= 4 then
																					s = l[o]
																				else
																					h = l[r]
																				end
																			end
																		end
																		t = t + 1
																	end
																	f = f + 1
																	e = a[f]
																else
																	t = 0
																	while t > -1 do
																		if t > 2 then
																			if 5 <= t then
																				if 6 > t then
																					k(h, s)
																				else
																					t = -2
																				end
																			else
																				if 1 ~= t then
																					repeat
																						if t > 3 then
																							h = l[r]
																							break
																						end
																						s = l[o]
																					until true
																				else
																					s = l[o]
																				end
																			end
																		else
																			if 1 <= t then
																				if t >= -3 then
																					repeat
																						if t < 2 then
																							r = g
																							break
																						end
																						o = n
																					until true
																				else
																					o = n
																				end
																			else
																				l = e
																			end
																		end
																		t = t + 1
																	end
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if t >= 1 then
																if t ~= 1 then
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]][e[n]] = e[d]
																f = f + 1
																e = a[f]
															end
														end
													end
												else
													local a = k[e[d]]
													if not a then
														f = f + 1
													else
														k[e[g]] = a
														f = e[n]
													end
												end
											end
										else
											if 61 > t then
												local h, s, u, b, r, t, o
												for t = 0, 9 do
													if t < 5 then
														if t > 1 then
															if 3 <= t then
																if 3 == t then
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																else
																	t = 0
																	while t > -1 do
																		if 2 < t then
																			if t < 5 then
																				if t > 0 then
																					repeat
																						if t ~= 4 then
																							b = h[u]
																							break
																						end
																						r = h[s]
																					until true
																				else
																					r = h[s]
																				end
																			else
																				if t >= 1 then
																					repeat
																						if t ~= 5 then
																							t = -2
																							break
																						end
																						k(r, b)
																					until true
																				else
																					t = -2
																				end
																			end
																		else
																			if 0 < t then
																				if -1 < t then
																					repeat
																						if t ~= 1 then
																							u = n
																							break
																						end
																						s = g
																					until true
																				else
																					u = n
																				end
																			else
																				h = e
																			end
																		end
																		t = t + 1
																	end
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = _[e[n]]
																f = f + 1
																e = a[f]
															end
														else
															if -1 ~= t then
																for _ = 30, 62 do
																	if t ~= 1 then
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																	k[e[g]] = {}
																	f = f + 1
																	e = a[f]
																	break
																end
															else
																k[e[g]] = k[e[n]][e[d]]
																f = f + 1
																e = a[f]
															end
														end
													else
														if 6 < t then
															if 8 > t then
																k[e[g]] = _[e[n]]
																f = f + 1
																e = a[f]
															else
																if t ~= 8 then
																	t = 0
																	while t > -1 do
																		if 3 > t then
																			if 0 >= t then
																				h = e
																			else
																				if 2 > t then
																					s = g
																				else
																					u = n
																				end
																			end
																		else
																			if t < 5 then
																				if t ~= 2 then
																					for e = 36, 66 do
																						if t ~= 4 then
																							b = h[u]
																							break
																						end
																						r = h[s]
																						break
																					end
																				else
																					r = h[s]
																				end
																			else
																				if 4 ~= t then
																					repeat
																						if t > 5 then
																							t = -2
																							break
																						end
																						k(r, b)
																					until true
																				else
																					k(r, b)
																				end
																			end
																		end
																		t = t + 1
																	end
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if t > 4 then
																for d = 12, 83 do
																	if 5 < t then
																		o = e[g]
																		k[o] = k[o](l(k, o + 1, e[n]))
																		f = f + 1
																		e = a[f]
																		break
																	end
																	t = 0
																	while t > -1 do
																		if 3 > t then
																			if 1 <= t then
																				if t >= -3 then
																					repeat
																						if t < 2 then
																							s = g
																							break
																						end
																						u = n
																					until true
																				else
																					u = n
																				end
																			else
																				h = e
																			end
																		else
																			if 5 <= t then
																				if 3 < t then
																					repeat
																						if 6 ~= t then
																							k(r, b)
																							break
																						end
																						t = -2
																					until true
																				else
																					k(r, b)
																				end
																			else
																				if -1 < t then
																					for e = 23, 68 do
																						if 4 ~= t then
																							b = h[u]
																							break
																						end
																						r = h[s]
																						break
																					end
																				else
																					r = h[s]
																				end
																			end
																		end
																		t = t + 1
																	end
																	f = f + 1
																	e = a[f]
																	break
																end
															else
																o = e[g]
																k[o] = k[o](l(k, o + 1, e[n]))
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											else
												if 57 < t then
													for l = 31, 95 do
														if t < 62 then
															_[e[n]] = k[e[g]]
															break
														end
														local l, r, o, s, h, t, b
														for t = 0, 6 do
															if t > 2 then
																if 4 >= t then
																	if t < 4 then
																		b = e[g]
																		k[b] = k[b](k[b + 1])
																		f = f + 1
																		e = a[f]
																	else
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	if 6 ~= t then
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	else
																		t = 0
																		while t > -1 do
																			if 2 >= t then
																				if t > 0 then
																					if t < 2 then
																						r = g
																					else
																						o = n
																					end
																				else
																					l = e
																				end
																			else
																				if 5 <= t then
																					if t == 6 then
																						t = -2
																					else
																						k(h, s)
																					end
																				else
																					if -1 ~= t then
																						for e = 44, 75 do
																							if 3 ~= t then
																								h = l[r]
																								break
																							end
																							s = l[o]
																							break
																						end
																					else
																						h = l[r]
																					end
																				end
																			end
																			t = t + 1
																		end
																	end
																end
															else
																if 1 > t then
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																else
																	if t ~= -3 then
																		repeat
																			if 2 > t then
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			t = 0
																			while t > -1 do
																				if 2 >= t then
																					if t < 1 then
																						l = e
																					else
																						if t > 0 then
																							repeat
																								if t ~= 1 then
																									o = n
																									break
																								end
																								r = g
																							until true
																						else
																							r = g
																						end
																					end
																				else
																					if t >= 5 then
																						if t > 4 then
																							repeat
																								if t < 6 then
																									k(h, s)
																									break
																								end
																								t = -2
																							until true
																						else
																							k(h, s)
																						end
																					else
																						if 3 ~= t then
																							h = l[r]
																						else
																							s = l[o]
																						end
																					end
																				end
																				t = t + 1
																			end
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		t = 0
																		while t > -1 do
																			if 2 >= t then
																				if t < 1 then
																					l = e
																				else
																					if t > 0 then
																						repeat
																							if t ~= 1 then
																								o = n
																								break
																							end
																							r = g
																						until true
																					else
																						r = g
																					end
																				end
																			else
																				if t >= 5 then
																					if t > 4 then
																						repeat
																							if t < 6 then
																								k(h, s)
																								break
																							end
																							t = -2
																						until true
																					else
																						k(h, s)
																					end
																				else
																					if 3 ~= t then
																						h = l[r]
																					else
																						s = l[o]
																					end
																				end
																			end
																			t = t + 1
																		end
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														end
														break
													end
												else
													local l, h, o, s, r, t, b
													for t = 0, 6 do
														if t > 2 then
															if 4 >= t then
																if t < 4 then
																	b = e[g]
																	k[b] = k[b](k[b + 1])
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																if 6 ~= t then
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																else
																	t = 0
																	while t > -1 do
																		if 2 >= t then
																			if t > 0 then
																				if t < 2 then
																					h = g
																				else
																					o = n
																				end
																			else
																				l = e
																			end
																		else
																			if 5 <= t then
																				if t == 6 then
																					t = -2
																				else
																					k(r, s)
																				end
																			else
																				if -1 ~= t then
																					for e = 44, 75 do
																						if 3 ~= t then
																							r = l[h]
																							break
																						end
																						s = l[o]
																						break
																					end
																				else
																					r = l[h]
																				end
																			end
																		end
																		t = t + 1
																	end
																end
															end
														else
															if 1 > t then
																k[e[g]] = _[e[n]]
																f = f + 1
																e = a[f]
															else
																if t ~= -3 then
																	repeat
																		if 2 > t then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		t = 0
																		while t > -1 do
																			if 2 >= t then
																				if t < 1 then
																					l = e
																				else
																					if t > 0 then
																						repeat
																							if t ~= 1 then
																								o = n
																								break
																							end
																							h = g
																						until true
																					else
																						h = g
																					end
																				end
																			else
																				if t >= 5 then
																					if t > 4 then
																						repeat
																							if t < 6 then
																								k(r, s)
																								break
																							end
																							t = -2
																						until true
																					else
																						k(r, s)
																					end
																				else
																					if 3 ~= t then
																						r = l[h]
																					else
																						s = l[o]
																					end
																				end
																			end
																			t = t + 1
																		end
																		f = f + 1
																		e = a[f]
																	until true
																else
																	t = 0
																	while t > -1 do
																		if 2 >= t then
																			if t < 1 then
																				l = e
																			else
																				if t > 0 then
																					repeat
																						if t ~= 1 then
																							o = n
																							break
																						end
																						h = g
																					until true
																				else
																					h = g
																				end
																			end
																		else
																			if t >= 5 then
																				if t > 4 then
																					repeat
																						if t < 6 then
																							k(r, s)
																							break
																						end
																						t = -2
																					until true
																				else
																					k(r, s)
																				end
																			else
																				if 3 ~= t then
																					r = l[h]
																				else
																					s = l[o]
																				end
																			end
																		end
																		t = t + 1
																	end
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											end
										end
									else
										if t < 71 then
											if 69 <= t then
												if t == 70 then
													local _
													for t = 0, 4 do
														if t >= 2 then
															if t >= 3 then
																if 0 <= t then
																	repeat
																		if 4 ~= t then
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = e[d]
																	until true
																else
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																_ = e[g]
																k[_] = k[_](l(k, _ + 1, e[n]))
																f = f + 1
																e = a[f]
															end
														else
															if t ~= 1 then
																k(e[g], e[n])
																f = f + 1
																e = a[f]
															else
																k(e[g], e[n])
																f = f + 1
																e = a[f]
															end
														end
													end
												else
													local d, r, b, t, u
													for _ = 0, 5 do
														if 3 > _ then
															if 1 > _ then
																k(e[g], e[n])
																f = f + 1
																e = a[f]
															else
																if -2 ~= _ then
																	repeat
																		if 2 ~= _ then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if 3 < _ then
																if 5 ~= _ then
																	d = e[g]
																	r, b = o(k[d](l(k, d + 1, s)))
																	s = b + d - 1
																	t = 0
																	for e = d, s do
																		t = t + 1
																		k[e] = r[t]
																	end
																	f = f + 1
																	e = a[f]
																else
																	d = e[g]
																	u = k[d]
																	for e = d + 1, s do
																		h.ixMwRZhL(u, k[e])
																	end
																end
															else
																d = e[g]
																r, b = o(k[d](l(k, d + 1, e[n])))
																s = b + d - 1
																t = 0
																for e = d, s do
																	t = t + 1
																	k[e] = r[t]
																end
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											else
												if 68 ~= t then
													local f = e[g]
													local g = k[e[n]]
													k[f + 1] = g
													k[f] = g[e[d]]
												else
													local e = e[g]
													k[e] = k[e](k[e + 1])
												end
											end
										else
											if 72 < t then
												if t ~= 74 then
													k[e[g]] = (e[n] ~= 0)
												else
													local t
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
												end
											else
												if 72 > t then
													k[e[g]] = k[e[n]][e[d]]
												else
													local t
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
												end
											end
										end
									end
								end
							else
								if 104 < t then
									if 111 < t then
										if 115 >= t then
											if 113 < t then
												if t >= 112 then
													for h = 38, 76 do
														if t < 115 then
															local t
															for h = 0, 6 do
																if h >= 3 then
																	if h < 5 then
																		if 4 > h then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																		else
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if h >= 2 then
																			for _ = 15, 68 do
																				if h > 5 then
																					k[e[g]][e[n]] = k[e[d]]
																					break
																				end
																				t = e[g]
																				k[t] = k[t](l(k, t + 1, e[n]))
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			t = e[g]
																			k[t] = k[t](l(k, t + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		end
																	end
																else
																	if h > 0 then
																		if -3 ~= h then
																			repeat
																				if 2 ~= h then
																					k[e[g]] = k[e[n]][e[d]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k(e[g], e[n])
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		end
																	else
																		k[e[g]] = _[e[n]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
															break
														end
														for t = 0, 6 do
															if t < 3 then
																if 1 <= t then
																	if t ~= 2 then
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																if t < 5 then
																	if 3 == t then
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																	else
																		k[e[g]][e[n]] = e[d]
																		f = f + 1
																		e = a[f]
																	end
																else
																	if 4 < t then
																		repeat
																			if t < 6 then
																				k[e[g]] = _[e[n]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = k[e[n]][e[d]]
																		until true
																	else
																		k[e[g]] = k[e[n]][e[d]]
																	end
																end
															end
														end
														break
													end
												else
													local h
													for t = 0, 6 do
														if t >= 3 then
															if t < 5 then
																if 4 > t then
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															else
																if t >= 2 then
																	for _ = 15, 68 do
																		if t > 5 then
																			k[e[g]][e[n]] = k[e[d]]
																			break
																		end
																		h = e[g]
																		k[h] = k[h](l(k, h + 1, e[n]))
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	h = e[g]
																	k[h] = k[h](l(k, h + 1, e[n]))
																	f = f + 1
																	e = a[f]
																end
															end
														else
															if t > 0 then
																if -3 ~= t then
																	repeat
																		if 2 ~= t then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = k[e[n]][e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = _[e[n]]
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											else
												if t >= 111 then
													repeat
														if 113 ~= t then
															if k[e[g]] then
																f = f + 1
															else
																f = e[n]
															end
															break
														end
														k[e[g]][e[n]] = k[e[d]]
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = e[d]
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														k(e[g], e[n])
													until true
												else
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
												end
											end
										else
											if t <= 117 then
												if 113 < t then
													repeat
														if 117 ~= t then
															local f = e[g]
															local n = { k[f](k[f + 1]) }
															local g = 0
															for e = f, e[d] do
																g = g + 1
																k[e] = n[g]
															end
															break
														end
														k[e[g]][e[n]] = k[e[d]]
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = e[d]
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = e[d]
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = k[e[d]]
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
													until true
												else
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
												end
											else
												if 118 == t then
													local t, h
													for l = 0, 6 do
														if 2 >= l then
															if l >= 1 then
																if l > 1 then
																	k[e[g]] = r[e[n]]
																	f = f + 1
																	e = a[f]
																else
																	t = e[g]
																	k[t](k[t + 1])
																	f = f + 1
																	e = a[f]
																end
															else
																t = e[g]
																h = k[e[n]]
																k[t + 1] = h
																k[t] = h[e[d]]
																f = f + 1
																e = a[f]
															end
														else
															if l >= 5 then
																if l > 5 then
																	k[e[g]] = k[e[n]][e[d]]
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																if l ~= 4 then
																	t = e[g]
																	h = k[e[n]]
																	k[t + 1] = h
																	k[t] = h[e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]] = r[e[n]]
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												else
													local t
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
												end
											end
										end
									else
										if t > 107 then
											if t >= 110 then
												if 109 < t then
													repeat
														if 110 < t then
															local h, j, y, r, b, m, c, u, p, t
															for t = 0, 6 do
																if t >= 3 then
																	if t >= 5 then
																		if 4 <= t then
																			for l = 24, 60 do
																				if t ~= 6 then
																					k[e[g]] = _[e[n]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]] = k[e[n]][e[d]]
																				break
																			end
																		else
																			k[e[g]] = k[e[n]][e[d]]
																		end
																	else
																		if t > -1 then
																			for _ = 42, 89 do
																				if t > 3 then
																					t = 0
																					while t > -1 do
																						if t > 2 then
																							if 4 >= t then
																								if 0 ~= t then
																									for e = 15, 60 do
																										if t > 3 then
																											p = b[m]
																											break
																										end
																										u = b[c]
																										break
																									end
																								else
																									u = b[c]
																								end
																							else
																								if t > 3 then
																									repeat
																										if t ~= 5 then
																											t = -2
																											break
																										end
																										k(p, u)
																									until true
																								else
																									t = -2
																								end
																							end
																						else
																							if 0 < t then
																								if 1 ~= t then
																									c = n
																								else
																									m = g
																								end
																							else
																								b = e
																							end
																						end
																						t = t + 1
																					end
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																		end
																	end
																else
																	if 0 >= t then
																		h = e[g]
																		j, y = o(k[h](l(k, h + 1, e[n])))
																		s = y + h - 1
																		r = 0
																		for e = h, s do
																			r = r + 1
																			k[e] = j[r]
																		end
																		f = f + 1
																		e = a[f]
																	else
																		if t ~= 2 then
																			h = e[g]
																			k[h] = k[h](l(k, h + 1, s))
																			f = f + 1
																			e = a[f]
																		else
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																		end
																	end
																end
															end
															break
														end
														local t
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														t = e[g]
														k[t] = k[t](l(k, t + 1, e[n]))
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = k[e[d]]
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = e[d]
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k(e[g], e[n])
													until true
												else
													local t
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
												end
											else
												if 107 <= t then
													for l = 21, 75 do
														if t < 109 then
															k[e[g]][e[n]] = e[d]
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = e[d]
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = k[e[d]]
															f = f + 1
															e = a[f]
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															break
														end
														local t
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														t = e[g]
														k[t] = k[t](k[t + 1])
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														break
													end
												else
													local t
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													t = e[g]
													k[t] = k[t](k[t + 1])
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
												end
											end
										else
											if 106 > t then
												do
													return
												end
											else
												if 107 == t then
													local t, _
													for h = 0, 2 do
														if h > 0 then
															if -1 <= h then
																repeat
																	if 2 > h then
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																	t = e[g]
																	_ = k[e[n]]
																	k[t + 1] = _
																	k[t] = _[e[d]]
																until true
															else
																k[e[g]] = k[e[n]][e[d]]
																f = f + 1
																e = a[f]
															end
														else
															t = e[g]
															k[t] = k[t](l(k, t + 1, e[n]))
															f = f + 1
															e = a[f]
														end
													end
												else
													local _
													for t = 0, 6 do
														if t <= 2 then
															if t >= 1 then
																if -3 ~= t then
																	for d = 45, 85 do
																		if t ~= 2 then
																			k(e[g], e[n])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															else
																k[e[g]] = k[e[n]][e[d]]
																f = f + 1
																e = a[f]
															end
														else
															if 5 <= t then
																if 3 <= t then
																	for _ = 21, 65 do
																		if t ~= 6 then
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = e[d]
																		break
																	end
																else
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																end
															else
																if 0 < t then
																	for d = 43, 78 do
																		if t > 3 then
																			_ = e[g]
																			k[_] = k[_](l(k, _ + 1, e[n]))
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	_ = e[g]
																	k[_] = k[_](l(k, _ + 1, e[n]))
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											end
										end
									end
								else
									if t > 96 then
										if t >= 101 then
											if t >= 103 then
												if 104 > t then
													for t = 0, 3 do
														if t < 2 then
															if -2 < t then
																for d = 42, 76 do
																	if 0 < t then
																		_[e[n]] = k[e[g]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																	k[e[g]] = (e[n] ~= 0)
																	f = f + 1
																	e = a[f]
																	break
																end
															else
																k[e[g]] = (e[n] ~= 0)
																f = f + 1
																e = a[f]
															end
														else
															if t > 0 then
																repeat
																	if t ~= 2 then
																		if k[e[g]] ~= e[d] then
																			f = f + 1
																		else
																			f = e[n]
																		end
																		break
																	end
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																until true
															else
																k[e[g]] = _[e[n]]
																f = f + 1
																e = a[f]
															end
														end
													end
												else
													k[e[g]][e[n]] = e[d]
												end
											else
												if 99 <= t then
													repeat
														if t > 101 then
															local t, s
															for h = 0, 9 do
																if 5 > h then
																	if h <= 1 then
																		if -4 <= h then
																			for _ = 13, 54 do
																				if h ~= 1 then
																					k[e[g]] = k[e[n]][e[d]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				t = e[g]
																				k[t] = k[t](l(k, t + 1, e[n]))
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			t = e[g]
																			k[t] = k[t](l(k, t + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if 2 >= h then
																			k[e[g]] = {}
																			f = f + 1
																			e = a[f]
																		else
																			if h > 1 then
																				repeat
																					if h ~= 4 then
																						k[e[g]][e[n]] = e[d]
																						f = f + 1
																						e = a[f]
																						break
																					end
																					t = e[g]
																					k[t] = k[t](l(k, t + 1, e[n]))
																					f = f + 1
																					e = a[f]
																				until true
																			else
																				t = e[g]
																				k[t] = k[t](l(k, t + 1, e[n]))
																				f = f + 1
																				e = a[f]
																			end
																		end
																	end
																else
																	if 7 <= h then
																		if 8 <= h then
																			if 5 ~= h then
																				for t = 37, 89 do
																					if 9 > h then
																						k[e[g]] = k[e[n]][e[d]]
																						f = f + 1
																						e = a[f]
																						break
																					end
																					k[e[g]] = r[e[n]]
																					break
																				end
																			else
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																			end
																		else
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if 4 ~= h then
																			for _ = 36, 73 do
																				if 5 ~= h then
																					t = e[g]
																					k[t](k[t + 1])
																					f = f + 1
																					e = a[f]
																					break
																				end
																				t = e[g]
																				s = k[e[n]]
																				k[t + 1] = s
																				k[t] = s[e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			t = e[g]
																			k[t](k[t + 1])
																			f = f + 1
																			e = a[f]
																		end
																	end
																end
															end
															break
														end
														local h
														for t = 0, 6 do
															if 2 < t then
																if 4 >= t then
																	if t ~= 0 then
																		for l = 22, 53 do
																			if 3 < t then
																				k[e[g]] = _[e[n]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]][e[n]] = e[d]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k[e[g]][e[n]] = e[d]
																		f = f + 1
																		e = a[f]
																	end
																else
																	if t ~= 6 then
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	else
																		k(e[g], e[n])
																	end
																end
															else
																if t >= 1 then
																	if -1 <= t then
																		repeat
																			if t < 2 then
																				h = e[g]
																				k[h] = k[h](l(k, h + 1, e[n]))
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		h = e[g]
																		k[h] = k[h](l(k, h + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	end
																else
																	k(e[g], e[n])
																	f = f + 1
																	e = a[f]
																end
															end
														end
													until true
												else
													local t, s
													for h = 0, 9 do
														if 5 > h then
															if h <= 1 then
																if -4 <= h then
																	for _ = 13, 54 do
																		if h ~= 1 then
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		t = e[g]
																		k[t] = k[t](l(k, t + 1, e[n]))
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	t = e[g]
																	k[t] = k[t](l(k, t + 1, e[n]))
																	f = f + 1
																	e = a[f]
																end
															else
																if 2 >= h then
																	k[e[g]] = {}
																	f = f + 1
																	e = a[f]
																else
																	if h > 1 then
																		repeat
																			if h ~= 4 then
																				k[e[g]][e[n]] = e[d]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			t = e[g]
																			k[t] = k[t](l(k, t + 1, e[n]))
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		t = e[g]
																		k[t] = k[t](l(k, t + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														else
															if 7 <= h then
																if 8 <= h then
																	if 5 ~= h then
																		for t = 37, 89 do
																			if 9 > h then
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = r[e[n]]
																			break
																		end
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																if 4 ~= h then
																	for _ = 36, 73 do
																		if 5 ~= h then
																			t = e[g]
																			k[t](k[t + 1])
																			f = f + 1
																			e = a[f]
																			break
																		end
																		t = e[g]
																		s = k[e[n]]
																		k[t + 1] = s
																		k[t] = s[e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	t = e[g]
																	k[t](k[t + 1])
																	f = f + 1
																	e = a[f]
																end
															end
														end
													end
												end
											end
										else
											if 98 >= t then
												if t ~= 93 then
													for h = 34, 68 do
														if t < 98 then
															local u, h, r, b, o, s, t
															for t = 0, 6 do
																if t <= 2 then
																	if 1 <= t then
																		if t > -3 then
																			for _ = 40, 53 do
																				if 1 ~= t then
																					k[e[g]][e[n]] = e[d]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]][e[n]] = k[e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			k[e[g]][e[n]] = e[d]
																			f = f + 1
																			e = a[f]
																		end
																	else
																		u = e[g]
																		k[u] = k[u](l(k, u + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	end
																else
																	if t <= 4 then
																		if -1 <= t then
																			repeat
																				if 4 > t then
																					k[e[g]] = _[e[n]]
																					f = f + 1
																					e = a[f]
																					break
																				end
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																			until true
																		else
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																		end
																	else
																		if t ~= 4 then
																			for d = 40, 85 do
																				if t ~= 5 then
																					t = 0
																					while t > -1 do
																						if t > 2 then
																							if t <= 4 then
																								if 2 <= t then
																									repeat
																										if 4 ~= t then
																											o = h[b]
																											break
																										end
																										s = h[r]
																									until true
																								else
																									s = h[r]
																								end
																							else
																								if t ~= 1 then
																									repeat
																										if 5 ~= t then
																											t = -2
																											break
																										end
																										k(s, o)
																									until true
																								else
																									t = -2
																								end
																							end
																						else
																							if t <= 0 then
																								h = e
																							else
																								if 2 == t then
																									b = n
																								else
																									r = g
																								end
																							end
																						end
																						t = t + 1
																					end
																					break
																				end
																				t = 0
																				while t > -1 do
																					if t >= 3 then
																						if t > 4 then
																							if 3 <= t then
																								repeat
																									if t ~= 5 then
																										t = -2
																										break
																									end
																									k(s, o)
																								until true
																							else
																								t = -2
																							end
																						else
																							if 0 < t then
																								repeat
																									if t ~= 3 then
																										s = h[r]
																										break
																									end
																									o = h[b]
																								until true
																							else
																								o = h[b]
																							end
																						end
																					else
																						if t <= 0 then
																							h = e
																						else
																							if t > -2 then
																								repeat
																									if 2 > t then
																										r = g
																										break
																									end
																									b = n
																								until true
																							else
																								r = g
																							end
																						end
																					end
																					t = t + 1
																				end
																				f = f + 1
																				e = a[f]
																				break
																			end
																		else
																			t = 0
																			while t > -1 do
																				if t > 2 then
																					if t <= 4 then
																						if 2 <= t then
																							repeat
																								if 4 ~= t then
																									o = h[b]
																									break
																								end
																								s = h[r]
																							until true
																						else
																							s = h[r]
																						end
																					else
																						if t ~= 1 then
																							repeat
																								if 5 ~= t then
																									t = -2
																									break
																								end
																								k(s, o)
																							until true
																						else
																							t = -2
																						end
																					end
																				else
																					if t <= 0 then
																						h = e
																					else
																						if 2 == t then
																							b = n
																						else
																							r = g
																						end
																					end
																				end
																				t = t + 1
																			end
																		end
																	end
																end
															end
															break
														end
														if k[e[g]] then
															f = f + 1
														else
															f = e[n]
														end
														break
													end
												else
													local u, h, r, b, o, s, t
													for t = 0, 6 do
														if t <= 2 then
															if 1 <= t then
																if t > -3 then
																	for _ = 40, 53 do
																		if 1 ~= t then
																			k[e[g]][e[n]] = e[d]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]][e[n]] = k[e[d]]
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	k[e[g]][e[n]] = e[d]
																	f = f + 1
																	e = a[f]
																end
															else
																u = e[g]
																k[u] = k[u](l(k, u + 1, e[n]))
																f = f + 1
																e = a[f]
															end
														else
															if t <= 4 then
																if -1 <= t then
																	repeat
																		if 4 > t then
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	until true
																else
																	k[e[g]] = _[e[n]]
																	f = f + 1
																	e = a[f]
																end
															else
																if t ~= 4 then
																	for d = 40, 85 do
																		if t ~= 5 then
																			t = 0
																			while t > -1 do
																				if t > 2 then
																					if t <= 4 then
																						if 2 <= t then
																							repeat
																								if 4 ~= t then
																									o = h[b]
																									break
																								end
																								s = h[r]
																							until true
																						else
																							s = h[r]
																						end
																					else
																						if t ~= 1 then
																							repeat
																								if 5 ~= t then
																									t = -2
																									break
																								end
																								k(s, o)
																							until true
																						else
																							t = -2
																						end
																					end
																				else
																					if t <= 0 then
																						h = e
																					else
																						if 2 == t then
																							b = n
																						else
																							r = g
																						end
																					end
																				end
																				t = t + 1
																			end
																			break
																		end
																		t = 0
																		while t > -1 do
																			if t >= 3 then
																				if t > 4 then
																					if 3 <= t then
																						repeat
																							if t ~= 5 then
																								t = -2
																								break
																							end
																							k(s, o)
																						until true
																					else
																						t = -2
																					end
																				else
																					if 0 < t then
																						repeat
																							if t ~= 3 then
																								s = h[r]
																								break
																							end
																							o = h[b]
																						until true
																					else
																						o = h[b]
																					end
																				end
																			else
																				if t <= 0 then
																					h = e
																				else
																					if t > -2 then
																						repeat
																							if 2 > t then
																								r = g
																								break
																							end
																							b = n
																						until true
																					else
																						r = g
																					end
																				end
																			end
																			t = t + 1
																		end
																		f = f + 1
																		e = a[f]
																		break
																	end
																else
																	t = 0
																	while t > -1 do
																		if t > 2 then
																			if t <= 4 then
																				if 2 <= t then
																					repeat
																						if 4 ~= t then
																							o = h[b]
																							break
																						end
																						s = h[r]
																					until true
																				else
																					s = h[r]
																				end
																			else
																				if t ~= 1 then
																					repeat
																						if 5 ~= t then
																							t = -2
																							break
																						end
																						k(s, o)
																					until true
																				else
																					t = -2
																				end
																			end
																		else
																			if t <= 0 then
																				h = e
																			else
																				if 2 == t then
																					b = n
																				else
																					r = g
																				end
																			end
																		end
																		t = t + 1
																	end
																end
															end
														end
													end
												end
											else
												if 95 < t then
													for h = 41, 59 do
														if t < 100 then
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															f = f + 1
															e = a[f]
															k[e[g]][e[n]] = k[e[d]]
															f = f + 1
															e = a[f]
															k[e[g]] = _[e[n]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															f = f + 1
															e = a[f]
															k[e[g]] = k[e[n]][e[d]]
															break
														end
														local t
														t = e[g]
														k[t] = k[t](l(k, t + 1, e[n]))
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = k[e[d]]
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = e[d]
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
														break
													end
												else
													local t
													t = e[g]
													k[t] = k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = k[e[d]]
													f = f + 1
													e = a[f]
													k[e[g]][e[n]] = e[d]
													f = f + 1
													e = a[f]
													k[e[g]] = _[e[n]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
													f = f + 1
													e = a[f]
													k[e[g]] = k[e[n]][e[d]]
												end
											end
										end
									else
										if 92 >= t then
											if 90 < t then
												if 87 ~= t then
													for h = 24, 65 do
														if 92 ~= t then
															local f = e[g]
															do
																return k[f](l(k, f + 1, e[n]))
															end
															break
														end
														local h
														for t = 0, 7 do
															if 4 <= t then
																if 6 <= t then
																	if t ~= 3 then
																		repeat
																			if t < 7 then
																				k[e[g]] = {}
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = _[e[n]]
																		until true
																	else
																		k[e[g]] = _[e[n]]
																	end
																else
																	if t ~= 4 then
																		h = e[g]
																		k[h] = k[h](l(k, h + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																end
															else
																if t < 2 then
																	if t > -2 then
																		for _ = 15, 89 do
																			if t ~= 0 then
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = k[e[n]][e[d]]
																			f = f + 1
																			e = a[f]
																			break
																		end
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																else
																	if 1 ~= t then
																		repeat
																			if 2 < t then
																				k[e[g]] = k[e[n]][e[d]]
																				f = f + 1
																				e = a[f]
																				break
																			end
																			k[e[g]] = _[e[n]]
																			f = f + 1
																			e = a[f]
																		until true
																	else
																		k[e[g]] = k[e[n]][e[d]]
																		f = f + 1
																		e = a[f]
																	end
																end
															end
														end
														break
													end
												else
													local f = e[g]
													do
														return k[f](l(k, f + 1, e[n]))
													end
												end
											else
												local f = e[g]
												local g, e = o(k[f](l(k, f + 1, e[n])))
												s = e + f - 1
												local e = 0
												for f = f, s do
													e = e + 1
													k[f] = g[e]
												end
											end
										else
											if t > 94 then
												if 92 <= t then
													for _ = 29, 91 do
														if 96 > t then
															local t, _
															t = e[g]
															_ = k[e[n]]
															k[t + 1] = _
															k[t] = _[e[d]]
															f = f + 1
															e = a[f]
															t = e[g]
															k[t](k[t + 1])
															f = f + 1
															e = a[f]
															k[e[g]] = r[e[n]]
															f = f + 1
															e = a[f]
															k(e[g], e[n])
															f = f + 1
															e = a[f]
															k[e[g]] = r[e[n]]
															f = f + 1
															e = a[f]
															t = e[g]
															k[t](l(k, t + 1, e[n]))
															f = f + 1
															e = a[f]
															k[e[g]] = (e[n] ~= 0)
															f = f + 1
															e = a[f]
															do
																return k[e[g]]
															end
															f = f + 1
															e = a[f]
															f = e[n]
															break
														end
														k[e[g]][e[n]] = e[d]
														break
													end
												else
													local t, _
													t = e[g]
													_ = k[e[n]]
													k[t + 1] = _
													k[t] = _[e[d]]
													f = f + 1
													e = a[f]
													t = e[g]
													k[t](k[t + 1])
													f = f + 1
													e = a[f]
													k[e[g]] = r[e[n]]
													f = f + 1
													e = a[f]
													k(e[g], e[n])
													f = f + 1
													e = a[f]
													k[e[g]] = r[e[n]]
													f = f + 1
													e = a[f]
													t = e[g]
													k[t](l(k, t + 1, e[n]))
													f = f + 1
													e = a[f]
													k[e[g]] = (e[n] ~= 0)
													f = f + 1
													e = a[f]
													do
														return k[e[g]]
													end
													f = f + 1
													e = a[f]
													f = e[n]
												end
											else
												if t >= 90 then
													repeat
														if t ~= 94 then
															local _
															for t = 0, 4 do
																if 2 > t then
																	if t ~= 0 then
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	else
																		k(e[g], e[n])
																		f = f + 1
																		e = a[f]
																	end
																else
																	if t >= 3 then
																		if t == 3 then
																			k[e[g]][e[n]] = k[e[d]]
																			f = f + 1
																			e = a[f]
																		else
																			k[e[g]][e[n]] = e[d]
																		end
																	else
																		_ = e[g]
																		k[_] = k[_](l(k, _ + 1, e[n]))
																		f = f + 1
																		e = a[f]
																	end
																end
															end
															break
														end
														local t
														k[e[g]] = k[e[n]][e[d]]
														f = f + 1
														e = a[f]
														k(e[g], e[n])
														f = f + 1
														e = a[f]
														t = e[g]
														k[t] = k[t](k[t + 1])
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = k[e[d]]
														f = f + 1
														e = a[f]
														k[e[g]][e[n]] = e[d]
														f = f + 1
														e = a[f]
														k[e[g]] = _[e[n]]
														f = f + 1
														e = a[f]
														k[e[g]] = k[e[n]][e[d]]
													until true
												else
													local t
													for _ = 0, 4 do
														if 2 > _ then
															if _ ~= 0 then
																k(e[g], e[n])
																f = f + 1
																e = a[f]
															else
																k(e[g], e[n])
																f = f + 1
																e = a[f]
															end
														else
															if _ >= 3 then
																if _ == 3 then
																	k[e[g]][e[n]] = k[e[d]]
																	f = f + 1
																	e = a[f]
																else
																	k[e[g]][e[n]] = e[d]
																end
															else
																t = e[g]
																k[t] = k[t](l(k, t + 1, e[n]))
																f = f + 1
																e = a[f]
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
					f = 1 + f
				end
			end
			return ke
		end
		local n = 0xff
		local _ = {}
		local a = 1
		local g = ""
		(function(f)
			local k = f
			local d = 0x00
			local e = 0x00
			k = {
				function(g)
					if d > 0x20 then
						return g
					end
					d = d + 1
					e = (e + 0xb88 - g) % 0x13
					return (
						e % 0x03 == 0x1
						and (function(k)
							if not f[k] then
								e = e + 0x01
								f[k] = 0xec
							end
							return true
						end)("igcir")
						and k[0x1](0x30f + g)
					)
						or (e % 0x03 == 0x2 and (function(k)
							if not f[k] then
								e = e + 0x01
								f[k] = 0x7c
							end
							return true
						end)("tmZVQ") and k[0x2](g + 0x2d6))
						or (e % 0x03 == 0x0 and (function(k)
							if not f[k] then
								e = e + 0x01
								f[k] = 0x18
								_[a] = ne()
								a = a + n
							end
							return true
						end)("eXoWt") and k[0x3](g + 0x33f))
						or g
				end,
				function(t)
					if d > 0x29 then
						return t
					end
					d = d + 1
					e = (e + 0x1145 - t) % 0x2d
					return (
						e % 0x03 == 0x1
						and (function(k)
							if not f[k] then
								e = e + 0x01
								f[k] = 0x55
							end
							return true
						end)("Squfp")
						and k[0x2](0x35f + t)
					)
						or (e % 0x03 == 0x2 and (function(k)
							if not f[k] then
								e = e + 0x01
								f[k] = 0x24
								n[2] = (n[2] * (ke(function()
									_()
								end, l(g)) - ke(n[1], l(g)))) + 1
								_[a] = {}
								n = n[2]
								a = a + n
							end
							return true
						end)("brgeJ") and k[0x1](t + 0x123))
						or (e % 0x03 == 0x0 and (function(k)
							if not f[k] then
								e = e + 0x01
								f[k] = 0xab
							end
							return true
						end)("nyRKw") and k[0x3](t + 0x279))
						or t
				end,
				function(t)
					if d > 0x29 then
						return t
					end
					d = d + 1
					e = (e + 0x942 - t) % 0x2b
					return (
						e % 0x03 == 0x2
						and (function(k)
							if not f[k] then
								e = e + 0x01
								f[k] = 0xce
								g = "\37"
								n = {
									function()
										n()
									end,
								}
								g = g .. "\100\43"
							end
							return true
						end)("oCMMy")
						and k[0x3](0xa5 + t)
					)
						or (e % 0x03 == 0x0 and (function(k)
							if not f[k] then
								e = e + 0x01
								f[k] = 0xb6
							end
							return true
						end)("yEEHm") and k[0x1](t + 0x3cd))
						or (e % 0x03 == 0x1 and (function(k)
							if not f[k] then
								e = e + 0x01
								f[k] = 0xf4
								g = { g .. "\58 a", g }
								_[a] = fe()
								a = a + ((not h.tjAbLvza) and 1 or 0)
								g[1] = "\58" .. g[1]
								n[2] = 0xff
							end
							return true
						end)("y_EAy") and k[0x2](t + 0x6c))
						or t
				end,
			}
			k[0x3](0x9c5)
		end)({})
		local e = m(l(_))
		return e(...)
	end
	return ee(
		(function()
			local f = {}
			local e = 0x01
			local k
			if h.tjAbLvza then
				k = h.tjAbLvza(ee)
			else
				k = ""
			end
			if h.bQIoEpid(k, h.OFaLBQkv) then
				e = e + 0
			else
				e = e + 1
			end
			f[e] = 0x02
			f[f[e] + 0x01] = 0x03
			return f
		end)(),
		...
	)
end)(function(e, f, k, g, n, a)
	local a
	if 4 > e then
		if e <= 1 then
			if -2 <= e then
				repeat
					if e > 0 then
						do
							return function(k, e, f)
								if f then
									local e = (k / 2 ^ (e - 1)) % 2 ^ ((f - 1) - (e - 1) + 1)
									return e - e % 1
								else
									local e = 2 ^ (e - 1)
									return (k % (e + e) >= e) and 1 or 0
								end
							end
						end
						break
					end
					do
						return f(1), f(4, n, g, k, f), f(5, n, g, k)
					end
				until true
			else
				do
					return function(f, e, k)
						if k then
							local e = (f / 2 ^ (e - 1)) % 2 ^ ((k - 1) - (e - 1) + 1)
							return e - e % 1
						else
							local e = 2 ^ (e - 1)
							return (f % (e + e) >= e) and 1 or 0
						end
					end
				end
			end
		else
			if 0 ~= e then
				for a = 34, 57 do
					if e ~= 2 then
						do
							return f(1), f(4, n, g, k, f), f(5, n, g, k)
						end
						break
					end
					do
						return 16777216, 65536, 256
					end
					break
				end
			else
				do
					return 16777216, 65536, 256
				end
			end
		end
	else
		if e >= 6 then
			if 6 < e then
				if e > 7 then
					do
						return k(e, nil, k)
					end
				else
					do
						return setmetatable({}, {
							["__\99\97\108\108"] = function(e, n, k, g, f)
								if f then
									return e[f]
								elseif g then
									return e
								else
									e[n] = k
								end
							end,
						})
					end
				end
			else
				do
					return n[k]
				end
			end
		else
			if e ~= 4 then
				local e = g
				do
					return function()
						local f = f(k, e(e, e), e(e, e))
						e(1)
						return f
					end
				end
			else
				local e = g
				local n, d, t = n(2)
				do
					return function()
						local a, g, k, f = f(k, e(e, e), e(e, e) + 3)
						e(4)
						return (f * n) + (k * d) + (g * t) + a
					end
				end
			end
		end
	end
end, ...)
