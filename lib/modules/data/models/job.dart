// To parse this JSON data, do
//
//     final job = jobFromJson(jsonString);

import 'dart:convert';

Job jobFromJson(String str) => Job.fromJson(json.decode(str));

String jobToJson(Job data) => json.encode(data.toJson());

class Job {
    String? languageCode;
    SearchParameters? searchParameters;
    SearchResult? searchResult;

    Job({
        this.languageCode,
        this.searchParameters,
        this.searchResult,
    });

    factory Job.fromJson(Map<String, dynamic> json) => Job(
        languageCode: json["LanguageCode"],
        searchParameters: json["SearchParameters"] == null ? null : SearchParameters.fromJson(json["SearchParameters"]),
        searchResult: json["SearchResult"] == null ? null : SearchResult.fromJson(json["SearchResult"]),
    );

    Map<String, dynamic> toJson() => {
        "LanguageCode": languageCode,
        "SearchParameters": searchParameters?.toJson(),
        "SearchResult": searchResult?.toJson(),
    };
}

class SearchParameters {
    SearchParameters();

    factory SearchParameters.fromJson(Map<String, dynamic> json) => SearchParameters(
    );

    Map<String, dynamic> toJson() => {
    };
}

class SearchResult {
    int? searchResultCount;
    int? searchResultCountAll;
    List<SearchResultItem>? searchResultItems;
    SearchResultUserArea? userArea;

    SearchResult({
        this.searchResultCount,
        this.searchResultCountAll,
        this.searchResultItems,
        this.userArea,
    });

    factory SearchResult.fromJson(Map<String, dynamic> json) => SearchResult(
        searchResultCount: json["SearchResultCount"],
        searchResultCountAll: json["SearchResultCountAll"],
        searchResultItems: json["SearchResultItems"] == null ? [] : List<SearchResultItem>.from(json["SearchResultItems"]!.map((x) => SearchResultItem.fromJson(x))),
        userArea: json["UserArea"] == null ? null : SearchResultUserArea.fromJson(json["UserArea"]),
    );

    Map<String, dynamic> toJson() => {
        "SearchResultCount": searchResultCount,
        "SearchResultCountAll": searchResultCountAll,
        "SearchResultItems": searchResultItems == null ? [] : List<dynamic>.from(searchResultItems!.map((x) => x.toJson())),
        "UserArea": userArea?.toJson(),
    };
}

class SearchResultItem {
    String? matchedObjectId;
    MatchedObjectDescriptor? matchedObjectDescriptor;
    int? relevanceRank;

    SearchResultItem({
        this.matchedObjectId,
        this.matchedObjectDescriptor,
        this.relevanceRank,
    });

    factory SearchResultItem.fromJson(Map<String, dynamic> json) => SearchResultItem(
        matchedObjectId: json["MatchedObjectId"],
        matchedObjectDescriptor: json["MatchedObjectDescriptor"] == null ? null : MatchedObjectDescriptor.fromJson(json["MatchedObjectDescriptor"]),
        relevanceRank: json["RelevanceRank"],
    );

    Map<String, dynamic> toJson() => {
        "MatchedObjectId": matchedObjectId,
        "MatchedObjectDescriptor": matchedObjectDescriptor?.toJson(),
        "RelevanceRank": relevanceRank,
    };
}

class MatchedObjectDescriptor {
    String? positionId;
    String? positionTitle;
    String? positionUri;
    List<String>? applyUri;
    String? positionLocationDisplay;
    List<PositionLocation>? positionLocation;
    String? organizationName;
    String? departmentName;
    List<JobCategory>? jobCategory;
    List<JobGrade>? jobGrade;
    List<JobCategory>? positionSchedule;
    List<JobCategory>? positionOfferingType;
    String? qualificationSummary;
    List<PositionRemuneration>? positionRemuneration;
    DateTime? positionStartDate;
    DateTime? positionEndDate;
    DateTime? publicationStartDate;
    DateTime? applicationCloseDate;
    List<PositionFormattedDescription>? positionFormattedDescription;
    MatchedObjectDescriptorUserArea? userArea;

    MatchedObjectDescriptor({
        this.positionId,
        this.positionTitle,
        this.positionUri,
        this.applyUri,
        this.positionLocationDisplay,
        this.positionLocation,
        this.organizationName,
        this.departmentName,
        this.jobCategory,
        this.jobGrade,
        this.positionSchedule,
        this.positionOfferingType,
        this.qualificationSummary,
        this.positionRemuneration,
        this.positionStartDate,
        this.positionEndDate,
        this.publicationStartDate,
        this.applicationCloseDate,
        this.positionFormattedDescription,
        this.userArea,
    });

