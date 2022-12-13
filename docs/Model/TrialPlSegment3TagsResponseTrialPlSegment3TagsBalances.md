# # TrialPlSegment3TagsResponseTrialPlSegment3TagsBalances

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_item_id** | **int** | 勘定科目ID(勘定科目の時のみ含まれる) | [optional]
**account_item_name** | **string** | 勘定科目名(勘定科目の時のみ含まれる) | [optional]
**account_group_name** | **string** | 決算書表示名(account_item_display_type:group指定時に決算書表示名の時のみ含まれる) | [optional]
**segment_3_tags** | [**\OpenAPI\Client\Model\TrialPlSegment3TagsResponseTrialPlSegment3TagsSegment3Tags[]**](TrialPlSegment3TagsResponseTrialPlSegment3TagsSegment3Tags.md) | セグメント3タグ | [optional]
**account_category_name** | **string** | 勘定科目カテゴリー名 | [optional]
**total_line** | **bool** | 合計行(勘定科目カテゴリーの時のみ含まれる) | [optional]
**hierarchy_level** | **int** | 階層レベル | [optional]
**parent_account_category_name** | **string** | 上位勘定科目カテゴリー名(勘定科目カテゴリーの時のみ、上層が存在する場合含まれる) | [optional]
**closing_balance** | **int** | 期末残高 | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
