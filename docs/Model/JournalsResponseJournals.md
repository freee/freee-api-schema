# # JournalsResponseJournals

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 受け付けID |
**messages** | **string[]** |  | [optional]
**company_id** | **int** | 事業所ID |
**download_type** | **string** | ダウンロード形式 | [optional]
**start_date** | **string** | 取得開始日 (yyyy-mm-dd) | [optional]
**end_date** | **string** | 取得終了日 (yyyy-mm-dd) | [optional]
**visible_tags** | **string[]** |  | [optional]
**visible_ids** | **string[]** |  | [optional]
**status_url** | **string** | ステータス確認用URL | [optional]
**up_to_date** | **bool** | 集計結果が最新かどうか | [optional]
**up_to_date_reasons** | [**\OpenAPI\Client\Model\JournalsResponseJournalsUpToDateReasons[]**](JournalsResponseJournalsUpToDateReasons.md) | 集計が最新でない場合の要因情報 | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
