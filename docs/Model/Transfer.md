# # Transfer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 取引(振替)ID |
**company_id** | **int** | 事業所ID |
**amount** | **int** | 金額 |
**date** | **string** | 振替日 (yyyy-mm-dd) |
**from_walletable_type** | **string** | 振替元口座区分 (銀行口座: bank_account, クレジットカード: credit_card, 現金: wallet) |
**from_walletable_id** | **int** | 振替元口座ID |
**to_walletable_type** | **string** | 振替先口座区分 (銀行口座: bank_account, クレジットカード: credit_card, 現金: wallet) |
**to_walletable_id** | **int** | 振替先口座ID |
**description** | **string** | 備考 |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
