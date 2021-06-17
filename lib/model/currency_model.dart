class CurrencyModel {
  late bool success;
  late int timestamp;
  late String base;
  late String date;
  late Rates rates;

  CurrencyModel(
      {required this.success,
      required this.timestamp,
      required this.base,
      required this.date,
      required this.rates});

  CurrencyModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    timestamp = json['timestamp'];
    base = json['base'];
    date = json['date'];
    rates = json['rates'] ?? new Rates.fromJson(json['rates']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['timestamp'] = this.timestamp;
    data['base'] = this.base;
    data['date'] = this.date;
    data['rates'] = this.rates.toJson();

    return data;
  }
}

class Rates {
  late double aED;
  late double aFN;
  late double aLL;
  late double aMD;
  late double aNG;
  late double aOA;
  late double aRS;
  late double aUD;
  late double aWG;
  late double aZN;
  late double bAM;
  late double bBD;
  late double bDT;
  late double bGN;
  late double bHD;
  late double bIF;
  late double bMD;
  late double bND;
  late double bOB;
  late double bRL;
  late double bSD;
  late double bTC;
  late double bTN;
  late double bWP;
  late double bYN;
  late double bYR;
  late double bZD;
  late double cAD;
  late double cDF;
  late double cHF;
  late double cLF;
  late double cLP;
  late double cNY;
  late double cOP;
  late double cRC;
  late double cUC;
  late double cUP;
  late double cVE;
  late double cZK;
  late double dJF;
  late double dKK;
  late double dOP;
  late double dZD;
  late double eGP;
  late double eRN;
  late double eTB;
  late int eUR;
  late double fJD;
  late double fKP;
  late double gBP;
  late double gEL;
  late double gGP;
  late double gHS;
  late double gIP;
  late double gMD;
  late double gNF;
  late double gTQ;
  late double gYD;
  late double hKD;
  late double hNL;
  late double hRK;
  late double hTG;
  late double hUF;
  late double iDR;
  late double iLS;
  late double iMP;
  late double iNR;
  late double iQD;
  late double iRR;
  late double iSK;
  late double jEP;
  late double jMD;
  late double jOD;
  late double jPY;
  late double kES;
  late double kGS;
  late double kHR;
  late double kMF;
  late double kPW;
  late double kRW;
  late double kWD;
  late double kYD;
  late double kZT;
  late double lAK;
  late double lBP;
  late double lKR;
  late double lRD;
  late double lSL;
  late double lTL;
  late double lVL;
  late double lYD;
  late double mAD;
  late double mDL;
  late double mGA;
  late double mKD;
  late double mMK;
  late double mNT;
  late double mOP;
  late double mRO;
  late double mUR;
  late double mVR;
  late double mWK;
  late double mXN;
  late double mYR;
  late double mZN;
  late double nAD;
  late double nGN;
  late double nIO;
  late double nOK;
  late double nPR;
  late double nZD;
  late double oMR;
  late double pAB;
  late double pEN;
  late double pGK;
  late double pHP;
  late double pKR;
  late double pLN;
  late double pYG;
  late double qAR;
  late double rON;
  late double rSD;
  late double rUB;
  late double rWF;
  late double sAR;
  late double sBD;
  late double sCR;
  late double sDG;
  late double sEK;
  late double sGD;
  late double sHP;
  late double sLL;
  late double sOS;
  late double sRD;
  late double sTD;
  late double sVC;
  late double sYP;
  late double sZL;
  late double tHB;
  late double tJS;
  late double tMT;
  late double tND;
  late double tOP;
  late double tRY;
  late double tTD;
  late double tWD;
  late double tZS;
  late double uAH;
  late double uGX;
  late double uSD;
  late double uYU;
  late double uZS;
  late double vEF;
  late double vND;
  late double vUV;
  late double wST;
  late double xAF;
  late double xAG;
  late double xAU;
  late double xCD;
  late double xDR;
  late double xOF;
  late double xPF;
  late double yER;
  late double zAR;
  late double zMK;
  late double zMW;
  late double zWL;

