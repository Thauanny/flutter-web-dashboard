class ResponseModel {
  String commissionTotal;
  String commissionCancelled;
  String commissionReached;
  String uniqueDownloads;
  String signUpClients;
  String signUpApproved;
  String clientWithProduction;
  String requestContracts;
  String inAnalysisContracts;
  String concludedContracts;
  String deniedContracts;
  String estimatedCommission;
  String confirmedCommission;
  String lostCommission;
  String voidedCommission;
  String unconfirmedCommission;
  String waitingApprovalCommission;
  String availableCommission;
  String totalAffiliates;
  String newAffiliates;
  String affiliatesWithLeads;
  String affiliatesWithResult;
  Map<dynamic, dynamic> clicksAndSignUpChartData;
  Map<dynamic, dynamic> commissionChartData;

  ResponseModel(
      {this.commissionTotal,
      this.commissionCancelled,
      this.commissionReached,
      this.uniqueDownloads,
      this.signUpClients,
      this.signUpApproved,
      this.clientWithProduction,
      this.requestContracts,
      this.inAnalysisContracts,
      this.concludedContracts,
      this.deniedContracts,
      this.estimatedCommission,
      this.confirmedCommission,
      this.lostCommission,
      this.voidedCommission,
      this.unconfirmedCommission,
      this.waitingApprovalCommission,
      this.availableCommission,
      this.totalAffiliates,
      this.newAffiliates,
      this.affiliatesWithLeads,
      this.affiliatesWithResult,
      this.clicksAndSignUpChartData,
      this.commissionChartData});

  factory ResponseModel.fromMap(Map<dynamic, dynamic> json) {
    return ResponseModel(
        commissionTotal: json['commissionTotal'],
        commissionCancelled: json['commissionCancelled'],
        commissionReached: json['commissionReached'],
        uniqueDownloads: json['uniqueDownloads'],
        signUpClients: json['signUpClients'],
        signUpApproved: json['signUpApproved'],
        clientWithProduction: json['clientWithProduction'],
        requestContracts: json['requestContracts'],
        inAnalysisContracts: json['inAnalysisContracts'],
        concludedContracts: json['concludedContracts'],
        deniedContracts: json['deniedContracts'],
        estimatedCommission: json['estimatedCommission'],
        confirmedCommission: json['confirmedCommission'],
        lostCommission: json['lostCommission'],
        voidedCommission: json['voidedCommission'],
        unconfirmedCommission: json['unconfirmedCommission'],
        waitingApprovalCommission: json['waitingApprovalCommission'],
        availableCommission: json['availableCommission'],
        totalAffiliates: json['totalAffiliates'],
        newAffiliates: json['newAffiliates'],
        affiliatesWithLeads: json['affiliatesWithLeads'],
        affiliatesWithResult: json['affiliatesWithResult'],
        clicksAndSignUpChartData: json['clicksAndSignUpChartData'],
        commissionChartData: json['commissionChartData']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['commissionTotal'] = this.commissionTotal;
    data['commissionCancelled'] = this.commissionCancelled;
    data['commissionReached'] = this.commissionReached;
    data['uniqueDownloads'] = this.uniqueDownloads;
    data['signUpClients'] = this.signUpClients;
    data['signUpApproved'] = this.signUpApproved;
    data['clientWithProduction'] = this.clientWithProduction;
    data['requestContracts'] = this.requestContracts;
    data['inAnalysisContracts'] = this.inAnalysisContracts;
    data['concludedContracts'] = this.concludedContracts;
    data['deniedContracts'] = this.deniedContracts;
    data['estimatedCommission'] = this.estimatedCommission;
    data['confirmedCommission'] = this.confirmedCommission;
    data['lostCommission'] = this.lostCommission;
    data['voidedCommission'] = this.voidedCommission;
    data['unconfirmedCommission'] = this.unconfirmedCommission;
    data['waitingApprovalCommission'] = this.waitingApprovalCommission;
    data['availableCommission'] = this.availableCommission;
    data['totalAffiliates'] = this.totalAffiliates;
    data['newAffiliates'] = this.newAffiliates;
    data['affiliatesWithLeads'] = this.affiliatesWithLeads;
    data['affiliatesWithResult'] = this.affiliatesWithResult;
    data['clicksAndSignUpChartData'] = this.clicksAndSignUpChartData;
    data['commissionChartData'] = this.commissionChartData;

    return data;
  }
}
