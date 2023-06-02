// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionModel _$$_TransactionModelFromJson(Map<String, dynamic> json) =>
    _$_TransactionModel(
      trnAmount: json['trnAmount'] as String?,
      trnCounterPartyService: json['trnCounterPartyService'] as String?,
      trnDate: json['trnDate'] == null
          ? null
          : DateTime.parse(json['trnDate'] as String),
      trnCounterpartyBankCode: json['trnCounterpartyBankCode'] as String?,
      trnContractReference: json['trnContractReference'] as String?,
      trnPaymentReference: json['trnPaymentReference'] as String?,
      trnCounterPartyReference: json['trnCounterPartyReference'] as String?,
      logourl: json['logourl'] as String?,
      trnDrCr: json['trnDrCr'] as String?,
      accountNumber: json['accountNumber'] as String?,
      accountName: json['accountName'] as String?,
      counterPartyAccountNumber: json['counterPartyAccountNumber'] as String?,
      counterPartyAccountName: json['counterPartyAccountName'] as String?,
      journalNarration: json['journalNarration'] as String?,
      trnCounterPartyBankName: json['trnCounterPartyBankName'] as String?,
      ftCounterPartySwitchCode: json['ftCounterPartySwitchCode'] as String?,
      trnNarration: json['trnNarration'] as String?,
      source: json['source'] as String?,
      bankCode: json['bankCode'] as String?,
      branchCode: json['branchCode'] as String?,
      maker: json['maker'] as String?,
      checker: json['checker'] as String?,
      bankName: json['bankName'] as String?,
      trnId: json['trnId'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_TransactionModelToJson(_$_TransactionModel instance) =>
    <String, dynamic>{
      'trnAmount': instance.trnAmount,
      'trnCounterPartyService': instance.trnCounterPartyService,
      'trnDate': instance.trnDate?.toIso8601String(),
      'trnCounterpartyBankCode': instance.trnCounterpartyBankCode,
      'trnContractReference': instance.trnContractReference,
      'trnPaymentReference': instance.trnPaymentReference,
      'trnCounterPartyReference': instance.trnCounterPartyReference,
      'logourl': instance.logourl,
      'trnDrCr': instance.trnDrCr,
      'accountNumber': instance.accountNumber,
      'accountName': instance.accountName,
      'counterPartyAccountNumber': instance.counterPartyAccountNumber,
      'counterPartyAccountName': instance.counterPartyAccountName,
      'journalNarration': instance.journalNarration,
      'trnCounterPartyBankName': instance.trnCounterPartyBankName,
      'ftCounterPartySwitchCode': instance.ftCounterPartySwitchCode,
      'trnNarration': instance.trnNarration,
      'source': instance.source,
      'bankCode': instance.bankCode,
      'branchCode': instance.branchCode,
      'maker': instance.maker,
      'checker': instance.checker,
      'bankName': instance.bankName,
      'trnId': instance.trnId,
      'error': instance.error,
    };
