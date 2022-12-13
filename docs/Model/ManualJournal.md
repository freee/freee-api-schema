# # ManualJournal

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 振替伝票ID |
**company_id** | **int** | 事業所ID |
**issue_date** | **string** | 発生日 (yyyy-mm-dd) |
**adjustment** | **bool** | 決算整理仕訳フラグ（falseまたは未指定の場合: 日常仕訳） |
**txn_number** | **string** | 仕訳番号 |
**details** | [**\OpenAPI\Client\Model\ManualJournalDetails[]**](ManualJournalDetails.md) | 貸借行一覧（配列）: 貸借合わせて100行まで登録できます。 |
**receipt_ids** | **int[]** | 証憑ファイルID（ファイルボックスのファイルID） | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
