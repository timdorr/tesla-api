# Option Codes

The `option_codes` field of a vehicle is a comma-delimited set of codes that
represent various options the car was built with. This can include trim options,
battery sizes, color, wheel types, and addon packages.

**As of August 2019, Option Codes cannot be relied on.** Vehicles now
return a generic set of codes related to a Model 3.

| Code   | Title                                                    | Description                                               |
| :----- | :------------------------------------------------------- | :-------------------------------------------------------- |
| MDLS   | Model S                                                  | This vehicle is a Model S                                 |
| MDL3   | Model 3                                                  | This vehicle is a Model 3                                 |
| MDLX   | Model X                                                  | This vehicle is a Model X                                 |
| MDLY   | Model Y                                                  | This vehicle is a Model Y                                 |
| REAP   | Region: Asia Pacific                                     |                                                           |
| REEU   | Region: Europe                                           |                                                           |
| RENA   | Region: North America                                    |                                                           |
| RENC   | Region: Canada                                           |                                                           |
| ACL1   | Ludicrous Mode                                           | Model X                                                   |
| AD02   | NEMA 14-50                                               |                                                           |
| AD04   | European 3-Phase                                         |                                                           |
| AD05   | European 3-Phase, IT                                     |                                                           |
| AD06   | Schuko (1 phase, 230V 13A)                               |                                                           |
| AD07   | Red IEC309 (3 phase, 400V 16A)                           |                                                           |
| AD08   | Blue Charging Adapter                                    |                                                           |
| AD09   | Adapter, Swiss (1 phase, 10A)                            |                                                           |
| AD10   | Adapter, Denmark (1 phase, 13A)                          |                                                           |
| AD11   | Adapter, Italy (1 phase, 13A)                            |                                                           |
| AD15   | Adapter                                                  | J1772                                                     |
| ADPX2  | Type 2 Public Charging Connector                         |                                                           |
| ADX4   | No European 3-Phase                                      |                                                           |
| ADX5   | European 3-Phase, IT                                     |                                                           |
| ADX6   | No - Adapter, Schuko (1 phase, 13A)                      |                                                           |
| ADX7   | No - 3-ph Red IEC309 (3 phase, 16A)                      |                                                           |
| ADX8   | Blue IEC309 (1 phase, 230V 32A)                          |                                                           |
| ADX9   | No - Adapter, Swiss (1 phase, 10A)                       |                                                           |
| AF00   | No HEPA Filter                                           | Standard air filter, no air ionizer                       |
| AF02   | HEPA Filter                                              |                                                           |
| AH00   | No Accessory Hitch                                       |                                                           |
| AP04   | Autopilot 4.0                                            | Model S 02.2023\Model Y from 10May2023                    |
| APB1   | Autopilot with convenience features                      | Model S                                                   |
| APBS   | Autopilot                                                | Model 3 Autopilot                                         |
| APF0   | Autopilot Firmware 2.0 Base                              |                                                           |
| APF1   | Autopilot Firmware 2.0 Enhanced                          |                                                           |
| APF2   | Full Self-Driving Hardware (Activated)                   | Car has active FSD software purchase                      |
| APFB   | Full Self-Driving Hardware                               | Car has FSD hardware, but sofware option is not purchased |
| APH1   | Hardware 1.0                                             |                                                           |
| APH2   | Hardware 2.0                                             |                                                           |
| APH3   | Hardware 2.5                                             |                                                           |
| APH4   | Hardware 3.0                                             |                                                           |
| APPB   | Enhanced Autopilot                                       | Navigate on Autopilot, Auto Lane Change, Autopark, Summon |
| APPF   | Full Self-Driving Capability                             |                                                           |
| AU00   | No Audio Package                                         |                                                           |
| AU01   | Ultra High Fidelity Sound                                |                                                           |
| AU3D   | Sound Studio Package                                     | Reduced Audio Package (M3 standard)                       |
| AU3P   | Sound Studio Package                                     | Premium audio package                                     |
| AUF1   | Premium Speakers Enabled                                 | M3/MY Premium Audio Package (AWD,Perf)                    |
| AUF2   | Premium Speakers Disabled                                | M3/MY Reduced Audio Package (Standard, mid range)         |
| BC00   | Brake Calipers M4.42/44                                  | MS Plaid E5                                               |
| BC0B   | Black Brake Calipers                                     | Model S                                                   |
| BC0R   | Red Brake Calipers                                       | Model S                                                   |
| BC3B   | Black Brake Calipers                                     | Model 3/Y                                                 |
| BC3R   | Black Brake Calipers, Red brake calipers                 | Model 3/Y Performance                                     |
| BC50   | Brakes Performance P2                                    | Model S/X Plaid                                           |
| BCMB   | Black Brake Calipers, Mando Brakes                       |                                                           |
| BCYR   | Performance Brakes                                       |                                                           |
| BG30   | No Badge                                                 | Model 3                                                   |
| BG31   | AWD Badge without underline                              | Model 3/Y                                                 |
| BG32   | Performance AWD Badge                                    | Model 3                                                   |
| BG33   | China Badge                                              | Model 3 for China market                                  |
| BP00   | No Ludicrous                                             |                                                           |
| BP01   | Ludicrous Speed Upgrade                                  |                                                           |
| BP02   | Uncorked Acceleration                                    | Non-Performance                                           |
| BR00   | No Battery Firmware Limit                                |                                                           |
| BR03   | Battery Firmware Limit (60kWh)                           |                                                           |
| BR05   | Battery Firmware Limit (75kWh)                           |                                                           |
| BS00   | Blind Spot Sensor Package                                | No blind spot detectors                                   |
| BS01   | Special Production Flag                                  |                                                           |
| BT00   | 68 kWh (Model Y) 4680 cells                              | Model Y SR (Structural Pack with BFF 0.0 cells)           |
| BT01   | 60kWh BYD 7C "Blade"                                     | Structural Pack with Bladerunner cells                    |
| BT35   | 50 kWh (Model 3/Y) Pre 2021 Panasonic cells              | Model 3 Standard Range                                    |
| BT36   | 62.5 kWh (Model 3/Y) Pre 2021 Panasonic cells            | Model 3 Mid Range                                         |
| BT37   | 75 kWh (Model 3/Y) Pre 2021 Panasonic cells              | 2017-03.2021 LR+P Model 3/Y (Mostly Fremont build)        |
| BT38   | 74 kWh (Model 3/Y) LG cells                              | M3/MY LR/Dual build in China                              |
| BT3D   | 50 kWh (Model 3)                                         | 2019 Model 3 Standard Range                               |
| BT40   | 40 kWh                                                   |                                                           |
| BT41   | 55 kWh 2021 E1 2170L Panasonic Battery Pack              | M3/Y Standard+ 2021 model year                            |
| BT42   | 82 kWh (Model 3/Y) 2021 Panasonic                        | M3P (and latest LR Fremont) 2021 model year               |
| BT43   | 79 kWh (Model 3/Y) 2021 LG NCA                           | M3/Y LR Q4.2021                                           |
| BT60   | 60 kWh                                                   |                                                           |
| BT70   | 70 kWh                                                   |                                                           |
| BT85   | 85 kWh                                                   |                                                           |
| BTF0   | 55 kWh 2020 CATL Prismatic                               | M3 Standard+ China made LFP and Q4.2021 M3 Stdr+ USA      |
| BTF1   | 60 kWh E1 LFP60 CATL Battery Pack                        | M3 Standard+ LFP                                          |
| BTX4   | 90 kWh                                                   |                                                           |
| BTX5   | 75 kWh                                                   | EPA range 237 miles (MX), 259 miles (MS)                  |
| BTX6   | 100 kWh                                                  |                                                           |
| BTX7   | 75 kWh                                                   |                                                           |
| BTX8   | 75 kWh                                                   |                                                           |
| BTX9   | 100 kWh Battery Pack with Weight Reduction               | Model S 2020/05                                           |
| BTXA   | 18650J2 Battery Cell                                     | Model S/X 2020                                            |
| BTXB   | 99kWh 18650 Plaid E5/E6 VIN battery                      | Model S/X 2021 LR/Plaid                                   |
| BY00   |                                                          | Model Y                                                   |
| BY01   | 1 piece cast rear under body legacy                      | Model Y                                                   |
| BY02   | 1 piece cast front under body and rear under body        | Model Y First found on Austin car                         |
| BY03   | Safety Net Body                                          | Model Y First found on Berlin car                         |
| BY04   | 1 piece cast rear under Safety Net Body                  | Model Y Berlin car                                        |
| CC01   | Five Seat Interior                                       |                                                           |
| CC02   | Six Seat Interior                                        |                                                           |
| CC03   | Seven Seat Interior                                      |                                                           |
| CC04   | Seven Seat Interior                                      |                                                           |
| CC12   | Six Seat Interior with Center Console                    |                                                           |
| CDM0   | No CHAdeMO Charging Adaptor                              |                                                           |
| CF00   | 72amp High Power Charger                                 |                                                           |
| CF01   | 48amp charger                                            |                                                           |
| CH00   | Standard Charger (40 Amp)                                |                                                           |
| CH01   | Dual Chargers (80 Amp)                                   | Twin 10kW charge config                                   |
| CH04   | 72 Amp Charger Gen3                                      | Model S/X                                                 |
| CH05   | 32/48 Amp Charger                                        | Model S/X - 48A, M3 - 32A                                 |
| CH06   | 48 Amp Charger                                           | Model 3 CN                                                |
| CH07   | 48 Amp Charger                                           | Model 3                                                   |
| CH09   | Tesla Standard Charging System 72a (Gen3)                | Model S/X 2019-2020 EU                                    |
| CH11   | Single phase 48 Amperage Combo 1                         | Chargers Single Phase                                     |
| CH12   | 48 Amperage Combo 1 Gen 3.5 Charger                      | Chargers Single Phase (MS/MX 2020-2021)                   |
| CH14   | 32 Amp Charger Hardware (RENA) with Busbar               | NA spec M3 2022 SR+                                       |
| CH15   | 48 Amp Charger Hardware (REEU/REAP) with Busbar          | EU spec                                                   |
| CH16   | 48 Amp Charger Hardware (RENA) with Busbar               | NA spec                                                   |
| CH17   | 48 Amp 1PH&3PH,P2                                        | NA/EU spec Model S/X Palladium                            |
| COL0   | Signature                                                |                                                           |
| COL1   | Solid                                                    |                                                           |
| COL2   | Metallic                                                 |                                                           |
| COL3   | Tesla Multi-Coat                                         |                                                           |
| COAT   | Country: Austria                                         |                                                           |
| COAU   | Country: Australia                                       |                                                           |
| COBE   | Country: Belgium                                         |                                                           |
| COCA   | Country: Canada                                          |                                                           |
| COCH   | Country: Switzerland                                     |                                                           |
| COCN   | Country: China                                           |                                                           |
| CODE   | Country: Germany                                         |                                                           |
| CODK   | Country: Denmark                                         |                                                           |
| COES   | Country: Spain                                           |                                                           |
| COFI   | Country: Finland                                         |                                                           |
| COFR   | Country: France                                          |                                                           |
| COGB   | Country: Great Britain                                   |                                                           |
| COHR   | Country: Croatia                                         |                                                           |
| COIE   | Country: Ireland                                         |                                                           |
| COIT   | Country: Italy                                           |                                                           |
| COIL   | Country: Israel                                          |                                                           |
| COJP   | Country: Japan                                           |                                                           |
| COKR   | Country: South Korea                                     |                                                           |
| COLU   | Country: Luxembourg                                      |                                                           |
| CONL   | Country: Netherlands                                     |                                                           |
| CONO   | Country: Norway                                          |                                                           |
| CONZ   | Country: New Zealand                                     |                                                           |
| COPT   | Country: Portugal                                        |                                                           |
| COSE   | Country: Sweden                                          |                                                           |
| COSG   | Country: Singapore                                       |                                                           |
| COTR   | Country: Turkey                                          |                                                           |
| COUS   | Country: United States                                   |                                                           |
| CP00   | NA Chargeport (TPC)                                      | MX/MS 2021                                                |
| CP01   | Charge port Gen? CCS size                                | MS/MX 2022                                                |
| CP03   | CCS2 Integrated Chargeport                               | MS/MX 2022                                                |
| CPF0   | Standard Connectivity                                    | 1 month                                                   |
| CPF1   | Premium Connectivity                                     | 1 year                                                    |
| CPW1   | 20" Performance Wheels                                   |                                                           |
| CR01   | Sanden Import Compressor                                 | MY 2023 China                                             |
| CR02   | Denso Import Compressor                                  | MY 2023 China                                             |
| CW00   | No Weather Package                                       | No Cold Weather Package                                   |
| CW02   | Weather Package                                          | Subzero Weather Package                                   |
| DA00   | No Autopilot                                             |                                                           |
| DA01   | Active Safety (ACC,LDW,SA)                               | Drivers Assistance Package                                |
| DA02   | Autopilot Convenience Features                           |                                                           |
| DCF0   | Front Console NO Drop-In Front Console                   |                                                           |
| DCF2   | Front Console Inductive Phone Charger                    |                                                           |
| DRLH   | Left Hand Drive                                          |                                                           |
| DRRH   | Right Hand Drive                                         |                                                           |
| DSH5   | Dashboard                                                | PUR Dashboard Pad                                         |
| DSH7   | Alcantara Dashboard Accents                              |                                                           |
| DSHG   | Dash with Graphite trim                                  |                                                           |
| DU00   | Drive Unit - IR                                          |                                                           |
| DU01   | Drive Unit - Infineon                                    |                                                           |
| DU02   | Drive Unit - Non-performance front drive unit (raven)    | MS 19apr2019-2020                                         |
| DV2W   | Rear-Wheel Drive                                         |                                                           |
| DV4W   | All-Wheel Drive                                          |                                                           |
| EUSB   | Safety EU Black                                          |                                                           |
| FBBB   | Front Brake Brembo Black                                 |                                                           |
| FBBR   | Front Brake Brembo Red                                   | Brakes (MS/MX 2021)                                       |
| FC01   | Front Console Inductive Phone Charger                    | Model 3                                                   |
| FC02   | Front Console Front Console (Premium)                    | Model 3/Y 2021                                            |
| FCH2   | Front controller hard v2 that supports both non-FSD +FSD | Model 3/Y late 2021                                       |
| FC3P   | Front Console Front Console (Premium)                    | Model 3                                                   |
| FD00   | Low Current IGBT IM130 Drive Unit                        | Front drive unit M3/MY                                    |
| FD01   | Low Current IGBT IM130 Drive Unit, CN/DE                 | Model 3/Y 2021 (China/Germany)                            |
| FD02   | P2 Front Drive Unit                                      | Model S/X 2021 LR                                         |
| FD03   | P2 Sleeved Front Drive Unit                              | Model S/X 2021 P                                          |
| FDU2   | Raven Front Drive Unit                                   | Model S/X 2020-2021                                       |
| FG3B   | Fog Lamp Cover (No Fog lamps)                            | Model 3 Standard+                                         |
| FG00   | No Exterior Lighting Package                             |                                                           |
| FG01   | Fog Lamps                                                | Exterior Lighting Package                                 |
| FG02   | Fog Lamps                                                | Fog Lamps                                                 |
| FG31   | Fog Lamps                                                | Model Premium Fog Lights                                  |
| FGF0   | Fog Lamps Disabled                                       | Model 3 Standard+                                         |
| FGF1   | Fog Lamps Enabled                                        | Model 3/Y with Premium Interior                           |
| FM3B   | No Performance Package                                   | Model 3/Y                                                 |
| FM3S   | Semi de-rated firmware                                   | Model 3 Standard+                                         |
| FM3P   | Performance Package                                      | Model 3 Performance Firmware                              |
| FM3U   | Acceleration Boost                                       | Model 3 Long Range All-Wheel Drive                        |
| FMP6   | Performance Firmware                                     |                                                           |
| FR01   | Base Front Row                                           |                                                           |
| FR02   | Ventilated Front Seats                                   |                                                           |
| FR03   | FR03                                                     |                                                           |
| FR04   | Front Row Seat                                           | MS 2018-2020                                              |
| FR05   | Front Row Seat                                           | Ventilated Front Seats (MS/MX 10.2020+)                   |
| GLCN   | Assembly                                                 | Final Assembly China Giga3 Model 3                        |
| GLFR   | Assembly                                                 | Final Assembly Fremont                                    |
| GLTL   | Assembly                                                 | Final Assembly Tilburg                                    |
| HC00   | No Home Charging installation                            |                                                           |
| HC01   | Home Charging Installation                               |                                                           |
| HM30   | Teck Package - No Homelink                               | No Homelink Option                                        |
| HM31   | Teck Package - Homelink                                  | Homelink                                                  |
| HL00   | Head Lamp                                                | Model S/X 2021                                            |
| HL01   | Matrix Head Lamp                                         | Model S/X 2022.03                                         |
| HL31   | Head Lamp                                                | Model 3 Uplevel Headlamps                                 |
| HL32   | Matrix Headlights 2021                                   | Model 3/Y 2021 Uplevel Headlamps                          |
| HP00   | No HPWC Ordered                                          |                                                           |
| HP01   | HPWC Ordered                                             |                                                           |
| HP30   | No heat pump assembly                                    | Model 3 Standard+ China made                              |
| HP31   | Heat pump assembly                                       | Model 3                                                   |
| I36M   | Rear Drive Unit Inverter 600A Mosfet                     | Model 3 DM/LR                                             |
| I38M   | Rear Drive Unit Inverter 800A Mosfet                     | Model 3 Std+, Performance                                 |
| IBB0   | All Black Interior                                       | Model 3 Old Door Trim                                     |
| IBB1   | All Black Interior                                       | Model 3 New Door Trim (Since Q1 2021)                     |
| IC00   | Black Colorway                                           | Model S/X (Since Q2 2021)                                 |
| IC01   | White Colorway Interior                                  | Model S/X (Since Q4 2021)                                 |
| IC02   | Cream Colorway Interior                                  | Model S/X (Since Q2 2021)                                 |
| ID00   | Ebony Wood Decor                                         | Model S/X (Since Q2 2021)                                 |
| ID02   | All Black Premium Interior with Carbon Fiber Décor?      | Model S/X (Since Q4 2021)                                 |
| ID03   |                                                          | Model S/X (Since Q2 2021)                                 |
| ID3A   | Interior White Aluminum                                  | Model 3/Y                                                 |
| ID3W   | Interior Wood Decor                                      | Model 3/Y                                                 |
| IDBA   | Dark Ash Wood Decor                                      |                                                           |
| IDBO   | Figured Ash Wood Decor Burl Open Pore décor              |                                                           |
| IDCF   | Carbon Fiber Decor                                       |                                                           |
| IDHG   | IP Décor Horizontal Gloss                                |                                                           |
| IDHM   | Matte Obeche Wood Decor                                  |                                                           |
| IDOK   | Oak Decor                                                |                                                           |
| IDOM   | Matte Obeche Wood Decor                                  |                                                           |
| IDOG   | Gloss Obeche Wood Decor                                  |                                                           |
| IDLW   | Lacewood Decor                                           |                                                           |
| IDPB   | Piano Black Decor                                        |                                                           |
| IN3BB  | All Black Partial Premium Interior                       |                                                           |
| IBW0   | Black and White Interior                                 | Model 3 Old Door Trim                                     |
| IBW1   | Black and White Interior                                 | Model 3 New Door Trim (Since Q1 2021)                     |
| IN3BW  | Black and White Interior                                 | Model 3 Interior                                          |
| IN3PB  | All Black Premium Interior                               | Model 3 Interior                                          |
| IN3PW  | All White Premium Interior                               | Model 3 Interior                                          |
| IBE00  | Wood Décor & Black Interior                              | Model S Refresh 2021                                      |
| ICW00  | Wood Décor & Cream Interior                              | Model S Refresh 2021                                      |
| IWW00  | Wood Décor & Black and White Interior                    | Model S Refresh 2021                                      |
| IBC00  | Carbon Fiber Décor & Black Interior                      | Model S Refresh 2021                                      |
| IWC00  | Carbon Fiber Décor & Black and White Interior            | Model S Refresh 2021                                      |
| ICC00  | Carbon Fiber Décor & Cream Interior                      | Model S Refresh 2021                                      |
| INBBW  | White Interior                                           |                                                           |
| INB3C  | Premium beige interior with oak wood finishes            | Model X                                                   |
| INBC3W | Premium black and white interior with Carbon Fiber decor | Model X                                                   |
| INPB0  | All Black Interior with Wood in door panel               | Model Y                                                   |
| INPB1  | All Black Interior                                       | Model Y                                                   |
| INPW0  | Black and White Interior with Wood in door panel         | Model Y                                                   |
| INPW1  | Black and White Interior                                 | Model Y                                                   |
| INBFP  | Classic Black Interior                                   |                                                           |
| INBPP  | Black Interior                                           |                                                           |
| INBPW  | White Seats Interior                                     |                                                           |
| INBTB  | Multi-Pattern Black Interior                             |                                                           |
| INFBP  | Black Premium Interior                                   |                                                           |
| INLPC  | Cream Interior                                           |                                                           |
| INLPP  | Black / Light Headliner Interior                         |                                                           |
| INWPT  | Tan Interior                                             |                                                           |
| INYPB  | All Black Premium Interior                               |                                                           |
| INYPW  | Black and White Premium Interior                         |                                                           |
| IL31   | Interior Ambient Lighting Interior                       | Model 3/Y with Premium Interior                           |
| ILF0   | Ambient Lighting Disabled                                | Model 3 Standard+                                         |
| ILF1   | Ambient Lighting Enabled                                 | Model 3 with Premium Interior                             |
| IPB0   | Black Interior                                           | Model 3 Interior (Left Hand Drive)                        |
| IPB1   | Black Interior                                           | Model 3 Interior (Right Hand Drive)                       |
| IPB2   | Black Interior                                           | Model 3 Interior (Left Hand Drive)                        |
| IPB3   | Black Interior                                           | Model 3 Interior (Right Hand Drive)                       |
| IPW0   | White Interior                                           | Model 3 Interior (Left Hand Drive)                        |
| IPW1   | White Interior                                           | Model 3 Interior (Right Hand Drive)                       |
| IPW2   | White Interior                                           | Model 3 Interior (Left Hand Drive)                        |
| IPW3   | White Interior                                           | Model 3 Interior (Right Hand Drive)                       |
| IVBPP  | All Black Interior                                       |                                                           |
| IVBSW  | Ultra White Interior                                     |                                                           |
| IVBTB  | All Black Interior                                       |                                                           |
| IVLPC  | Vegan Cream Interior                                     |                                                           |
| IX00   | No Extended Nappa Leather Trim                           |                                                           |
| IX01   | Extended Nappa Leather Trim                              |                                                           |
| LLP1   | License Plate Liftgate Type NA Liftgate                  |                                                           |
| LLP2   | License Plate Liftgate Type EU Liftgate                  |                                                           |
| LP00   | Lighting Package                                         | No Lighting Package                                       |
| LP01   | Lighting Package                                         | Premium Interior Lighting                                 |
| LS01   | Mfg Line Shanghai - Phase 1                              | Latest 2021 Model 3/Y Perf                                |
| LS02   | Mfg Line Shanghai - Phase 2.2                            | Latest 2021 Model 3/Y DM                                  |
| LT00   | Vegan interior                                           |                                                           |
| LT01   | Standard interior                                        |                                                           |
| LT03   | interior                                                 | Common Lower Trim                                         |
| LT1B   | Lower Trim                                               | Lower Trim                                                |
| LT3W   | Lower Trim                                               |                                                           |
| LT4B   | LT4B                                                     |                                                           |
| LT4C   | LT4C                                                     |                                                           |
| LT4W   | LT4W                                                     |                                                           |
| LT5C   | LT5C                                                     |                                                           |
| LT5P   | Black PUR Premium Lower Trim w/ Black IP                 |                                                           |
| LT5W   | Lower Trim Black PUR with White interior                 | 2020 Model S                                              |
| LT6P   | Black PUR Lower Trim with Performance Stitching          |                                                           |
| LT6W   | White Base Lower Trim                                    |                                                           |
| LTBC   | Lower Trim PUR Cream with Black Carpets                  |                                                           |
| LTPB   | Lower Trim PUR Black                                     |                                                           |
| LTPW   | Lower Trim PUR White                                     |                                                           |
| LTSB   | Lower Trim Standard Black                                | Model 3 Standard+                                         |
| LVB0   | 12V Acid Low voltage battery                             |                                                           |
| LVB1   | 15V Li-Ion Low voltage battery                           |                                                           |
| LVB2   | CATL 16V Battery                                         | Model 3/Y (GigaBerlin/China)                              |
| M301   | Generation 1 of 2022                                     | AMD Ryzen?                                                |
| ME01   | Memory Seats                                             |                                                           |
| ME02   | Seat Memory                                              | Seat Memory LHD Driver                                    |
| MI00   | 1st Generation Production                                | Model 3 (2019), Model S (Nosecone), MX(2016), MY(2021)    |
| MI01   | 2nd Generation Production                                | Model 3 (2020), Model S (2016 Facelit), Model X (2017)    |
| MI02   | 3rd Generation Production                                | Model 3 (2021), Model X (2017)                            |
| MI03   | 4th Generation Production                                | Model S (2018), Model X (2018)                            |
| MI04   | 5th Generation Production                                | Model S (2019/2020), Model X (2020)                       |
| MI07   | 8th Generation Production                                | Model S (2021), Model X (2021)                            |
| MR30   | Tech Package - Mirror -YES                               | Base Mirrors (MIC Model 3 CN)                             |
| MR31   | Tech Package - Mirror -YES                               | Uplevel Mirrors                                           |
| MS03   | Model S                                                  | This vehicle is a Model S                                 |
| MS04   | Model S                                                  | This vehicle is a Model S                                 |
| MS05   | Model S                                                  | This vehicle is a Model S                                 |
| MS06   | Model S                                                  | Plaid 2021                                                |
| MT300  | Model 3 Standard Range Rear-Wheel Drive                  |                                                           |
| MT301  | Model 3 Standard Range Plus Rear-Wheel Drive             |                                                           |
| MT302  | Model 3 Long Range Rear-Wheel Drive                      |                                                           |
| MT303  | Model 3 Long Range All-Wheel Drive                       |                                                           |
| MT304  | Model 3 Long Range All-Wheel Drive Performance           |                                                           |
| MT305  | Model 3 Mid Range Rear-Wheel Drive                       |                                                           |
| MT307  | Model 3 Mid Range Rear-Wheel Drive                       |                                                           |
| MT308  | Model 3 Standard Range Plus Rear-Wheel Drive             | 2019 Refresh                                              |
| MT309  | Model 3 Standard Range Plus Rear-Wheel Drive             | 2019 Refresh                                              |
| MT310  | Model 3 Long Range All-Wheel Drive                       |                                                           |
| MT311  | Model 3 Long Range All-Wheel Drive Performance           |                                                           |
| MT314  | Model 3 Standard Range Plus Rear-Wheel Drive             | 2021 Refresh                                              |
| MT315  | Model 3 Long Range All-Wheel Drive                       | 2021 Refresh                                              |
| MT316  | Model 3 Long Range All-Wheel Drive                       | 2021 Refresh                                              |
| MT317  | Model 3 Long Range All-Wheel Drive Performance           | 2021 Refresh                                              |
| MT320  | Model 3 Standard Range Plus Rear-Wheel Drive             | 2021 Refresh                                              |
| MT322  | Model 3 Standard Range Plus Rear-Wheel Drive             | 2021 Refresh                                              |
| MT321  | Model 3 Long Range All-Wheel Drive                       | 2021 Refresh                                              |
| MT323  | Model 3 Long Range All-Wheel Drive                       | 2021 Refresh                                              |
| MT324  | Model 3 Long Range All-Wheel Drive                       | 2021 Refresh                                              |
| MT325  | Model 3 Long Range All-Wheel Drive Performance           | 2022 Refresh                                              |
| MT328  | Model 3 Long Range All-Wheel Drive                       | 2022 Refresh                                              |
| MT331  | Model 3 Standard Range Plus                              | 2020 Refresh (BT35 Battery)                               |
| MT332  | Model 3 Standard Range Plus                              | 2020 Refresh (BT35 Battery)                               |
| MT333  | Model 3 Standard Range Plus                              | 2020 Refresh (BT34 Battery)                               |
| MT334  | Model 3 Long Range Rear-Wheel Drive                      | 2020 Refresh (BT38 Battery)                               |
| MT336  | Model 3 Standard Range Plus Rear-Wheel Drive             | 2020 Refresh                                              |
| MT337  | Model 3 Standard Range Plus Rear-Wheel Drive             | 2021 Refresh                                              |
| MT340  | Model 3 Long Range All-Wheel Drive Performance           | 2022 Refresh                                              |
| MTS01  | Model S Standard Range                                   |                                                           |
| MTS17  | Model S Standard Range                                   | 2023 Refresh                                              |
| MTS03  | Model S Long Range                                       |                                                           |
| MTS04  | Model S Performance                                      |                                                           |
| MTS05  | Model S Long Range                                       |                                                           |
| MTS06  | Model S Performance                                      |                                                           |
| MTS07  | Model S Long Range Plus                                  |                                                           |
| MTS08  | Model S Performance                                      |                                                           |
| MTS09  | Model S Plaid+                                           | 2021 Refresh                                              |
| MTS10  | Model S Long Range                                       | 2021 Refresh                                              |
| MTS11  | Model S Plaid                                            | 2021 Refresh                                              |
| MTS12  | Model S Plaid                                            | 2022 Refresh                                              |
| MTS13  | Model S Dual Motor All-Wheel Drive                       | 2022 Refresh                                              |
| MTS14  | Model S Plaid Tri Motor All-Wheel Drive                  | 2022 Refresh                                              |
| MTX01  | Model X Standard Range                                   |                                                           |
| MTX17  | Model X Standard Range                                   | 2023 Refresh                                              |
| MTX03  | Model X Long Range                                       |                                                           |
| MTX04  | Model X Performance                                      |                                                           |
| MTX05  | Model X Long Range Plus                                  |                                                           |
| MTX06  | Model X Performance                                      |                                                           |
| MTX07  | Model X Long Range Plus                                  |                                                           |
| MTX08  | Model X Performance                                      |                                                           |
| MTX09  | Model X Plaid+                                           | 2021 Refresh                                              |
| MTX10  | Model X Long Range                                       | 2021 Refresh                                              |
| MTX11  | Model X Plaid                                            | 2021 Refresh                                              |
| MTX12  | Model X Plaid                                            | 2021 Refresh                                              |
| MTX13  | Model X Plaid                                            | 2021 Refresh                                              |
| MTX14  | Model X Plaid Tri Motor All-Wheel Drive                  | 2022 Refresh                                              |
| MTY01  | Model Y Standard Range Rear-Wheel Drive                  |                                                           |
| MTY02  | Model Y Long Range Rear-Wheel Drive                      |                                                           |
| MTY03  | Model Y Long Range All-Wheel Drive                       |                                                           |
| MTY04  | Model Y Long Range All-Wheel Drive Performance           |                                                           |
| MTY05  | Model Y Long Range All-Wheel Drive Performance           |                                                           |
| MTY06  | Model Y Long Range All-Wheel Drive                       |                                                           |
| MTY07  | Model Y Long Range All-Wheel Drive                       |                                                           |
| MTY09  | Model Y Long Range All-Wheel Drive                       |                                                           |
| MTY11  | Model Y Long Range All-Wheel Drive                       |                                                           |
| MTY12  | Model Y Long Range All-Wheel Drive Performance           |                                                           |
| MTY13  | Model Y Long Range Standard Range Rear-Wheel Drive       | 2023 No USS?                                              |
| MTY14  | Model Y Long Range All-Wheel Drive                       |                                                           |
| MY00   |                                                          | Model Y Berlin                                            |
| MY01   |                                                          | Model Y Austin?                                           |
| MY02   |                                                          | Model Y Berlin?                                           |
| MX06   |                                                          | Model X 2021+                                             |
| OSSB   | Safety CA Black                                          |                                                           |
| OSSW   | Safety CA White                                          |                                                           |
| P3WS   | Pedestrian warning speaker                               |                                                           |
| P85D   | P85D                                                     |                                                           |
| PA00   | No Paint Armor                                           |                                                           |
| PBCW   | Solid White Color                                        |                                                           |
| PBSB   | Solid Black Color                                        |                                                           |
| PBT85  | Performance 85kWh                                        |                                                           |
| PC30   | No Performance Chassis                                   |                                                           |
| PC31   | Performance Chassis                                      |                                                           |
| PF00   | No Performance Legacy Package                            |                                                           |
| PF01   | Performance Legacy Package                               |                                                           |
| PI00   | No Premium Interior                                      |                                                           |
| PI01   | Premium Upgrades Package                                 |                                                           |
| PK00   | Parking Sensors                                          | No Parking Sensors                                        |
| PMAB   | Anza Brown Metallic Color                                |                                                           |
| PMBL   | Obsidian Black Multi-Coat Color                          |                                                           |
| PMMB   | Monterey Blue Metallic Color                             |                                                           |
| PMNG   | Midnight Silver Metallic Color                           |                                                           |
| PMSG   | Green Metallic Color                                     |                                                           |
| PMSS   | San Simeon Silver Metallic Color                         |                                                           |
| PMTG   | Dolphin Grey Metallic Color                              |                                                           |
| PN00   | Quicksilver Color                                        |                                                           |
| PN01   | Stealth Grey Color                                       |                                                           |
| PPMR   | Red Multi-Coat Color                                     |                                                           |
| PP01   | Pedestrian Protection Ped Pro R127 Compliant             | Model S 2020+ Eu                                          |
| PP02   | Pedestrian Protection Ped Pro R127 Compliant             | Model 3 2021 Eu                                           |
| PPSB   | Deep Blue Metallic Color                                 |                                                           |
| PPSR   | Signature Red Color                                      |                                                           |
| PPSW   | Pearl White Multi-Coat Color                             |                                                           |
| PPTI   | Titanium Metallic Color                                  |                                                           |
| PL30   | No Aluminum Pedal                                        | Model 3/Y                                                 |
| PL31   | Performance Aluminum Pedals                              | Model 3/Y                                                 |
| PR00   | Midnight Cherry Red Color                                |                                                           |
| PR01   | Ultra Red Color                                          |                                                           |
| PRM30  | Partial Premium Interior                                 |                                                           |
| PRM31  | Premium Interior                                         |                                                           |
| PRM3S  | Standard Interior                                        |                                                           |
| PRMY1  | Premium Interior                                         |                                                           |
| PS00   | No Parcel Shelf                                          |                                                           |
| PS01   | Parcel Shelf                                             |                                                           |
| PT01   | Trunk Power trunk                                        | Model 3                                                   |
| PT00   | Standard trunk                                           |                                                           |
| PX00   | No Performance Plus Package                              |                                                           |
| PX01   | Performance Plus                                         |                                                           |
| PX4D   | 90 kWh Performance                                       |                                                           |
| PX6D   | Zero to 60 in 2.5 sec                                    |                                                           |
| PW01   | Pedestrian warning speaker                               | Superhorn                                                 |
| PWS0   |                                                          | Model S 10.2020                                           |
| QLBS   | Black Premium Interior                                   |                                                           |
| QLFC   | Cream Premium Interior                                   |                                                           |
| QLFP   | Black Premium Interior                                   |                                                           |
| QLFW   | White Premium Interior                                   |                                                           |
| QLPW   | White Premium Interior                                   |                                                           |
| QLWS   | White Premium Interior                                   |                                                           |
| QNET   | Tan NextGen                                              |                                                           |
| QPBT   | Black Textile Interior                                   |                                                           |
| QPMP   | Black seats                                              |                                                           |
| QTBS   | Black Premium Interior                                   |                                                           |
| QTBW   | White Premium Seats                                      |                                                           |
| QTFC   | Cream Premium Interior                                   |                                                           |
| QTFP   | Black Premium Seats                                      |                                                           |
| QTFW   | White Premium Interior                                   |                                                           |
| QTPB   | Black Leather Tesla Premium Seats                        |                                                           |
| QTPC   | Cream Premium Seats                                      |                                                           |
| QTPP   | Black Premium Seats                                      |                                                           |
| QTPT   | Tan Premium Seats                                        |                                                           |
| QTTB   | Multi-Pattern Black Seats                                |                                                           |
| QTWS   | White Premium Interior                                   |                                                           |
| QVBM   | Multi-Pattern Black Seats                                |                                                           |
| QVPC   | Vegan Cream Seats                                        |                                                           |
| QVPP   | Vegan Cream Seats                                        |                                                           |
| QVSW   | White Tesla Seats                                        |                                                           |
| QXMB   | Black Leather Seat                                       |                                                           |
| RA00   | No Radar Module Sensor, 7 Pin Perpendicular              | Model 3/Y/S/X                                             |
| RA01   | Radar Module Sensor, 7 Pin Perpendicular                 | Model 3/Y                                                 |
| RA02   | HD Radar Module Sensor, Phoenix                          | Model S/X 02.2023                                         |
| RBMB   | Rear Brake Mando Black                                   | Model X                                                   |
| RBMR   | Rear Brake Mando Red                                     | Model S                                                   |
| RCX0   | No Rear Console                                          |                                                           |
| RCX1   | Rear Console                                             |                                                           |
| RD01   | Low Current MOSFET PM216 Rear Drive Unit (600A)          | Model 3 LR/DM (Fremont)                                   |
| RD02   | High Current MOSFET PM216 Rear Drive Unit (800A)         | Model 3 Std+, Perf                                        |
| RD03   | Rear Drive Unit LR                                       | Model S/X 2021 (Rear drive unit)                          |
| RD04   | Rear Drive Unit Plaid                                    | Model S/X 2021 (Rear drive unit)                          |
| RD05   | Low Current MOSFET PM228 Rear Drive Unit                 | Model 3/Y LR/DM                                           |
| RD06   | High Current MOSFET PM228 Rear Drive Unit                | Model 3/Y 2022 (Perf version)                             |
| RD07   | 4DU Rear Drive Unit                                      | Model 3/Y 2023                                            |
| RDU2   | Rear large drive unit with elec. oil pump(stator <5kg)   | Model S/X 2020 (Perf version)                             |
| RDU3   | Rear small drive unit                                    | Model S/X 2015-2017+- (DM version)                        |
| RDU4   | Rear small drive unit with elec. oil pump(stator <5kg)   | Model S/X 2020 (Plus version)                             |
| RF3G   | Glass Roof                                               | Model 3/Y                                                 |
| RFBK   | Black Roof                                               | Model S                                                   |
| RFBC   | Body Color Roof                                          | Model S                                                   |
| RFFG   | Glass Roof                                               | Model S 2017 Production Refresh                           |
| RFFR   | Fixed Glass Roof (roof rack compatible)                  | Model S 2020                                              |
| RFPO   | All Glass Panoramic Roof                                 | Model S 2015 Production Refresh                           |
| RFP2   | Sunroof                                                  | Model S 2016 Production Refresh                           |
| RFPX   | Glass Roof                                               | Model X                                                   |
| RNG0   | Standard Battery Range                                   | Model 3 Standard+                                         |
| RL00   | Rear tail lights                                         | Model S/X 2021                                            |
| RL01   | Rear tail lights (Larger for CCS)                        | Model S/X 2022.March 473k+-                               |
| RL31   | Rear lights (EU)                                         | Model 3 EU                                                |
| RL32   | Rear lights (Global)                                     | Model 3/Y (AWD)                                           |
| RS3H   | Second Row Seat Rear Seats (Heated)                      | Model 3/Y with Premium Interior                           |
| RSF0   | Rear Heated Seats Disabled                               | Model 3/Y without Premium Interior                        |
| RSF1   | Rear Heated Seats                                        | Model 3/Y with Premium Interior                           |
| RU00   | No Range Upgrade                                         |                                                           |
| S01B   | Black Textile Seats                                      |                                                           |
| S02B   | Seat                                                     | BLK Leather                                               |
| S02P   | S02P                                                     |                                                           |
| S02T   | Seat                                                     | Tan Leather                                               |
| S02W   | White Seats                                              |                                                           |
| S07W   | White Seats                                              |                                                           |
| S25B   |                                                          | Model S 2015                                              |
| S31B   | S31B                                                     |                                                           |
| S32C   | S32C                                                     |                                                           |
| S32P   | Black PUR Seats                                          | Model S 2019                                              |
| S32W   | S32W                                                     |                                                           |
| S3PB   | Seat Black PUR Premium Seats                             |                                                           |
| S3PW   | Seat White PUR Premium Seats                             |                                                           |
| S42C   | Seat Cream Plenum Seats                                  |                                                           |
| S42P   | Seat Black Plenum Seats                                  |                                                           |
| S42W   | Seat White Plenum Seats                                  |                                                           |
| SA3P   | Seat Adjustment - Power                                  | Model 3/Y                                                 |
| SC00   | No access to Supercharger Network                        |                                                           |
| SC01   | Unlimited Free Supercharging Enabled                     | Transfers to the next owner via private sale              |
| SC04   | Pay Per Use Supercharging                                |                                                           |
| SC05   | Unlimited Free Supercharging Currently Enabled           | Not transferable to the next owner                        |
| SC06   | Time Bound Unlimited Free Supercharging                  |                                                           |
| SG01   | Steering Gear Single Chip                                | Model 3/Y CN MIC                                          |
| SG02   | Steering Gear Dual Chip                                  | Model 3/Y CN MIC (2023)                                   |
| SLR0   | No Rear Spoiler                                          |                                                           |
| SLR1   | Carbon Fibre Spoiler                                     |                                                           |
| SP00   | No Security Package                                      |                                                           |
| SP01   | Security Package                                         |                                                           |
| SPT31  | Performance Upgrade                                      | Model 3                                                   |
| SPTY1  | Performance Upgrade                                      | Model Y                                                   |
| SR01   | Standard 2nd row                                         | Second Row Seat                                           |
| SR04   | Second Row Seat                                          | Six Seat Interior                                         |
| SR05   | 60/40 Bench Second Row Seat                              | Second Row Seat (Model Y China)                           |
| SR06   | Seven Seat Interior                                      |                                                           |
| SR07   | Second Row Seats with Comfort Improvements               |                                                           |
| ST00   | Non-leather Steering Wheel                               |                                                           |
| ST01   | Non-heated Leather Steering Wheel                        |                                                           |
| ST02   | Heated Leather Steering Wheel                            |                                                           |
| ST03   | Regular Steering Wheel                                   | Model X/S Plaid (removed)                                 |
| ST0Y   | Yoke Steering Wheel                                      | Model X/S Plaid                                           |
| ST30   | Base Steering Wheel                                      | Model 3 Standard+                                         |
| ST31   | Steering Wheel                                           | Premium Steering Wheel                                    |
| ST33   | Steering Wheel - Round, PUR Heated                       | Premium Steering Wheel                                    |
| STCP   | Steering Wheel                                           | Steering Column (Power)                                   |
| STY5S  | Five Seat Interior                                       |                                                           |
| STY7S  | Seven Seat Interior                                      |                                                           |
| SU00   | Standard Suspension                                      |                                                           |
| SU01   | Smart Air Suspension                                     | Model S/X ?-15apr2019                                     |
| SU03   | Suspension Update                                        | Model S/X 19apr2019-2021                                  |
| SU3C   | Coil Spring Suspension                                   |                                                           |
| SWF0   |                                                          | Model 3/Y                                                 |
| SWF1   | Steering Wheel FW Enabled                                | Model 3/Y                                                 |
| T38Q   | Tires M3                                                 | 18" Hankook Ventus S1 A/S                                 |
| T3CA   | Tires M3                                                 | 19" Continental All Season, Square                        |
| T3HS   | Tires M3                                                 | 19" Hankook Summer Square                                 |
| T3MA   | Tires M3                                                 | 18" Michelin All Season, Square                           |
| T3MC   | Tires M3                                                 | 18" China made                                            |
| T3P3   | Tires M3                                                 | 20" Michelin PS4 Summer                                   |
| T3PS   | Tires M3                                                 | 19" PIRELLI PZ4?                                          |
| TD00   | Tear Down NON-GLIDER                                     | Model S/X                                                 |
| TIC3   | Tires MS                                                 | 21                                                        |
| TIC4   | Tires MX                                                 | 20" all-weather tires                                     |
| TIC6   | Tires MS                                                 | 21" Continental CSC5P Staggered                           |
| TIG2   | Summer Tires                                             |                                                           |
| TIG5   | Goodyear Eagle Touring                                   |                                                           |
| TIM7   | Summer Tires                                             | 20" MX                                                    |
| TIM8   | Michelin PS4S                                            |                                                           |
| TIM9   | Michelin Pilot Sport 4                                   |                                                           |
| TIMP   | Tires                                                    | Michelin Primacy 19" Tire                                 |
| TIP0   | All-season Tires                                         | Pirelli Scorpion Zero Asimmetrico 22” Tire                |
| TM00   | Model Trim                                               | General Production Series Vehicle                         |
| TM02   | General Production Signature Trim                        |                                                           |
| TM0A   | ALPHA PRE-PRODUCTION NON-SALEABLE                        |                                                           |
| TM0B   | BETA PRE-PRODUCTION NON-SALEABLE                         |                                                           |
| TM0C   | PRE-PRODUCTION SALEABLE                                  |                                                           |
| TP00   | No AP?                                                   |                                                           |
| TP01   | No Technology Package                                    |                                                           |
| TP02   | Tech Package with Autopilot                              |                                                           |
| TP03   | Tech Package with Enhanced Autopilot                     |                                                           |
| TR00   | No Rear Facing Seats                                     |                                                           |
| TR01   | Third Row Seating                                        |                                                           |
| TRA1   | Third Row HVAC                                           |                                                           |
| TS10   | 21" Michelin PS4S                                        | Model S/X 2021                                            |
| TS90   | 19" Continental ProContact RX                            | Model S/X 2022                                            |
| TS91   |                                                          | Model S/X 2021                                            |
| TSHP   | Heat Pump Thermal Assembly                               | Model Y 2021 (China)                                      |
| TW00   | No Tow Package                                           |                                                           |
| TW01   | Tow Package                                              |                                                           |
| TX02   | 20" Michelin Pilot Sport EV                              | Model X 2022                                              |
| TX20   |                                                          | Model X 2021                                              |
| TY0A   | 20" All Season Square                                    | Model Y 2022                                              |
| TY0C   | 20” Michelin, Pilot Sport EV                             | Model Y 2023                                              |
| TY1A   | 21"                                                      | Model Y 2022                                              |
| TY1D   | 21" P Zero                                               | Model Y 2022                                              |
| TY9A   | Tires MY                                                 | Tires 19" All Season Square                               |
| TY9B   | 19” Summer Square - Dual Sourcing Hankook                | Model Y 2023                                              |
| TY9K   | 19” Kumho Majesty 9 Solus TA91                           | Model Y 2023 China                                        |
| TY9P   | 19” Pirelli Scorpion M+S                                 | Model Y 2023                                              |
| UM01   | Universal Mobile Charger - US Port (Single)              |                                                           |
| UT3P   | Suede Grey Premium Headliner                             | Ultrasuede Grey                                           |
| UTAB   | Black Alcantara Headliner                                |                                                           |
| UTAW   | Light Headliner                                          |                                                           |
| UTMF   | Headliner                                                |                                                           |
| UTPB   | Dark Headliner                                           |                                                           |
| UTSB   | Black Ultra-Suede Upper Trim Headliner                   |                                                           |
| UTZW   | Light Headliner                                          |                                                           |
| US00   | No Ultrasonic Sensor                                     | No Ultrasonic Sensor (m3/my 2023)                         |
| US02   | Ultrasonic Sensor                                        | Test Ultrasonic Sensor (m3/my 2023 Berlin)                |
| USSB   | Safety                                                   | Safety US Black                                           |
| USSW   | US Safety Kit White                                      |                                                           |
| VC00   | MCU Intel Atom                                           | Model 3/Y (China)                                         |
| VC01   | MCU AMD Ryzen                                            | Model 3/Y first found on MYJan2022                        |
| W32P   | 20" Performance Wheels                                   | Model 3                                                   |
| W32D   | 20" Gray Performance Wheels                              | Model 3                                                   |
| W33D   | 20" Black Performance Wheels 2021                        | Model 3                                                   |
| W38A   | 18" Photon Wheels                                        | Model 3 Highland                                          |
| W38B   | 18" Aero Wheels                                          | For the Model 3 and Model Y                               |
| W39B   | 19" Sport Wheels                                         |                                                           |
| W39S   | 19W Nova Wheels                                          | Model 3 Highland                                          |
| W40B   | 18" Wheels                                               | Model 3 2021                                              |
| W41B   | 19" Wheels                                               | Model 3 2022                                              |
| WR00   | No Wrap                                                  |                                                           |
| WR01   | Wrap                                                     |                                                           |
| WR02   | Wrap 2 (Tilburg bound)                                   |                                                           |
| WS90   | 19" Tempest Wheels                                       | Model S Refresh 2021                                      |
| WT19   | 19" Wheels                                               |                                                           |
| WS10   | 21" Arachnid Wheels                                      | Model S Refresh 2021                                      |
| WT20   | 20" Silver Slipstream Wheels                             |                                                           |
| WT22   | 22" Silver Turbine Wheels                                |                                                           |
| WTAB   | 21" Black Arachnid Wheels                                |                                                           |
| WTAS   | 19" Silver Slipstream Wheels                             |                                                           |
| WTD2   | 19" Sonic Carbon Slipstream Wheels (8.5 in)              |                                                           |
| WTDS   | 19" Grey Slipstream Wheels                               |                                                           |
| WTNN   | 20" Nokian Winter Tires (non-studded)                    |                                                           |
| WTNS   | 20" Nokian Winter Tires (studded)                        |                                                           |
| WTP2   | 20" Pirelli Winter Tires                                 |                                                           |
| WTSC   | 20" Sonic Carbon Wheels                                  |                                                           |
| WTSD   | 20" Two-Tone Slipstream Wheels                           |                                                           |
| WTSG   | 21" Turbine Wheels                                       |                                                           |
| WTSP   | 21" Turbine Wheels                                       |                                                           |
| WTSS   | 21" Turbine Wheels                                       |                                                           |
| WTHX   | 20" Turbine Wheels                                       |                                                           |
| WTTG   | 19" Cyclone Wheels                                       |                                                           |
| WTTB   | 19" Cyclone Wheels                                       |                                                           |
| WTTC   | 21" Sonic Carbon Twin Turbine Wheels                     | 21" Charcol Twin Turbine Wheels (model S)                 |
| WTUT   | 22" Onyx Black Wheels                                    | 22" Ultrasonic Turbine wheels                             |
| WTW2   | 19" Nokian Winter Wheel Set                              |                                                           |
| WTW3   | 19" Pirelli Winter Wheel Set                             |                                                           |
| WTW4   | 19" Winter Tire Set                                      |                                                           |
| WTW5   | 21" Winter Tire Set                                      |                                                           |
| WTW6   | 19" Nokian Winter Tires (studded)                        |                                                           |
| WTW7   | 19" Nokian Winter Tires (non-studded)                    |                                                           |
| WTW8   | 19" Pirelli Winter Tires                                 |                                                           |
| WTX1   | 19" Michelin Primacy Tire Upgrade                        |                                                           |
| WX00   | 20" Cyberstream Wheels                                   | Model X Refresh 2021                                      |
| WX20   | 22" Turbine Wheels                                       | Model X Refresh 2021                                      |
| WXNN   | No 20" Nokian Winter Tires (non-studded)                 |                                                           |
| WXNS   | No 20" Nokian Winter Tires (studded)                     |                                                           |
| WXP2   | No 20" Pirelli Winter Tires                              |                                                           |
| WXW2   | No 19" Wheels with Nokian Winter Tyres                   |                                                           |
| WXW3   | No 19" Wheels with Pirelli Winter Tyres                  |                                                           |
| WXW4   | No 19" Winter Tire Set                                   |                                                           |
| WXW5   | No 21" Winter Tire Set                                   |                                                           |
| WXW6   | No 19" Nokian Winter Tires (studded)                     |                                                           |
| WXW7   | No 19" Nokian Winter Tires (non-studded)                 |                                                           |
| WXW8   | No 19" Pirelli Winter Tires                              |                                                           |
| WY0S   | 20" Induction                                            | Model Y 2022                                              |
| WY18B  | 18" Aero Wheels                                          |                                                           |
| WY1S   | 21” Uberturbine                                          | Model Y 2022 GigaBerlin                                   |
| WY9S   | 19" Apollo                                               | Model Y                                                   |
| WY19B  | 19" Sport Wheels                                         |                                                           |
| WY20P  | 20" Performance Wheels                                   |                                                           |
| X001   | Override: Power Liftgate                                 |                                                           |
| X002   | Override: Manual Liftgate                                |                                                           |
| X003   | Maps & Navigation                                        |                                                           |
| X004   | Override: No Navigation                                  |                                                           |
| X007   | Exterior Lights Override: Premium exterior lighting YES  |                                                           |
| X010   | Base Mirrors                                             |                                                           |
| X011   | Override: Homelink                                       |                                                           |
| X012   | Override: No Homelink                                    |                                                           |
| X013   | Override: Satellite Radio                                |                                                           |
| X014   | Override: No Satellite Radio                             |                                                           |
| X019   | Carbon Fiber Spoiler                                     |                                                           |
| X020   | No Performance Exterior                                  |                                                           |
| X021   | No Rear Carbon Fiber Spoiler                             |                                                           |
| X024   | Performance Package                                      | Performance Motor                                         |
| X025   | No Performance Powertrain                                | Base Motor                                                |
| X026   | Door handle                                              | No light handle                                           |
| X027   | Lighted Door Handles                                     | Light handle                                              |
| X028   | Battery Badge                                            | Normal Badging                                            |
| X029   | Remove Battery Badge                                     |                                                           |
| X030   | Override: No Passive Entry Pkg                           |                                                           |
| X031   | Keyless Entry                                            | Passive Entry Pkg                                         |
| X037   | Powerfolding Mirrors                                     |                                                           |
| X039   | DAB Radio                                                |                                                           |
| X040   | No DAB Radio                                             |                                                           |
| X041   | No Auto Presenting Door                                  |                                                           |
| X042   | Auto Presenting Door                                     |                                                           |
| X043   | No Phone Dock Kit                                        |                                                           |
| X044   | Phone Dock Kit                                           |                                                           |
| YF00   | No Yacht Floor                                           |                                                           |
| YF01   | Matching Yacht Floor                                     |                                                           |
| YFCC   | Yatcht Floor Front Console, Décor Matched                |                                                           |
| YFFC   | Integrated Center Console                                |                                                           |
| ZCST   | Customer Car                                             |                                                           |
| ZINV   | Inventory vehicle                                        | Car sold from Tesla Inventory                             |