    factory MatchedObjectDescriptor.fromJson(Map<String, dynamic> json) => MatchedObjectDescriptor(
        positionId: json["PositionID"],
        positionTitle: json["PositionTitle"],
        positionUri: json["PositionURI"],
        applyUri: json["ApplyURI"] == null ? [] : List<String>.from(json["ApplyURI"]!.map((x) => x)),
        positionLocationDisplay: json["PositionLocationDisplay"],
        positionLocation: json["PositionLocation"] == null ? [] : List<PositionLocation>.from(json["PositionLocation"]!.map((x) => PositionLocation.fromJson(x))),
        organizationName: json["OrganizationName"],
        departmentName: json["DepartmentName"],
        jobCategory: json["JobCategory"] == null ? [] : List<JobCategory>.from(json["JobCategory"]!.map((x) => JobCategory.fromJson(x))),
        jobGrade: json["JobGrade"] == null ? [] : List<JobGrade>.from(json["JobGrade"]!.map((x) => JobGrade.fromJson(x))),
        positionSchedule: json["PositionSchedule"] == null ? [] : List<JobCategory>.from(json["PositionSchedule"]!.map((x) => JobCategory.fromJson(x))),
        positionOfferingType: json["PositionOfferingType"] == null ? [] : List<JobCategory>.from(json["PositionOfferingType"]!.map((x) => JobCategory.fromJson(x))),
        qualificationSummary: json["QualificationSummary"],
        positionRemuneration: json["PositionRemuneration"] == null ? [] : List<PositionRemuneration>.from(json["PositionRemuneration"]!.map((x) => PositionRemuneration.fromJson(x))),
        positionStartDate: json["PositionStartDate"] == null ? null : DateTime.parse(json["PositionStartDate"]),
        positionEndDate: json["PositionEndDate"] == null ? null : DateTime.parse(json["PositionEndDate"]),
        publicationStartDate: json["PublicationStartDate"] == null ? null : DateTime.parse(json["PublicationStartDate"]),
        applicationCloseDate: json["ApplicationCloseDate"] == null ? null : DateTime.parse(json["ApplicationCloseDate"]),
        positionFormattedDescription: json["PositionFormattedDescription"] == null ? [] : List<PositionFormattedDescription>.from(json["PositionFormattedDescription"]!.map((x) => PositionFormattedDescription.fromJson(x))),
        userArea: json["UserArea"] == null ? null : MatchedObjectDescriptorUserArea.fromJson(json["UserArea"]),
    );

    Map<String, dynamic> toJson() => {
        "PositionID": positionId,
        "PositionTitle": positionTitle,
        "PositionURI": positionUri,
        "ApplyURI": applyUri == null ? [] : List<dynamic>.from(applyUri!.map((x) => x)),
        "PositionLocationDisplay": positionLocationDisplay,
        "PositionLocation": positionLocation == null ? [] : List<dynamic>.from(positionLocation!.map((x) => x.toJson())),
        "OrganizationName": organizationName,
        "DepartmentName": departmentName,
        "JobCategory": jobCategory == null ? [] : List<dynamic>.from(jobCategory!.map((x) => x.toJson())),
        "JobGrade": jobGrade == null ? [] : List<dynamic>.from(jobGrade!.map((x) => x.toJson())),
        "PositionSchedule": positionSchedule == null ? [] : List<dynamic>.from(positionSchedule!.map((x) => x.toJson())),
        "PositionOfferingType": positionOfferingType == null ? [] : List<dynamic>.from(positionOfferingType!.map((x) => x.toJson())),
        "QualificationSummary": qualificationSummary,
        "PositionRemuneration": positionRemuneration == null ? [] : List<dynamic>.from(positionRemuneration!.map((x) => x.toJson())),
        "PositionStartDate": positionStartDate?.toIso8601String(),
        "PositionEndDate": positionEndDate?.toIso8601String(),
        "PublicationStartDate": publicationStartDate?.toIso8601String(),
        "ApplicationCloseDate": applicationCloseDate?.toIso8601String(),
        "PositionFormattedDescription": positionFormattedDescription == null ? [] : List<dynamic>.from(positionFormattedDescription!.map((x) => x.toJson())),
        "UserArea": userArea?.toJson(),
    };
}

class JobCategory {
    String? name;
    String? code;

    JobCategory({
        this.name,
        this.code,
    });

    factory JobCategory.fromJson(Map<String, dynamic> json) => JobCategory(
        name: json["Name"],
        code: json["Code"],
    );

    Map<String, dynamic> toJson() => {
        "Name": name,
        "Code": code,
    };
}

class JobGrade {
    String? code;

    JobGrade({
        this.code,
    });

    factory JobGrade.fromJson(Map<String, dynamic> json) => JobGrade(
        code: json["Code"],
    );

    Map<String, dynamic> toJson() => {
        "Code": code,
    };
}