  Rates(
      {required this.aED,
      required this.aFN,
      required this.aLL,
      required this.aMD,
      required this.aNG,
      required this.aOA,
      required this.aRS,
      required this.aUD,
      required this.aWG,
      required this.aZN,
      required this.bAM,
      required this.bBD,
      required this.bDT,
      required this.bGN,
      required this.bHD,
      required this.bIF,
      required this.bMD,
      required this.bND,
      required this.bOB,
      required this.bRL,
      required this.bSD,
      required this.bTC,
      required this.bTN,
      required this.bWP,
      required this.bYN,
      required this.bYR,
      required this.bZD,
      required this.cAD,
      required this.cDF,
      required this.cHF,
      required this.cLF,
      required this.cLP,
      required this.cNY,
      required this.cOP,
      required this.cRC,
      required this.cUC,
      required this.cUP,
      required this.cVE,
      required this.cZK,
      required this.dJF,
      required this.dKK,
      required this.dOP,
      required this.dZD,
      required this.eGP,
      required this.eRN,
      required this.eTB,
      required this.eUR,
      required this.fJD,
      required this.fKP,
      required this.gBP,
      required this.gEL,
      required this.gGP,
      required this.gHS,
      required this.gIP,
      required this.gMD,
      required this.gNF,
      required this.gTQ,
      required this.gYD,
      required this.hKD,
      required this.hNL,
      required this.hRK,
      required this.hTG,
      required this.hUF,
      required this.iDR,
      required this.iLS,
      required this.iMP,
      required this.iNR,
      required this.iQD,
      required this.iRR,
      required this.iSK,
      required this.jEP,
      required this.jMD,
      required this.jOD,
      required this.jPY,
      required this.kES,
      required this.kGS,
      required this.kHR,
      required this.kMF,
      required this.kPW,
      required this.kRW,
      required this.kWD,
      required this.kYD,
      required this.kZT,
      required this.lAK,
      required this.lBP,
      required this.lKR,
      required this.lRD,
      required this.lSL,
      required this.lTL,
      required this.lVL,
      required this.lYD,
      required this.mAD,
      required this.mDL,
      required this.mGA,
      required this.mKD,
      required this.mMK,
      required this.mNT,
      required this.mOP,
      required this.mRO,
      required this.mUR,
      required this.mVR,
      required this.mWK,
      required this.mXN,
      required this.mYR,
      required this.mZN,
      required this.nAD,
      required this.nGN,
      required this.nIO,
      required this.nOK,
      required this.nPR,
      required this.nZD,
      required this.oMR,
      required this.pAB,
      required this.pEN,
      required this.pGK,
      required this.pHP,
      required this.pKR,
      required this.pLN,
      required this.pYG,
      required this.qAR,
      required this.rON,
      required this.rSD,
      required this.rUB,
      required this.rWF,
      required this.sAR,
      required this.sBD,
      required this.sCR,
      required this.sDG,
      required this.sEK,
      required this.sGD,
      required this.sHP,
      required this.sLL,
      required this.sOS,
      required this.sRD,
      required this.sTD,
      required this.sVC,
      required this.sYP,
      required this.sZL,
      required this.tHB,
      required this.tJS,
      required this.tMT,
      required this.tND,
      required this.tOP,
      required this.tRY,
      required this.tTD,
      required this.tWD,
      required this.tZS,
      required this.uAH,
      required this.uGX,
      required this.uSD,
      required this.uYU,
      required this.uZS,
      required this.vEF,
      required this.vND,
      required this.vUV,
      required this.wST,
      required this.xAF,
      required this.xAG,
      required this.xAU,
      required this.xCD,
      required this.xDR,
      required this.xOF,
      required this.xPF,
      required this.yER,
      required this.zAR,
      required this.zMK,
      required this.zMW,
      required this.zWL});

