# # DealCreateResponseDeal

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 取引ID |
**company_id** | **int** | 事業所ID |
**issue_date** | **string** | 発生日 (yyyy-mm-dd) |
**due_date** | **string** | 支払期日 (yyyy-mm-dd) | [optional]
**amount** | **int** | 金額 |
**due_amount** | **int** | 支払残額 | [optional]
**type** | **string** | 収支区分 (収入: income, 支出: expense) | [optional]
**partner_id** | **int** | 取引先ID |
**partner_code** | **string** | 取引先コード | [optional]
**ref_number** | **string** | 管理番号 | [optional]
**status** | **string** | 決済状況 (未決済: unsettled, 完了: settled) |
**details** | [**\OpenAPI\Client\Model\DealCreateResponseDealDetails[]**](DealCreateResponseDealDetails.md) | 取引の明細行 | [optional]
**payments** | [**\OpenAPI\Client\Model\DealCreateResponseDealPayments[]**](DealCreateResponseDealPayments.md) | 取引の支払行 | [optional]
**receipts** | [**\OpenAPI\Client\Model\DealCreateResponseDealReceipts[]**](DealCreateResponseDealReceipts.md) | 証憑ファイル（ファイルボックスのファイル） | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