class PositionFormattedDescription {
    String? label;
    String? labelDescription;

    PositionFormattedDescription({
        this.label,
        this.labelDescription,
    });

    factory PositionFormattedDescription.fromJson(Map<String, dynamic> json) => PositionFormattedDescription(
        label: json["Label"],
        labelDescription: json["LabelDescription"],
    );

    Map<String, dynamic> toJson() => {
        "Label": label,
        "LabelDescription": labelDescription,
    };
}

class PositionLocation {
    String? locationName;
    String? countryCode;
    String? countrySubDivisionCode;
    String? cityName;
    double? longitude;
    double? latitude;

    PositionLocation({
        this.locationName,
        this.countryCode,
        this.countrySubDivisionCode,
        this.cityName,
        this.longitude,
        this.latitude,
    });

    factory PositionLocation.fromJson(Map<String, dynamic> json) => PositionLocation(
        locationName: json["LocationName"],
        countryCode: json["CountryCode"],
        countrySubDivisionCode: json["CountrySubDivisionCode"],
        cityName: json["CityName"],
        longitude: json["Longitude"]?.toDouble(),
        latitude: json["Latitude"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "LocationName": locationName,
        "CountryCode": countryCode,
        "CountrySubDivisionCode": countrySubDivisionCode,
        "CityName": cityName,
        "Longitude": longitude,
        "Latitude": latitude,
    };
}

class PositionRemuneration {
    String? minimumRange;
    String? maximumRange;
    String? rateIntervalCode;
    String? description;

    PositionRemuneration({
        this.minimumRange,
        this.maximumRange,
        this.rateIntervalCode,
        this.description,
    });

    factory PositionRemuneration.fromJson(Map<String, dynamic> json) => PositionRemuneration(
        minimumRange: json["MinimumRange"],
        maximumRange: json["MaximumRange"],
        rateIntervalCode: json["RateIntervalCode"],
        description: json["Description"],
    );

    Map<String, dynamic> toJson() => {
        "MinimumRange": minimumRange,
        "MaximumRange": maximumRange,
        "RateIntervalCode": rateIntervalCode,
        "Description": description,
    };
}

class MatchedObjectDescriptorUserArea {
    Details? details;
    bool? isRadialSearch;

    MatchedObjectDescriptorUserArea({
        this.details,
        this.isRadialSearch,
    });

    factory MatchedObjectDescriptorUserArea.fromJson(Map<String, dynamic> json) => MatchedObjectDescriptorUserArea(
        details: json["Details"] == null ? null : Details.fromJson(json["Details"]),
        isRadialSearch: json["IsRadialSearch"],
    );

    Map<String, dynamic> toJson() => {
        "Details": details?.toJson(),
        "IsRadialSearch": isRadialSearch,
    };
}

class Details {
    String? jobSummary;
    JobCategory? whoMayApply;
    String? lowGrade;
    String? highGrade;
    String? promotionPotential;
    String? organizationCodes;
    String? relocation;
    List<String>? hiringPath;
    String? totalOpenings;
    String? agencyMarketingStatement;
    String? travelCode;
    String? detailStatusUrl;
    List<String>? majorDuties;
    String? education;
    String? requirements;
    String? evaluations;
    String? howToApply;
    String? whatToExpectNext;
    String? requiredDocuments;
    String? benefits;
    String? benefitsUrl;
    bool? benefitsDisplayDefaultText;
    String? otherInformation;
    List<String>? keyRequirements;
    String? withinArea;
    String? commuteDistance;
    String? serviceType;
    String? announcementClosingType;
    String? agencyContactEmail;
    String? agencyContactPhone;
    String? securityClearance;
    String? drugTestRequired;
    List<dynamic>? adjudicationType;
    bool? teleworkEligible;
    bool? remoteIndicator;

    Details({
        this.jobSummary,
        this.whoMayApply,
        this.lowGrade,
        this.highGrade,
        this.promotionPotential,
        this.organizationCodes,
        this.relocation,
        this.hiringPath,
        this.totalOpenings,
        this.agencyMarketingStatement,
        this.travelCode,
        this.detailStatusUrl,
        this.majorDuties,
        this.education,
        this.requirements,
        this.evaluations,
        this.howToApply,
        this.whatToExpectNext,
        this.requiredDocuments,
        this.benefits,
        this.benefitsUrl,
        this.benefitsDisplayDefaultText,
        this.otherInformation,
        this.keyRequirements,
        this.withinArea,
        this.commuteDistance,
        this.serviceType,
        this.announcementClosingType,
        this.agencyContactEmail,
        this.agencyContactPhone,
        this.securityClearance,
        this.drugTestRequired,
        this.adjudicationType,
        this.teleworkEligible,
        this.remoteIndicator,
    });

