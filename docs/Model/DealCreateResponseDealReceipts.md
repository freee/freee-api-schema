# # DealCreateResponseDealReceipts

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 証憑ファイルID（ファイルボックスのファイルID） |
**status** | **string** | ステータス(confirmed:確認済み、deleted:削除済み、ignored:無視) |
**description** | **string** | メモ | [optional]
**mime_type** | **string** | MIMEタイプ |
**issue_date** | **string** | 発生日 | [optional]
**origin** | **string** | アップロード元種別 |
**created_at** | **string** | 作成日時（ISO8601形式） |
**user** | [**\OpenAPI\Client\Model\DealCreateResponseDealUser**](DealCreateResponseDealUser.md) |  |
**receipt_metadatum** | [**\OpenAPI\Client\Model\ReceiptUpdateParamsReceiptMetadatum**](ReceiptUpdateParamsReceiptMetadatum.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