  Rates.fromJson(Map<String, dynamic> json) {
    aED = json['AED'];
    aFN = json['AFN'];
    aLL = json['ALL'];
    aMD = json['AMD'];
    aNG = json['ANG'];
    aOA = json['AOA'];
    aRS = json['ARS'];
    aUD = json['AUD'];
    aWG = json['AWG'];
    aZN = json['AZN'];
    bAM = json['BAM'];
    bBD = json['BBD'];
    bDT = json['BDT'];
    bGN = json['BGN'];
    bHD = json['BHD'];
    bIF = json['BIF'];
    bMD = json['BMD'];
    bND = json['BND'];
    bOB = json['BOB'];
    bRL = json['BRL'];
    bSD = json['BSD'];
    bTC = json['BTC'];
    bTN = json['BTN'];
    bWP = json['BWP'];
    bYN = json['BYN'];
    bYR = json['BYR'];
    bZD = json['BZD'];
    cAD = json['CAD'];
    cDF = json['CDF'];
    cHF = json['CHF'];
    cLF = json['CLF'];
    cLP = json['CLP'];
    cNY = json['CNY'];
    cOP = json['COP'];
    cRC = json['CRC'];
    cUC = json['CUC'];
    cUP = json['CUP'];
    cVE = json['CVE'];
    cZK = json['CZK'];
    dJF = json['DJF'];
    dKK = json['DKK'];
    dOP = json['DOP'];
    dZD = json['DZD'];
    eGP = json['EGP'];
    eRN = json['ERN'];
    eTB = json['ETB'];
    eUR = json['EUR'];
    fJD = json['FJD'];
    fKP = json['FKP'];
    gBP = json['GBP'];
    gEL = json['GEL'];
    gGP = json['GGP'];
    gHS = json['GHS'];
    gIP = json['GIP'];
    gMD = json['GMD'];
    gNF = json['GNF'];
    gTQ = json['GTQ'];
    gYD = json['GYD'];
    hKD = json['HKD'];
    hNL = json['HNL'];
    hRK = json['HRK'];
    hTG = json['HTG'];
    hUF = json['HUF'];
    iDR = json['IDR'];
    iLS = json['ILS'];
    iMP = json['IMP'];
    iNR = json['INR'];
    iQD = json['IQD'];
    iRR = json['IRR'];
    iSK = json['ISK'];
    jEP = json['JEP'];
    jMD = json['JMD'];
    jOD = json['JOD'];
    jPY = json['JPY'];
    kES = json['KES'];
    kGS = json['KGS'];
    kHR = json['KHR'];
    kMF = json['KMF'];
    kPW = json['KPW'];
    kRW = json['KRW'];
    kWD = json['KWD'];
    kYD = json['KYD'];
    kZT = json['KZT'];
    lAK = json['LAK'];
    lBP = json['LBP'];
    lKR = json['LKR'];
    lRD = json['LRD'];
    lSL = json['LSL'];
    lTL = json['LTL'];
    lVL = json['LVL'];
    lYD = json['LYD'];
    mAD = json['MAD'];
    mDL = json['MDL'];
    mGA = json['MGA'];
    mKD = json['MKD'];
    mMK = json['MMK'];
    mNT = json['MNT'];
    mOP = json['MOP'];
    mRO = json['MRO'];
    mUR = json['MUR'];
    mVR = json['MVR'];
    mWK = json['MWK'];
    mXN = json['MXN'];
    mYR = json['MYR'];
    mZN = json['MZN'];
    nAD = json['NAD'];
    nGN = json['NGN'];
    nIO = json['NIO'];
    nOK = json['NOK'];
    nPR = json['NPR'];
    nZD = json['NZD'];
    oMR = json['OMR'];
    pAB = json['PAB'];
    pEN = json['PEN'];
    pGK = json['PGK'];
    pHP = json['PHP'];
    pKR = json['PKR'];
    pLN = json['PLN'];
    pYG = json['PYG'];
    qAR = json['QAR'];
    rON = json['RON'];
    rSD = json['RSD'];
    rUB = json['RUB'];
    rWF = json['RWF'];
    sAR = json['SAR'];
    sBD = json['SBD'];
    sCR = json['SCR'];
    sDG = json['SDG'];
    sEK = json['SEK'];
    sGD = json['SGD'];
    sHP = json['SHP'];
    sLL = json['SLL'];
    sOS = json['SOS'];
    sRD = json['SRD'];
    sTD = json['STD'];
    sVC = json['SVC'];
    sYP = json['SYP'];
    sZL = json['SZL'];
    tHB = json['THB'];
    tJS = json['TJS'];
    tMT = json['TMT'];
    tND = json['TND'];
    tOP = json['TOP'];
    tRY = json['TRY'];
    tTD = json['TTD'];
    tWD = json['TWD'];
    tZS = json['TZS'];
    uAH = json['UAH'];
    uGX = json['UGX'];
    uSD = json['USD'];
    uYU = json['UYU'];
    uZS = json['UZS'];
    vEF = json['VEF'];
    vND = json['VND'];
    vUV = json['VUV'];
    wST = json['WST'];
    xAF = json['XAF'];
    xAG = json['XAG'];
    xAU = json['XAU'];
    xCD = json['XCD'];
    xDR = json['XDR'];
    xOF = json['XOF'];
    xPF = json['XPF'];
    yER = json['YER'];
    zAR = json['ZAR'];
    zMK = json['ZMK'];
    zMW = json['ZMW'];
    zWL = json['ZWL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['AED'] = this.aED;
    data['AFN'] = this.aFN;
    data['ALL'] = this.aLL;
    data['AMD'] = this.aMD;
    data['ANG'] = this.aNG;
    data['AOA'] = this.aOA;
    data['ARS'] = this.aRS;
    data['AUD'] = this.aUD;
    data['AWG'] = this.aWG;
    data['AZN'] = this.aZN;
    data['BAM'] = this.bAM;
    data['BBD'] = this.bBD;
    data['BDT'] = this.bDT;
    data['BGN'] = this.bGN;
    data['BHD'] = this.bHD;
    data['BIF'] = this.bIF;
    data['BMD'] = this.bMD;
    data['BND'] = this.bND;
    data['BOB'] = this.bOB;
    data['BRL'] = this.bRL;
    data['BSD'] = this.bSD;
    data['BTC'] = this.bTC;
    data['BTN'] = this.bTN;
    data['BWP'] = this.bWP;
    data['BYN'] = this.bYN;
    data['BYR'] = this.bYR;
    data['BZD'] = this.bZD;
    data['CAD'] = this.cAD;
    data['CDF'] = this.cDF;
    data['CHF'] = this.cHF;
    data['CLF'] = this.cLF;
    data['CLP'] = this.cLP;
    data['CNY'] = this.cNY;
    data['COP'] = this.cOP;
    data['CRC'] = this.cRC;
    data['CUC'] = this.cUC;
    data['CUP'] = this.cUP;
    data['CVE'] = this.cVE;
    data['CZK'] = this.cZK;
    data['DJF'] = this.dJF;
    data['DKK'] = this.dKK;
    data['DOP'] = this.dOP;
    data['DZD'] = this.dZD;
    data['EGP'] = this.eGP;
    data['ERN'] = this.eRN;
    data['ETB'] = this.eTB;
    data['EUR'] = this.eUR;
    data['FJD'] = this.fJD;
    data['FKP'] = this.fKP;
    data['GBP'] = this.gBP;
    data['GEL'] = this.gEL;
    data['GGP'] = this.gGP;
    data['GHS'] = this.gHS;
    data['GIP'] = this.gIP;
    data['GMD'] = this.gMD;
    data['GNF'] = this.gNF;
    data['GTQ'] = this.gTQ;
    data['GYD'] = this.gYD;
    data['HKD'] = this.hKD;
    data['HNL'] = this.hNL;
    data['HRK'] = this.hRK;
    data['HTG'] = this.hTG;
    data['HUF'] = this.hUF;
    data['IDR'] = this.iDR;
    data['ILS'] = this.iLS;
    data['IMP'] = this.iMP;
    data['INR'] = this.iNR;
    data['IQD'] = this.iQD;
    data['IRR'] = this.iRR;
    data['ISK'] = this.iSK;
    data['JEP'] = this.jEP;
    data['JMD'] = this.jMD;
    data['JOD'] = this.jOD;
    data['JPY'] = this.jPY;
    data['KES'] = this.kES;
    data['KGS'] = this.kGS;
    data['KHR'] = this.kHR;
    data['KMF'] = this.kMF;
    data['KPW'] = this.kPW;
    data['KRW'] = this.kRW;
    data['KWD'] = this.kWD;
    data['KYD'] = this.kYD;
    data['KZT'] = this.kZT;
    data['LAK'] = this.lAK;
    data['LBP'] = this.lBP;
    data['LKR'] = this.lKR;
    data['LRD'] = this.lRD;
    data['LSL'] = this.lSL;
    data['LTL'] = this.lTL;
    data['LVL'] = this.lVL;
    data['LYD'] = this.lYD;
    data['MAD'] = this.mAD;
    data['MDL'] = this.mDL;
    data['MGA'] = this.mGA;
    data['MKD'] = this.mKD;
    data['MMK'] = this.mMK;
    data['MNT'] = this.mNT;
    data['MOP'] = this.mOP;
    data['MRO'] = this.mRO;
    data['MUR'] = this.mUR;
    data['MVR'] = this.mVR;
    data['MWK'] = this.mWK;
    data['MXN'] = this.mXN;
    data['MYR'] = this.mYR;
    data['MZN'] = this.mZN;
    data['NAD'] = this.nAD;
    data['NGN'] = this.nGN;
    data['NIO'] = this.nIO;
    data['NOK'] = this.nOK;
    data['NPR'] = this.nPR;
    data['NZD'] = this.nZD;
    data['OMR'] = this.oMR;
    data['PAB'] = this.pAB;
    data['PEN'] = this.pEN;
    data['PGK'] = this.pGK;
    data['PHP'] = this.pHP;
    data['PKR'] = this.pKR;
    data['PLN'] = this.pLN;
    data['PYG'] = this.pYG;
    data['QAR'] = this.qAR;
    data['RON'] = this.rON;
    data['RSD'] = this.rSD;
    data['RUB'] = this.rUB;
    data['RWF'] = this.rWF;
    data['SAR'] = this.sAR;
    data['SBD'] = this.sBD;
    data['SCR'] = this.sCR;
    data['SDG'] = this.sDG;
    data['SEK'] = this.sEK;
    data['SGD'] = this.sGD;
    data['SHP'] = this.sHP;
    data['SLL'] = this.sLL;
    data['SOS'] = this.sOS;
    data['SRD'] = this.sRD;
    data['STD'] = this.sTD;
    data['SVC'] = this.sVC;
    data['SYP'] = this.sYP;
    data['SZL'] = this.sZL;
    data['THB'] = this.tHB;
    data['TJS'] = this.tJS;
    data['TMT'] = this.tMT;
    data['TND'] = this.tND;
    data['TOP'] = this.tOP;
    data['TRY'] = this.tRY;
    data['TTD'] = this.tTD;
    data['TWD'] = this.tWD;
    data['TZS'] = this.tZS;
    data['UAH'] = this.uAH;
    data['UGX'] = this.uGX;
    data['USD'] = this.uSD;
    data['UYU'] = this.uYU;
    data['UZS'] = this.uZS;
    data['VEF'] = this.vEF;
    data['VND'] = this.vND;
    data['VUV'] = this.vUV;
    data['WST'] = this.wST;
    data['XAF'] = this.xAF;
    data['XAG'] = this.xAG;
    data['XAU'] = this.xAU;
    data['XCD'] = this.xCD;
    data['XDR'] = this.xDR;
    data['XOF'] = this.xOF;
    data['XPF'] = this.xPF;
    data['YER'] = this.yER;
    data['ZAR'] = this.zAR;
    data['ZMK'] = this.zMK;
    data['ZMW'] = this.zMW;
    data['ZWL'] = this.zWL;
    return data;
  }
}