    factory Details.fromJson(Map<String, dynamic> json) => Details(
        jobSummary: json["JobSummary"],
        whoMayApply: json["WhoMayApply"] == null ? null : JobCategory.fromJson(json["WhoMayApply"]),
        lowGrade: json["LowGrade"],
        highGrade: json["HighGrade"],
        promotionPotential: json["PromotionPotential"],
        organizationCodes: json["OrganizationCodes"],
        relocation: json["Relocation"],
        hiringPath: json["HiringPath"] == null ? [] : List<String>.from(json["HiringPath"]!.map((x) => x)),
        totalOpenings: json["TotalOpenings"],
        agencyMarketingStatement: json["AgencyMarketingStatement"],
        travelCode: json["TravelCode"],
        detailStatusUrl: json["DetailStatusUrl"],
        majorDuties: json["MajorDuties"] == null ? [] : List<String>.from(json["MajorDuties"]!.map((x) => x)),
        education: json["Education"],
        requirements: json["Requirements"],
        evaluations: json["Evaluations"],
        howToApply: json["HowToApply"],
        whatToExpectNext: json["WhatToExpectNext"],
        requiredDocuments: json["RequiredDocuments"],
        benefits: json["Benefits"],
        benefitsUrl: json["BenefitsUrl"],
        benefitsDisplayDefaultText: json["BenefitsDisplayDefaultText"],
        otherInformation: json["OtherInformation"],
        keyRequirements: json["KeyRequirements"] == null ? [] : List<String>.from(json["KeyRequirements"]!.map((x) => x)),
        withinArea: json["WithinArea"],
        commuteDistance: json["CommuteDistance"],
        serviceType: json["ServiceType"],
        announcementClosingType: json["AnnouncementClosingType"],
        agencyContactEmail: json["AgencyContactEmail"],
        agencyContactPhone: json["AgencyContactPhone"],
        securityClearance: json["SecurityClearance"],
        drugTestRequired: json["DrugTestRequired"],
        adjudicationType: json["AdjudicationType"] == null ? [] : List<dynamic>.from(json["AdjudicationType"]!.map((x) => x)),
        teleworkEligible: json["TeleworkEligible"],
        remoteIndicator: json["RemoteIndicator"],
    );

    Map<String, dynamic> toJson() => {
        "JobSummary": jobSummary,
        "WhoMayApply": whoMayApply?.toJson(),
        "LowGrade": lowGrade,
        "HighGrade": highGrade,
        "PromotionPotential": promotionPotential,
        "OrganizationCodes": organizationCodes,
        "Relocation": relocation,
        "HiringPath": hiringPath == null ? [] : List<dynamic>.from(hiringPath!.map((x) => x)),
        "TotalOpenings": totalOpenings,
        "AgencyMarketingStatement": agencyMarketingStatement,
        "TravelCode": travelCode,
        "DetailStatusUrl": detailStatusUrl,
        "MajorDuties": majorDuties == null ? [] : List<dynamic>.from(majorDuties!.map((x) => x)),
        "Education": education,
        "Requirements": requirements,
        "Evaluations": evaluations,
        "HowToApply": howToApply,
        "WhatToExpectNext": whatToExpectNext,
        "RequiredDocuments": requiredDocuments,
        "Benefits": benefits,
        "BenefitsUrl": benefitsUrl,
        "BenefitsDisplayDefaultText": benefitsDisplayDefaultText,
        "OtherInformation": otherInformation,
        "KeyRequirements": keyRequirements == null ? [] : List<dynamic>.from(keyRequirements!.map((x) => x)),
        "WithinArea": withinArea,
        "CommuteDistance": commuteDistance,
        "ServiceType": serviceType,
        "AnnouncementClosingType": announcementClosingType,
        "AgencyContactEmail": agencyContactEmail,
        "AgencyContactPhone": agencyContactPhone,
        "SecurityClearance": securityClearance,
        "DrugTestRequired": drugTestRequired,
        "AdjudicationType": adjudicationType == null ? [] : List<dynamic>.from(adjudicationType!.map((x) => x)),
        "TeleworkEligible": teleworkEligible,
        "RemoteIndicator": remoteIndicator,
    };
}

class SearchResultUserArea {
    String? numberOfPages;
    bool? isRadialSearch;

    SearchResultUserArea({
        this.numberOfPages,
        this.isRadialSearch,
    });

    factory SearchResultUserArea.fromJson(Map<String, dynamic> json) => SearchResultUserArea(
        numberOfPages: json["NumberOfPages"],
        isRadialSearch: json["IsRadialSearch"],
    );

    Map<String, dynamic> toJson() => {
        "NumberOfPages": numberOfPages,
        "IsRadialSearch": isRadialSearch,
    };
}
