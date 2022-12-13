# # DealCreateResponseDealPayments

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 取引行ID |
**date** | **string** | 支払日 |
**from_walletable_type** | **string** | 口座区分 (銀行口座: bank_account, クレジットカード: credit_card, 現金: wallet, プライベート資金（法人の場合は役員借入金もしくは役員借入金、個人の場合は事業主貸もしくは事業主借）: private_account_item) | [optional]
**from_walletable_id** | **int** | 口座ID（from_walletable_typeがprivate_account_itemの場合は勘定科目ID） | [optional]
**amount** | **int** | 支払金額 |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
