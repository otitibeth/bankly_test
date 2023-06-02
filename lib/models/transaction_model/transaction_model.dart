import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
class TransactionModel with _$TransactionModel {
  factory TransactionModel({
    String? trnAmount,
    String? trnCounterPartyService,
    DateTime? trnDate,
    String? trnCounterpartyBankCode,
    String? trnContractReference,
    String? trnPaymentReference,
    String? trnCounterPartyReference,
    String? logourl,
    String? trnDrCr,
    String? accountNumber,
    String? accountName,
    String? counterPartyAccountNumber,
    String? counterPartyAccountName,
    String? journalNarration,
    String? trnCounterPartyBankName,
    String? ftCounterPartySwitchCode,
    String? trnNarration,
    String? source,
    String? bankCode,
    String? branchCode,
    String? maker,
    String? checker,
    String? bankName,
    String? trnId,
    String? error,
  }) = _TransactionModel;

  factory TransactionModel.withError(String errorMessage) =>
      TransactionModel(error: errorMessage);

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}
