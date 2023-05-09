---
description: Endpoints for Trip Planner
---

# Trip Planner

Plans a route based on the vehicle specifications and charge state. Trips that require charging will set waypoints based on Tesla Supercharger locations along the route.

- [Share trip to car](/docs/vehicle/commands/sharing.md)

## POST `trip-planner/api/v1/tripplan`

Request a trip plan based on the car model, origin, destination and remaining charge.

### Request body parameters

| Field         | Example                 | Description                                                               |
| :------------ | :---------------------- | :------------------------------------------------------------------------ |
| `car_trim`    | `74D`                   | Car Model Variant                                                         |
| `car_type`    | `ModelY`                | Car model                                                                 |
| `destination` | `37.485767,-122.240207` | Destination Latitude and Longitude, separated by comma                    |
| `origin`      | `37.79307,-125.108`     | Origin Latitude and Longitude, separated by comma                         |
| `origin_soe`  | `0.64`                  | State of energy (charging) on the origin. Values goes from `0.0` to `1.0` |
| `vin`         | `5YJSA11111111111`      | Car VIN                                                                   |

### Request body

```json
{
  "car_trim": "74D",
  "car_type": "ModelY",
  "destination": "37.485767,-122.340207",
  "origin": "37.79307,-125.108",
  "origin_soe": 0.64,
  "vin": "5YJSA11111111111"
}
```

### Reponse

