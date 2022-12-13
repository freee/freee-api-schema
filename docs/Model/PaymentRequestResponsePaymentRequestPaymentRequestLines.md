# # PaymentRequestResponsePaymentRequestPaymentRequestLines

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 支払依頼の項目行ID |
**line_type** | **string** | 行の種類 (deal_line: 支払依頼, withholding_tax: 源泉徴収税) |
**description** | **string** | 内容 |
**amount** | **int** | 金額 |
**account_item_id** | **int** | 勘定科目ID |
**tax_code** | **int** | 税区分コード |
**item_id** | **int** | 品目ID |
**section_id** | **int** | 部門ID |
**tag_ids** | **int[]** | メモタグID |
**segment_1_tag_id** | **int** | セグメント１ID。セグメント１が使用可能なプランの時のみレスポンスに含まれます。 | [optional]
**segment_2_tag_id** | **int** | セグメント２ID。セグメント２が使用可能なプランの時のみレスポンスに含まれます。 | [optional]
**segment_3_tag_id** | **int** | セグメント３ID。セグメント３が使用可能なプランの時のみレスポンスに含まれます。 | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
