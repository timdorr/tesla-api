# Option Codes

The `option_codes` field of a vehicle is a comma-delimited set of codes that
represent various options the car was built with. This can include trim options,
battery sizes, color, wheel types, and addon packages.

**As of August 2019, Option Codes cannot be relied on.** Vehicles now
return a generic set of codes related to a Model 3.

| Code   | Title                                                    | Description                                               |
| :----- | :------------------------------------------------------- | :-------------------------------------------------------- |
| MDLS   | Model S                                                  | This vehicle is a Model S                                 |
| MS03   | Model S                                                  | This vehicle is a Model S                                 |
| MS04   | Model S                                                  | This vehicle is a Model S                                 |
| MDLX   | Model X                                                  | This vehicle is a Model X                                 |
| MDL3   | Model 3                                                  | This vehicle is a Model 3                                 |
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
| ADX9   | No - Adapter, Swiss (1 phase, 10A)                       |                                                           |
| ADX8   | Blue IEC309 (1 phase, 230V 32A)                          |                                                           |
| AF00   | No HEPA Filter                                           | Standard air filter, no air ionizer                       |
| AF02   | HEPA Filter                                              |                                                           |
| AH00   | No Accessory Hitch                                       |                                                           |
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
| BC00   |                                                          | MS Q4 Plaid                                               |
| BC0B   | Black Brake Calipers                                     |                                                           |
| BC0R   | Red Brake Calipers                                       |                                                           |
| BC3B   | Black Brake Calipers                                     | Model 3/Y                                                 |
| BC3R   | Black Brake Calipers, Red brake calipers                 | Model 3/Y Performance                                     |
| BCMB   | Black Brake Calipers, Mando Brakes                       |                                                           |
| BCYR   | Performance Brakes                                       |                                                           |
| BG30   | No Badge                                                 | Model 3                                                   |
| BG31   | AWD Badge                                                | Model 3/Y                                                 |
| BG32   | Performance AWD Badge                                    | Model 3                                                   |
| BP00   | No Ludicrous                                             |                                                           |
| BP01   | Ludicrous Speed Upgrade                                  |                                                           |
| BP02   | Uncorked Acceleration                                    | Non-Performance                                           |
| BR00   | No Battery Firmware Limit                                |                                                           |
| BR03   | Battery Firmware Limit (60kWh)                           |                                                           |
| BR05   | Battery Firmware Limit (75kWh)                           |                                                           |
| BS00   | Blind Spot Sensor Package                                |                                                           |
| BS01   | Special Production Flag                                  |                                                           |
| BT35   | 50 kWh (Model 3/Y) Pre 2021 Panasonic cells              | Model 3 Standard Range                                    |
| BT36   | 62.5 kWh (Model 3/Y) Pre 2021 Panasonic cells            | Model 3 Mid Range                                         |
| BT37   | 75 kWh (Model 3/Y) Pre 2021 Panasonic cells              | 2017-03.2021 LR+P Model 3/Y (Mostly Fremont build)        |
| BT38   | 74 kWh (Model 3/Y) LG cells                              | M3/MY LR/Dual build in China                              |
| BT3D   | 50 kWh (Model 3)                                         | 2019 Model 3 Standard Range                               |
| BT40   | 40 kWh                                                   |                                                           |
| BT41   | 55? kWh 2021 Panasonic?                                  | M3 Standard+ 2021 model year                              |
| BT42   | 82 kWh (Model 3/Y) 2021 Panasonic                        | M3P (and latest LR Fremont) 2021 model year               |
| BT43   | 79 kWh (Model 3/Y) 2021 LG NCA                           | M3/Y LR Q4.2021                                           |
| BT60   | 60 kWh                                                   |                                                           |
| BT70   | 70 kWh                                                   |                                                           |
| BT85   | 85 kWh                                                   |                                                           |
| BTF0   | 55 kWh (Model 3) 2020 CATL Prismatic                     | M3 Standard+ China made LFP and Q4.2021 M3 Stdr+ USA      |
| BTF1   | 60 kWh (Model 3) 2021 CATL Prismatic                     | M3 Standard+ China made LFP                               |
| BTX4   | 90 kWh                                                   |                                                           |
| BTX5   | 75 kWh                                                   |                                                           |
| BTX6   | 100 kWh                                                  |                                                           |
| BTX7   | 75 kWh                                                   |                                                           |
| BTX8   | 75 kWh                                                   |                                                           |
| BTX9   | 100 kWh Battery Pack with Weight Reduction               | Model S 2020/08                                           |
| BTXA   | 18650J2 Battery Cell                                     | Model S/X 2020                                            |
| BTXB   | 99kWh 18650 Plaid E5/E6 VIN battery                      | Model S/X 2021 LR/Plaid                                   |
| BY00   |                                                          | Model Y                                                   |
| BY01   |                                                          | Model Y                                                   |
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
| CH09   | Tesla Standard Charging System 72a (Gen3)                | Model S/X mid2019-2020 EU                                 |
| CH11   | Single phase 48 Amperage Combo 1                         | Chargers Single Phase                                     |
| CH12   | 48 Amperage Combo 1 Gen 3.5 Charger                      | Chargers Single Phase (MS/MX 2020-2021)                   |
| CH14   | 32 Amp Charger Hardware (RENA) with Busbar               | NA spec M3 2022 SR+                                       |
| CH15   | 48 Amp Charger Hardware (REEU/REAP) with Busbar          | EU spec                                                   |
| CH16   | 48 Amp Charger Hardware (RENA) with Busbar               | NA spec                                                   |
| CH17   | 48 Amp 1PH&3PH,P2                                        | NA spec Model S/X Palladium                               |
| COL0   | Signature                                                |                                                           |
| COL1   | Solid                                                    |                                                           |
| COL2   | Metallic                                                 |                                                           |
| COL3   | Tesla Multi-Coat                                         |                                                           |
| COAT   | Country: Austria                                         |                                                           |
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
| COJP   | Country: Japan                                           |                                                           |
| COKR   | Country: South Korea                                     |                                                           |
| COLU   | Country: Luxembourg                                      |                                                           |
| CONL   | Country: Netherlands                                     |                                                           |
| CONO   | Country: Norway                                          |                                                           |
| COPT   | Country: Portugal                                        |                                                           |
| COSE   | Country: Sweden                                          |                                                           |
| COSG   | Country: Singapore                                       |                                                           |
| COUS   | Country: United States                                   |                                                           |
| CP00   |                                                          | MX 2021                                                   |
| CPF0   | Standard Connectivity                                    | 1 month                                                   |
| CPF1   | Premium Connectivity                                     | 1 year                                                    |
| CPW1   | 20" Performance Wheels                                   |                                                           |
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
| DU02   | Drive Unit - Non-performance front drive unit (raven)    | MS 2019-2020                                              |
| DV2W   | Rear-Wheel Drive                                         |                                                           |
| DV4W   | All-Wheel Drive                                          |                                                           |
| EUSB   | Safety EU Black                                          |                                                           |
| FBBB   | Front Brake Brembo Black                                 |                                                           |
| FBBR   | Front Brake Brembo Red                                   | Brakes (MS/MX 2021)                                       |
| FC01   | Front Console Inductive Phone Charger                    | Model 3                                                   |
| FC02   | Front Console Front Console (Premium)                    | Model 3/Y 2021                                            |
| FCH2   |                                                          | Model 3/Y late 2021                                       |
| FC3P   | Front Console Front Console (Premium)                    | Model 3                                                   |
| FD00   |                                                          | Model 3 2021 (USA)                                        |
| FD01   |                                                          | Model 3/Y 2021 (China)                                    |
| FD02   |                                                          | Model S/X 2021 LR                                         |
| FD03   |                                                          | Model S/X 2021 P                                          |
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
| FR04   | Front Row Seat                                           | MS 2019-2020                                              |
| FR05   | Front Row Seat                                           | Ventilated Front Seats (MS/MX 10.2020+)                   |
| GLCN   | Assembly                                                 | Final Assembly China Giga3 Model 3                        |
| GLFR   | Assembly                                                 | Final Assembly Fremont                                    |
| GLTL   | Assembly                                                 | Final Assembly Tilburg                                    |
| HC00   | No Home Charging installation                            |                                                           |
| HC01   | Home Charging Installation                               |                                                           |
| HM30   | Teck Package - No Homelink                               | No Homelink Option                                        |
| HM31   | Teck Package - Homelink                                  | Homelink                                                  |
| HL00   | Head Lamp                                                | Model S/X 2021                                            |
| HL31   | Head Lamp                                                | Model 3 Uplevel Headlamps                                 |
| HL32   | M3 Matrix Headlights 2021                                | Model 3/Y 2021 Uplevel Headlamps                          |
| HP00   | No HPWC Ordered                                          |                                                           |
| HP01   | HPWC Ordered                                             |                                                           |
| HP30   | No heat pump assembly                                    | Model 3 Standard+ China made                              |
| HP31   | Heat pump assembly                                       | Model 3                                                   |
| I36M   | Rear Drive Unit Inverter 600A Mosfet                     | Model 3 DM/LR                                             |
| I38M   | Rear Drive Unit Inverter 800A Mosfet                     | Model 3 Std+, Performance                                 |
| IBB0   | All Black Interior                                       | Model 3 Old Door Trim                                     |
| IBB1   | All Black Interior                                       | Model 3 New Door Trim (Since Q1 2021)                     |
| IC00   |                                                          | Model S/X (Since Q2 2021)                                 |
| IC01   |                                                          | Model X (Since Q4 2021)                                   |
| IC02   |                                                          | Model S/X (Since Q2 2021)                                 |
| ID00   |                                                          | Model S/X (Since Q2 2021)                                 |
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
| IPW0   | White Interior                                           | Model 3 Interior (Left Hand Drive)                        |
| IPW1   | white Interior                                           | Model 3 Interior (Right Hand Drive)                       |
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
| LS01   |                                                          | Latest 2021 Model 3/Y Perf                                |
| LS02   |                                                          | Latest 2021 Model 3/Y DM                                  |
| LT00   | Vegan interior                                           |                                                           |
| LT01   | Standard interior                                        |                                                           |
| LT03   |                                                          | Latest 2021 Model 3/Y Interiror?                          |
| LT1B   | Lower Trim                                               | Lower Trim                                                |
| LT3W   | Lower Trim                                               |                                                           |
| LT4B   | LT4B                                                     |                                                           |
| LT4C   | LT4C                                                     |                                                           |
| LT4W   | LT4W                                                     |                                                           |
| LT5C   | LT5C                                                     |                                                           |
| LT5P   | LT5P                                                     |                                                           |
| LT5W   | Lower Trim Black PUR with White interior                 | 2020 Model S                                              |
| LT6P   | LT6P                                                     |                                                           |
| LT6W   | White Base Lower Trim                                    |                                                           |
| LTBC   | Lower Trim PUR Cream with Black Carpets                  |                                                           |
| LTPB   | Lower Trim PUR Black                                     |                                                           |
| LTPW   | Lower Trim PUR White                                     |                                                           |
| LTSB   | Lower Trim Standard Black                                | Model 3 Standard+                                         |
| LVB0   |                                                          | Model 3/Y Standard+                                       |
| LVB1   |                                                          | Model 3/Y with Premium Interior                           |
| LVB2   |                                                          | Model 3/Y (GigaBerlin?)                                   |
| M301   | Generation 1 of 2022                                     | AMD Ryzen?                                                |
| ME01   | Memory Seats                                             |                                                           |
| ME02   | Seat Memory                                              | Seat Memory LHD Driver                                    |
| MI00   | 1st Generation Production                                | Model 3 (2019), Model S (Nosecone), MX(2016), MY(2021)    |
| MI01   | 2nd Generation Production                                | Model 3 (2020), Model S (2016 Facelit), Model X (2017)    |
| MI02   | 3rd Generation Production                                | Model 3 (2021), Model X (2017)                            |
| MI03   | 4th Generation Production                                | Model S (2018), Model X (2018)                            |
| MI04   | 5th Generation Production                                | Model S (2019/2020), Model X (2020)                       |
| MI07   | 8th Generation Production                                | Model S (2021), Model X (2021)                            |
| MR31   | Tech Package - Mirror -YES                               | Uplevel Mirrors                                           |
| MT300  | Standard Range Rear-Wheel Drive                          | Model 3                                                   |
| MT301  | Standard Range Plus Rear-Wheel Drive                     | Model 3                                                   |
| MT302  | Long Range Rear-Wheel Drive                              | Model 3                                                   |
| MT303  | Long Range All-Wheel Drive                               | Model 3                                                   |
| MT304  | Long Range All-Wheel Drive Performance                   | Model 3                                                   |
| MT305  | Mid Range Rear-Wheel Drive                               | Model 3                                                   |
| MT307  | Mid Range Rear-Wheel Drive                               | Model 3                                                   |
| MT308  | Standard Range Plus Rear-Wheel Drive                     | Model 3 2019 Refresh                                      |
| MT309  | Standard Range Plus Rear-Wheel Drive                     | Model 3 2019 Refresh                                      |
| MT310  | Long Range All-Wheel Drive                               | Model 3                                                   |
| MT311  | Long Range All-Wheel Drive Performance                   | Model 3                                                   |
| MT314  | Standard Range Plus Rear-Wheel Drive                     | Model 3 2021 Refresh                                      |
| MT315  | Long Range All-Wheel Drive                               | Model 3 2021 Refresh                                      |
| MT316  | Long Range All-Wheel Drive                               | Model 3 2021 Refresh                                      |
| MT317  | Long Range All-Wheel Drive Performance                   | Model 3 2021 Refresh                                      |
| MT320  | Standard Range Plus Rear-Wheel Drive                     | Model 3 2021 Refresh                                      |
| MT322  | Standard Range Plus Rear-Wheel Drive                     | Model 3 2021 Refresh                                      |
| MT321  | Long Range All-Wheel Drive                               | Model 3 2021 Refresh                                      |
| MT323  | Long Range All-Wheel Drive                               | Model 3 2021 Refresh                                      |
| MT328  | Long Range All-Wheel Drive                               | Model 3 2022 Refresh                                      |
| MT336  | Standard Range Plus Rear-Wheel Drive                     | Model 3 2020 Refresh                                      |
| MT337  | Standard Range Plus Rear-Wheel Drive                     | Model 3 2021 Refresh                                      |
| MT340  | Long Range All-Wheel Drive Performance                   | Model 3 2022 Refresh                                      |
| MTS01  | Standard Range                                           | Model S                                                   |
| MTS03  | Long Range                                               | Model S                                                   |
| MTS04  | Performance                                              | Model S                                                   |
| MTS05  | Long Range                                               | Model S                                                   |
| MTS06  | Performance                                              | Model S                                                   |
| MTS07  | Long Range Plus                                          | Model S                                                   |
| MTS08  | Performance                                              | Model S                                                   |
| MTS09  | Plaid+                                                   | Model S Refresh 2021                                      |
| MTS10  | Long Range                                               | Model S Refresh 2021                                      |
| MTS11  | Plaid                                                    | Model S Refresh 2021                                      |
| MTX01  | Standard Range                                           | Model X                                                   |
| MTX03  | Long Range                                               | Model X                                                   |
| MTX04  | Performance                                              | Model X                                                   |
| MTX05  | Long Range Plus                                          | Model X                                                   |
| MTX06  | Performance                                              | Model X                                                   |
| MTX07  | Long Range Plus                                          | Model X                                                   |
| MTX08  | Performance                                              | Model X                                                   |
| MTX10  | Long Range                                               | Model X Refresh 2021                                      |
| MTX11  | Plaid                                                    | Model X Refresh 2021                                      |
| MTY01  | Standard Range Rear-Wheel Drive                          | Model Y                                                   |
| MTY02  | Long Range Rear-Wheel Drive                              | Model Y                                                   |
| MTY03  | Long Range All-Wheel Drive                               | Model Y                                                   |
| MTY04  | Long Range All-Wheel Drive Performance                   | Model Y                                                   |
| MTY05  | Long Range All-Wheel Drive Performance                   | Model Y                                                   |
| MTY07  | Long Range All-Wheel Drive                               | Model Y                                                   |
| MTY09  | Long Range All-Wheel Drive                               | Model Y                                                   |
| MY02   |                                                          | Model Y                                                   |
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
| PPMR   | Red Multi-Coat Color                                     |                                                           |
| PP01   | Pedestrian Protection Ped Pro R127 Compliant             | Model S 2020+ Eu                                          |
| PP02   | Pedestrian Protection Ped Pro R127 Compliant             | Model 3 2021 Eu                                           |
| PPSB   | Deep Blue Metallic Color                                 |                                                           |
| PPSR   | Signature Red Color                                      |                                                           |
| PPSW   | Pearl White Multi-Coat Color                             |                                                           |
| PPTI   | Titanium Metallic Color                                  |                                                           |
| PL30   | No Aluminum Pedal                                        | Model 3/Y                                                 |
| PL31   | Performance Aluminum Pedals                              | Model 3/Y                                                 |
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
| RA00   |                                                          | Model 3/Y                                                 |
| RA01   |                                                          | Model 3/Y                                                 |
| RBMB   | Rear Brake Mando Black                                   | Model X                                                   |
| RBMR   | Rear Brake Mando Red                                     | Model S                                                   |
| RCX0   | No Rear Console                                          |                                                           |
| RCX1   | Rear Console                                             |                                                           |
| RD01   | Rear drive unit (600A)                                   | Model 3 LR/DM (Fremont)                                   |
| RD02   | Rear drive unit (800A)                                   | Model 3 Std+, Perf                                        |
| RD03   | Rear Drive Unit LR                                       | Model S/X 2021 (Rear drive unit)                          |
| RD04   | Rear Drive Unit Plaid                                    | Model S/X 2021 (Rear drive unit)                          |
| RD05   | Rear Drive Unit                                          | Model 3/Y LR/DM (China)                                   |
| RD06   |                                                          | Model 3 2022 refresh?                                     |
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
| RL00   |                                                          | Model S/X 2021                                            |
| RL31   |                                                          | Model 3 Perf                                              |
| RL32   |                                                          | Model 3/Y (AWD)                                           |
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
| SC00   | No Supercharging                                         |                                                           |
| SC01   | Unlimited Free Supercharging Enabled                     | Transfers to the next owner via private sale              |
| SC04   | Pay Per Use Supercharging                                |                                                           |
| SC05   | Unlimited Free Supercharging Currently Enabled           | Not transferable to the next owner                        |
| SC06   | Time Bound Unlimited Free Supercharging                  |                                                           |
| SLR0   | No Rear Spoiler                                          |                                                           |
| SLR1   | Carbon Fibre Spoiler                                     | Model 3                                                   |
| SP00   | No Security Package                                      |                                                           |
| SP01   | Security Package                                         |                                                           |
| SPT31  | Performance Upgrade                                      | Model 3                                                   |
| SPTY1  | Performance Upgrade                                      | Model Y                                                   |
| SR01   | Standard 2nd row                                         | Second Row Seat                                           |
| SR04   | Second Row Seat                                          | Six Seat Interior                                         |
| SR05   | X Front seat set                                         | Second Row Seat (Model Y China)                           |
| SR06   | Seven Seat Interior                                      |                                                           |
| SR07   | Second Row Seats with Comfort Improvements               |                                                           |
| ST00   | Non-leather Steering Wheel                               |                                                           |
| ST01   | Non-heated Leather Steering Wheel                        |                                                           |
| ST02   | Heated Leather Steering Wheel                            |                                                           |
| ST03   | Regular Steering Wheel                                   | Model X/S Plaid (removed)                                 |
| ST0Y   | Yoke Steering Wheel                                      | Model X/S Plaid                                           |
| ST30   | Base Steering Wheel                                      | Model 3 Standard+                                         |
| ST31   | Steering Wheel                                           | Premium Steering Wheel                                    |
| ST33   | Steering wheel - heated on LR/P (Model 3)                | Premium Steering Wheel                                    |
| STCP   | Steering Wheel                                           | Steering Column (Power)                                   |
| STY5S  | Five Seat Interior                                       |                                                           |
| STY7S  | Seven Seat Interior                                      |                                                           |
| SU00   | Standard Suspension                                      |                                                           |
| SU01   | Smart Air Suspension                                     |                                                           |
| SU03   | Suspension Update                                        | Model S/X 2019-2021                                       |
| SU3C   | Coil Spring Suspension                                   |                                                           |
| SWF0   |                                                          | Model 3/Y                                                 |
| SWF1   |                                                          | Model 3/Y                                                 |
| T3CA   | Tires M3                                                 | 19" Continental All Season, Square                        |
| T3HS   | Tires M3                                                 | 19" Hankook Summer Square                                 |
| T3MA   | Tires M3                                                 | 18" Michelin All Season, Square                           |
| T3MC   | Tires M3                                                 | 18" China made                                            |
| T3P3   | Tires M3                                                 | 20" Michelin PS4 Summer                                   |
| TY9A   | Tires MY                                                 | Tires 19" All Season Square                               |
| TD00   | Tear Down NON-GLIDER                                     | Model S/X                                                 |
| TIC4   | Tires MX                                                 | 20" all-weather tires                                     |
| TIC6   | Tires MS                                                 | 21" Continental CSC5P Staggered                           |
| TIG2   | Summer Tires                                             |                                                           |
| TIG5   | Goodyear Eagle Touring                                   |                                                           |
| TIM7   | Summer Tires                                             |                                                           |
| TIM8   | Michelin PS4S                                            |                                                           |
| TIM9   | Michelin Pilot Sport 4                                   |                                                           |
| TIMP   | Tires                                                    | Michelin Primacy 19" Tire                                 |
| TIP0   | All-season Tires                                         | Pirelli Scorpion Zero Asimmetrico 22” Tire                |
| TM00   | Model Trim                                               | General Production Series Vehicle                         |
| TM02   | General Production Signature Trim                        |                                                           |
| TM0A   | ALPHA PRE-PRODUCTION NON-SALEABLE                        |                                                           |
| TM0B   | BETA PRE-PRODUCTION NON-SALEABLE                         |                                                           |
| TM0C   | PRE-PRODUCTION SALEABLE                                  |                                                           |
| TP01   | No Technology Package                                    |                                                           |
| TP01   | Tech Package - No Autopilot                              |                                                           |
| TP02   | Tech Package with Autopilot                              |                                                           |
| TP03   | Tech Package with Enhanced Autopilot                     |                                                           |
| TR00   | No Rear Facing Seats                                     |                                                           |
| TR01   | Third Row Seating                                        |                                                           |
| TRA1   | Third Row HVAC                                           |                                                           |
| TS10   |                                                          | Model S/X 2021                                            |
| TS91   |                                                          | Model S/X 2021                                            |
| TSHP   | Heat Pump Thermal Assembly                               | Model Y 2021 (China)                                      |
| TW00   | No Tow Package                                           |                                                           |
| TW01   | Tow Package                                              |                                                           |
| TX20   |                                                          | Model X 2021                                              |
| TY0A   | 20" All Season Square                                    | Model Y 2022                                              |
| TY1D   | 21" P Zero                                               | Model Y 2022                                              |
| UM01   | Universal Mobile Charger - US Port (Single)              |                                                           |
| UT3P   | Suede Grey Premium Headliner                             | Ultrasuede Grey                                           |
| UTAB   | Black Alcantara Headliner                                |                                                           |
| UTAW   | Light Headliner                                          |                                                           |
| UTMF   | Headliner                                                |                                                           |
| UTPB   | Dark Headliner                                           |                                                           |
| UTSB   | Black Ultra-suede Headliner                              |                                                           |
| UTZW   | Light Headliner                                          |                                                           |
| USSB   | Safety                                                   | Safety US Black                                           |
| USSW   | US Safety Kit White                                      |                                                           |
| VC00   |                                                          | Model 3/Y (China)                                         |
| VC01   |                                                          | Model 3/Y first found on MYJan2022                        |
| W32P   | 20" Performance Wheels                                   | Model 3                                                   |
| W32D   | 20" Gray Performance Wheels                              | Model 3                                                   |
| W33D   | 20" Black Performance Wheels 2021                        | Model 3                                                   |
| W38B   | 18" Aero Wheels                                          | For the Model 3 and Model Y                               |
| W39B   | 19" Sport Wheels                                         |                                                           |
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
| X024   | Performance Package                                      |                                                           |
| X025   | No Performance Powertrain                                |                                                           |
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
| ZINV   | Inventory vehicle?                                       | MS Plaid Q42022/M3P Singapore                             |