```json
{
  "destination_soe": 0.064,
  "origin_soe": 0.65,
  "polylines": [
    "usccFlbhhV~HD?aEAkLbQjOjV|Sbp@pn@|MrSoB`Ac@aCrP_KzFiF|FcInEaNpF}Y|IkPhNwKfJeKtCeHhPae@jNqQdUwg@jTg_@tEwKdByKJmNkCeXa@cO`B_PlJ_d@xFsWhGgJ`J}Glj@oLta@{O~N_GnJuHz]gc@bf@{l@d`Aku@tWgU`TcZpSwYfRk\\hNqc@dIa_@bx@ezBfNcb@rEyWnUqaAhRafBbH}r@P_v@UieBYo_AqGyf@uOgw@qEaZ@mXlAocAZgy@zBc[xK{Z~r@yiB~CiPn@gOZceA`Dka@lMsu@lBga@sDcf@yEkk@o@{XxJuZdLwVb_@mw@hZ{n@n^wi@~a@ik@nt@_v@viAw{Btl@a`Ax_@ii@dZyVv[e^|b@ch@jUiR|Q}OnPaUnSgWrYsXbaAe_Atj@kf@dkAil@v`@_Sl\\eTvcAkuAlQgQpj@iX~zBecA~pBgq@niBao@deA{c@rR_Gt@sAo@_CaEcOqF{OiPwm@cd@{_BmFqVnByH`SwR~[iSnw@af@f`@mThJcEdDwGtWwY~e@gi@l_@}^xVeYvZoeAjLasAWsTsH_MaLwWoCmMKkQiEiMw@aJ`AwGvMuZlHmPdJgKdF}CzP{DtRoM`OgJ~DqLIsPkBiOnAoLtQwv@`GaNfViYxOqTpDwPFgK{AsIaEmHwQa_@cPkn@{GaJmIqBik@sE{JrCw[`NyKnAmJqAwf@w]{HeHmRiXk`@eb@yWyt@wMks@iIku@mDaLeLcP_QsUuSgYgHsGcJuBeKcAoIwDoQ{OwHwV_FiZqMkm@wGqm@hAcWiBwR}CaFgKqG}PeLkJeP}CyMPsTxD}^|DgTiBqUpCkYWqNsDyHqS_NgTeYyDeVqEmP{V{i@ob@alAcHyZ}Fy`@kFiZwDwFeK}EkWgJ{FcEyFgQq@sb@qGeP{ZeZuEkIsAcQTy^aC}PwIyg@IqNrByc@yD{XyJcOmPwMyWaTiFaLgKy^{V{|@sIg]f@oMjG{OhGqMrKuG~ZyJvYsQnIoHpGuLhKsTnHmb@~Lc`AfvAktCdo@mqAlKeZjI}cAVegB@y_A?{x@TyyCf@cn@lFmTnDoIvU}Uz`@w_@rs@ar@|iAmgAlvAqsA|m@gl@t|@_v@pcAa{@faA{x@|[k]h|A_qBpfBq}Bt`@ug@v^q`@d~@o`Azk@qn@``Asw@vy@mq@`kAws@~~AaaAjmA}t@d_CmwAhwEwsCdhLwbH|jBenAjnDueC|hFgrDpHaDhGX`BLpDxJuEvBq@wDOm@",
    "ucs~Ebwf_VQOMJBLZbAd@dAZpAj@WnAk@xAs@u@oCyAuFJKFIDINc@|@cD|@cDp@qBt@gApAoAr@k@DUlAy@n@e@jAw@hFuD|TyOnYiS`H}ErEoDvGmGjD_EfCeDzOiUxb@mn@dj@gx@xsAqoBfsAqnBtaEs`GhgCgsDxReYzKuOvEwFfGoGnNqNd\\o\\|b@gc@|_Ai`AlJqIfI_HrSyPzSaQxVaTxKoJfLsKfPmOhg@qe@vTySzrA}nAjaAqz@tj@af@`|@wu@bi@ud@vX}Uru@ap@rr@cm@jj@ue@nYyVvSmQne@qa@pm@wh@raEulDxb@__@pIiHjMcKfs@wj@`d@}]dO}LfM}Ktc@o`@fKgJdHgG|E{DxDmCxHoEj`@_TbSwKvWoNdsBmhAlw@ub@jr@g_@tfBk`A~|@}e@v_CcpAxmAop@xh@kYbFcDhGaFfMeLjW}TrvAkoAz_BqwAbjBy`BdmBscBxxAcqAzhAmbA~GcHdG{HjE{GbFmJ`GiLpSea@dKiSls@_vAj\\uo@`\\eo@z[ao@n\\it@l\\st@`[ar@lMsXrNqWt`@ms@da@ct@jP{YjNuV`M_UrKkRtEyGxCuD|CiDvG}G`IkIhQuQhQyQfb@gc@dd@ae@`fAwgAhfAahAv|Cs`Db`D{cDtqAosAre@qf@zS_TfVgUfk@{h@zf@wd@v|@qy@tt@yq@bMuKfRuNfPaMlr@_i@hWeRl\\gUlL}HfQuLjqAs|@xdBakAlCkBnEwDjDwC~BaBdi@i^bUoOtLeIjMkI~QiMtT_O`NkJfToNnHgF~Q}LbCaBfFoD~DsB^Un@e@dDuBtFyDfUwOfHyEfKcH`XuQzz@qk@dZkSv`@cXrbAkq@|{DskCnoBwrA|RqMfp@}c@je@o[|s@if@~rBguAlo@}b@`WyPfJaHhFoEfG{FxXwW~JoJdk@ki@tk@}i@`_Ai|@lIcInJ}JzT{VxxAw`BzcAajAhxFinGxTuVjIqJvHiKnSc[xTa]rQwXtr@efAbfEeqGttCwlEtxAoyBrr@keAvt@ciAb}@cuAhQmXnUq^zt@akA`qBa`D~sAyvB`hA}eBja@io@nP{V`QiVhh@ct@lPoUbHoJpG}HlIoJj]k_@ls@{v@vg@kj@xiDytD`cBqiBbjAynAdnCgwCba@_e@vaAyhAtv@u|@~a@se@nXk[dgBkrBpk@ep@jRmTfk@_p@zlAguAp~@{dA~e@_j@rHkIn@s@f@i@LML?@?r@o@zBqBj@c@t@[`ASvBAH??t@?j@GrB?tE",
    "_oeuErequUpAoNpD{LnS{UtkAaqAf~AydBtzAk`BrzA{sAlkAcyAli@{Ypw@kWthCkj@fwDcy@xq@aOpp@gKvf@_@lUwJjLBfJgDrHqIxLkD|Y_A~OmGhRlAlZOda@kF`YuLb]__@xIu[lVcn@dRmNhTaNz`@}i@~|@m}@rj@}a@|kBsmAdRSpZjV|q@vs@xr@vr@vMrDhO[zOkHtMqOv_@ie@xSw^rF_w@nLeiBnCo`@rLe[fg@oy@hj@agAxSq_@hi@wh@dp@kYnhA{AphBbQvc@xBza@mAtl@yDtaAu[|i@uQro@s]d|@an@~PwVxEkUpIsVdQeOp]aYlReWjQkGfWUnj@eOzg@gVz\\gu@rE_o@bPs[pVwUrUu[vk@yXvT{J`UqCvs@uEx_@~Bjb@q@b[{F|TeW`c@we@jLsQ`K}^|N}Wzb@qTnq@s`A|f@e~@pe@ycA|v@gr@vd@{HbXwHjh@u]~t@gg@|VkOjUkCdVkHbSaNrh@c^rXuPxPgE~XTri@~H|Xt@jUiFpp@rB`TiFnOeKzVsUjRwc@bTqe@lQiUp]{b@fa@gTvvAki@n~@}Z~zAsXnb@mM|o@m]zc@uXn`@yPvYyK`\\o^jXsy@jPuc@xGuG`PcYhGej@nRwh@`OeXnLqKb`@_O|PoN|b@e{@hp@ef@n_C{zBp_@ek@vc@mZxhA}dA~t@oi@tt@{w@fxAm}AtUw_@tCe\\hDc`@bH{YfO{e@Ssj@rDya@jSa]lE}~@dO_Wnm@er@fZaYp`@qUjWsR|W}g@za@ml@~Sga@lZqXxUg`@dUmIzUoQdUs]~SsY``@qSpQkPdKoTq@s]uLmz@sGm}@B}aB~AuMfKsUtU}]tY_}@fEoj@k@qr@uOcs@DiUrGoSrZwz@lDmY{@qT}Sys@yIcd@cOm`@}Mm_@m@ma@@_`AsCyvFpDe[nNcV|G_XIo^oDi`AWuzBp@o{@tDwn@xi@ytA~RgWdKcf@XqkBMe~BtCm|@lNyv@lRut@Dob@eHee@BwQfKc`@|Jw_@vYmZrJmYuAid@XqsChB}q@jMo`@jEiZoB_x@aBwu@oMad@kBco@fC{n@jBwaCH_bCJ_dBj@ey@oEuq@|A{kEaByvAyX_j@_b@gp@cOwXmG}W}Aes@a@_lDUssCi@isCkHaeDx@wzLK_mM|ByfFyAe`C`Hyn@Fcs@d@s`AsDce@iYud@iXeXgHkQiBmUCiq@l@_fBnDaiCxL}~Af]miAh`@qsAjAe`BrKwj@iQgs@mEqPcFmFsBgAgApFVtH",
    "wbjoEjnhjULwHxADvErBbGbOjIpf@lErFnIZrLoInTsDjWDj]_D|YiD`U?tv@~E~fAtAr{Aj@xRlAdFw@jImElFeHbHiXnByODw`@V{m@hIy^|Tek@vM_Vjf@i]zU_I|WeLhIgJ|EuJrNye@~Kei@fQck@tIgWvEkh@`IuX|G_g@`GmXdPqZnMgVtK{W~AePDkVfLi`AbHga@zHuMlHgGhWmLpj@yVxr@sb@pj@aX`RsHvNkKjH{J~IgUnLuRpM_PrQ{`@~Te[naA{`BlTy\\rVyVhg@ca@~Xcb@dPi`@xKuMbI{NdC}OJyT_Ams@nAi{BdDqcCrDw_ArDaf@FmyACgoBo@qgBkGag@mIs`@_Lgy@{Fc`@oCgb@n@a[jEsV`[se@zPwV`KcXhLwg@b@w~@?{{@Ae^aCki@iHehAcBqm@wEyY_Ku^yAmLPoKnDq_@fNcxAfAmSiAk]_Mip@eEk[dD_a@jE_c@r@y`@e@am@pCkiAGa^sB}VyB}UqAic@hBkWzFmWrOec@fNweAhOooAvJwx@~WezBxS}jBp@cfAzPu|@fJw]bMqXzM}WhRaVdn@qv@fg@mn@x_@se@jRyUtQqYj_@yu@p[go@x`AgnBjqBm`Epn@koA`j@ky@bf@a|@`Qic@f\\{i@nkA}_CffA_wBn_A{mBdI{XfKug@nP}aAbIsWbJ_d@p`@_wAvIkl@zRkZb_@k{@vIiYbDwXQec@oDm\\hBw~@zAyb@tCmVlD{IxKwMhYwXtZuc@xr@mt@dGgMbEsQhAc|@j@}_AdIkc@jSsbAhh@adCvMceAlI_v@bGct@kEyt@wDqi@eAg]j@c\\vDm`A|Je_@t]g|@hPo~@pj@ytD~Jku@nEm\\bBe^cCyuAS{`@bD}_@|MgvAdJa`A`Um_CpRwpB`RitBnMqyEdLyeE|BwhAF}cADu_CNa_EJo|Au@sz@aGyy@_OqbBsKmqA{KcpDsSsxG}HkgCsAw^uEmb@wJgs@i`@orCi^wiCgv@_tF_WyiBkIo}@yi@g}DeLsy@w@gp@a@eaBIsqA~O_gCt]glFzGmcAxNcx@zl@k{CfmGwp[l\\{cBzRmmAlZmiB~IaT`PiU~Iq[hOa_Ab\\sqBl_@etBdVemAti@iwC~BcUn@m]@saBD_fCBw|AwIq~ByCwpCyF}mFe@eoESa}Dz@m]~Co[OwgB}@gfCh@wcAvG}`@fDua@By]BybALeuEN}xEeBokCeAusEqAsjCbBaa@nTixAbEsZjBsNbBuFp@jBiAvDm@|D",
    "i|alEpo~yTQKrAsEj@wANgBIuAFKF[E_@UWa@GE?a@k@QoBScFGkDKcGKyDKQE{ACq@Q}EYmFs@mJqAoLcAaHeBqJ_GwZsJ_g@qMkq@sV{pA{Oyy@_Iga@{UenAcIib@oFsX{BwLoF{XaFoWkHe`@kBiLkAkIeCeS}H_p@kG_h@qAaJm@}Cu@}CcB}FwB{FyAcDaCmEoDqFkDgEiDkDuCcCkCoBsH}FuCyCgB}BaBiCmCqFuL{YuAyDgAcE{@kEg@oDe@eGMwEWy]MaPMe[HkIZ}JhA}WtDs}@j@qPHqF?wHIqJ_@}Kk@oJeC_\\{BmZgH}~@eOapBgb@_vFa_@s_FuFgu@_Ck[gBiZyEq{@aFy}@iHarA_BkW}BkWaMipAaMgpAaE_b@iDa`@wAwRyA_U_BgZkAiZgAw`@e@c[UaZC{_@Tu_@h@y]lAec@|A_c@p@wMhAyL|A{KpBeK~BkJpDgLjDuInBeEzD{HnL_UbGkLtDwHhC{F~BmGnCeIvBwH|AuGnAeGvAeIfB_Nn@wGd@aHj@eJpB_]`Fcz@rMayBzEuv@`AePjBq\\vCgf@dB{YbAuPlJy}A~Emy@fGmcAfKkdBpa@e}GdUwuD~F}`AzB{[~BeZzNsjB~G{{@~Fiu@|OsqBzAcRpBoWlDwc@fK{qAxVs_DvbAufMrK_tAdVqzCzl@uqHp_@oxEvDud@fJojAzAuSnBsTbI{bAdN_dBfO_jBnWgbDfl@sjHxIyfAjFmo@jc@}nFfb@agFnKiqAr]}gElb@mgF~M_aBtA_OzA_NxDuYfNebA~RmwAp]{eCfFw^rEw]hCwV`BiQdDq]`Jq`AfKqgA``@kbEnv@gfIfVygC~U{eC`CaSbEg[xQosA~`@mwCzG}f@hJuq@bVifBfS{yAvDyXhHmh@lVygBze@slDvr@}eFfiB}wMfa@awCnGae@fBeMtAeI|CiOzGi\\|AiK`AqHhBiShDya@`BkMhDoVzCcUf@}Er@eJn@kNP_K@{KUeN[yHa@sGkAeMiB_N}AuIaC{KoFeViHuZcFcTyCyM}@kEaEsRsCyMqBsIgEmRaEuQ_Pus@yGgZy@cEEi@@OQ_Ai@}C_@wCc@cEq@aGCYFa@NSTI~@ApACdAG",
    "yvbkExu~mTr@AlAOJOFI@E?EeCCi@@k@G{BQ}@EQC[WGa@Ko@YgAe@{Aw@mBoC_HuBiG{@{CAAMAUeAu@eDm@qC}@}DcD{NwOyr@aLsg@wO}r@_H}ZgPmt@_CmKeA}E_A_FQkAQeA]{Cc@sDU_Cc@wEm@{JSmFIwCKuIAmR@ie@BycBA_ICqED}EJiFFgBVeF~@uLd@eGXiFLeG?oYAi\\?ad@DcT?iD@iD?_E?kUK_PQqNWiQ]aYIiK?yJJwNLiHXuLh@kSN}IH{ID{JBc[BmWFop@BuN?uEFaFFoCRsDZ_ETuB\\gCf@yCfGkZvAmHXeBd@oDd@sEJ_BLcCL{CDkFHwg@LwcAHis@BiXJkp@Dke@@oNAeBI}EMkDYoFWcDa@{DeB}PaAuJsAoMkEcc@mA{LYwDSeEQeHCkIIoX?cAI]A{ECsHCqEGqQMyZOi_@GmGOkJa@aTk@eZQeJMsMGiH?kA@cPB{KD_SFkZBiLCmIKcPEoGAsPEmLGqHE_NGuMU{OGmOIq\\Ga`@EqXCcKA{CEaEEqGCeMCuREoPAyNBmIFiGB_HJom@Hqk@@yKBsFFkED_BHaC^{O|@ab@JmHPiHTaLLyM@iIAaECsEMmKKoESqDWaDe@sEk@aF]wDUoDGiBEiC@mEJqETsDv@kIZkDVcETqFFwBFkF@yEFuQDsQ@aBAkCBaE@eCAq@?uBBuDDaODqKHsWBkNCgMDu@?uB?uEAgJAwMCaFLyHPkE`@_IlAkUNgE?yDKuEOaC}@cIUcCIqAKaCCgG?uGAwFEaBQgDw@yHg@wEE]LS@CBmBHuBLgBn@uGh@eFJ]PULCf@EzHD|CATKd@AvC?nEA~EC|D?pBAzCG|C@tDEvGChBAVLdEB^??rECtJ?bCBvHB`I?bJAp@"
  ],
  "status": "TRIP_PLAN_SUCCESS_WITH_STOPS",
  "stops": [
    {
      "addr": "W Panoche Rd, Firebaugh",
      "arrival_soe": 0.123,
      "charge_dur_s": 1180.79,
      "charge_kWh": 52.013,
      "id": "2768",
      "location": {
        "lat": 36.639154,
        "lng": -120.625877
      },
      "name": "Firebaugh, CA",
      "trt_id": "11676"
    },
    {
      "addr": "Copus Rd, Bakersfield",
      "arrival_soe": 0.108,
      "charge_dur_s": 1351.903,
      "charge_kWh": 55.878,
      "id": "4506",
      "location": {
        "lat": 35.094359,
        "lng": -119.040751
      },
      "name": "Bakersfield, CA – Copus Road (No Amenities)",
      "trt_id": "16818"
    },
    {
      "addr": "Highland Ave, Highland",
      "arrival_soe": 0.112,
      "charge_dur_s": 1506.139,
      "charge_kWh": 58.946,
      "id": "2898",
      "location": {
        "lat": 34.135162,
        "lng": -117.195175
      },
      "name": "Highland, CA",
      "trt_id": "12324"
    },
    {
      "addr": "Frontage Rd, Ehrenberg",
      "arrival_soe": 0.12,
      "charge_dur_s": 960.943,
      "charge_kWh": 46.249,
      "id": "1888",
      "location": {
        "lat": 33.601995,
        "lng": -114.522011
      },
      "name": "Ehrenberg, AZ",
      "trt_id": "5637"
    },
    {
      "addr": "S Watson Rd, Buckeye",
      "arrival_soe": 0.098,
      "charge_dur_s": 300,
      "charge_kWh": 14.564,
      "id": "55",
      "location": {
        "lat": 33.443011,
        "lng": -112.556876
      },
      "name": "Buckeye, AZ",
      "trt_id": "2145"
    }
  ],
  "total_charge_dur_s": 5299.774,
  "total_charge_kWh": 227.65,
  "total_drive_dur_s": 40274.0,
  "total_drive_kWh": 229.461,
  "total_drive_mi": 729.106
}
```
