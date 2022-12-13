# # ManualJournalDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 貸借行ID |
**entry_side** | **string** | 貸借(貸方: credit, 借方: debit) |
**account_item_id** | **int** | 勘定科目ID |
**tax_code** | **int** | 税区分コード |
**partner_id** | **int** | 取引先ID |
**partner_name** | **string** | 取引先名 |
**partner_code** | **string** | 取引先コード | [optional]
**partner_long_name** | **string** | 正式名称（255文字以内） |
**item_id** | **int** | 品目ID |
**item_name** | **string** | 品目 |
**section_id** | **int** | 部門ID |
**section_name** | **string** | 部門 |
**tag_ids** | **int[]** |  |
**tag_names** | **string[]** |  |
**segment_1_tag_id** | **int** | セグメント１ID | [optional]
**segment_1_tag_name** | **string** | セグメント１ | [optional]
**segment_2_tag_id** | **int** | セグメント２ID | [optional]
**segment_2_tag_name** | **string** | セグメント２ | [optional]
**segment_3_tag_id** | **int** | セグメント３ID | [optional]
**segment_3_tag_name** | **string** | セグメント３ | [optional]
**amount** | **int** | 金額（税込で指定してください） |
**vat** | **int** | 消費税額（指定しない場合は自動で計算されます） |
**description** | **string** | 備考 |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
