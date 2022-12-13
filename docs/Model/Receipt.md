# # Receipt

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 証憑ファイルID |
**status** | **string** | ステータス(confirmed:確認済み、deleted:削除済み、ignored:無視) |
**description** | **string** | メモ | [optional]
**mime_type** | **string** | MIMEタイプ |
**issue_date** | **string** | 発生日 | [optional]
**origin** | **string** | アップロード元種別 |
**created_at** | **string** | 作成日時（ISO8601形式） |
**file_src** | **string** | ファイルのダウンロードURL（freeeにログインした状態でのみ閲覧可能です。） &lt;br&gt; &lt;br&gt; file_srcは廃止予定の属性になります。&lt;br&gt; file_srcに替わり、証憑ファイルのダウンロード APIをご利用ください。&lt;br&gt; 証憑ファイルのダウンロードAPIを利用することで、以下のようになります。 &lt;ul&gt;   &lt;li&gt;アプリケーション利用者はfreee APIアプリケーションにログインしていれば、証憑ダウンロード毎にfreeeに改めてログインすることなくファイルが参照できるようになります。&lt;/li&gt; &lt;/ul&gt; |
**user** | [**\OpenAPI\Client\Model\DealCreateResponseDealUser**](DealCreateResponseDealUser.md) |  |
**receipt_metadatum** | [**\OpenAPI\Client\Model\ReceiptUpdateParamsReceiptMetadatum**](ReceiptUpdateParamsReceiptMetadatum.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
