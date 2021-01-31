class LocalPoint {
  int nO;
  String kOD;
  String iLCE;
  String mAHALLESIRA;
  String mAHALLEADI;
  String aDRES;
  String iMARDURUMU;
  String mULKIYET;
  double eNLEM;
  double bOYLAM;
  double aLAN;
  double kAPASITE;

  LocalPoint(
      {this.nO,
      this.kOD,
      this.iLCE,
      this.mAHALLESIRA,
      this.mAHALLEADI,
      this.aDRES,
      this.iMARDURUMU,
      this.mULKIYET,
      this.eNLEM,
      this.bOYLAM,
      this.aLAN,
      this.kAPASITE});

  LocalPoint.fromJson(Map<String, dynamic> json) {
    nO = json['NO'];
    kOD = json['KOD'];
    iLCE = json['ILCE'];
    mAHALLESIRA = json['MAHALLE_SIRA'];
    mAHALLEADI = json['MAHALLE_ADI'];
    aDRES = json['ADRES'];
    iMARDURUMU = json['IMAR_DURUMU'];
    mULKIYET = json['MULKIYET'];
    eNLEM = json['ENLEM'];
    bOYLAM = json['BOYLAM'];
    aLAN = json['ALAN'];
    kAPASITE = json['KAPASITE'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['NO'] = this.nO;
    data['KOD'] = this.kOD;
    data['ILCE'] = this.iLCE;
    data['MAHALLE_SIRA'] = this.mAHALLESIRA;
    data['MAHALLE_ADI'] = this.mAHALLEADI;
    data['ADRES'] = this.aDRES;
    data['IMAR_DURUMU'] = this.iMARDURUMU;
    data['MULKIYET'] = this.mULKIYET;
    data['ENLEM'] = this.eNLEM;
    data['BOYLAM'] = this.bOYLAM;
    data['ALAN'] = this.aLAN;
    data['KAPASITE'] = this.kAPASITE;
    return data;
  }
}
