# # DealDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | +更新の明細行ID |
**entry_side** | **string** | 貸借(貸方: credit, 借方: debit) |
**account_item_id** | **int** | 勘定科目ID |
**tax_code** | **int** | 税区分コード |
**item_id** | **int** | 品目ID | [optional]
**section_id** | **int** | 部門ID | [optional]
**tag_ids** | **int[]** |  |
**segment_1_tag_id** | **int** | セグメント１ID | [optional]
**segment_2_tag_id** | **int** | セグメント２ID | [optional]
**segment_3_tag_id** | **int** | セグメント３ID | [optional]
**amount** | **int** | 金額（税込で指定してください） |
**vat** | **int** | 消費税額（指定しない場合は自動で計算されます） |
**description** | **string** | 備考 | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
