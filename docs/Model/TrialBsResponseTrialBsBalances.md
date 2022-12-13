# # TrialBsResponseTrialBsBalances

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_item_id** | **int** | 勘定科目ID(勘定科目の時のみ含まれる) | [optional]
**account_item_name** | **string** | 勘定科目名(勘定科目の時のみ含まれる) | [optional]
**account_group_name** | **string** | 決算書表示名(account_item_display_type:group指定時に決算書表示名の時のみ含まれる) | [optional]
**partners** | [**\OpenAPI\Client\Model\TrialBsResponseTrialBsPartners[]**](TrialBsResponseTrialBsPartners.md) | breakdown_display_type:partner, account_item_display_type:account_item指定時のみ含まれる | [optional]
**items** | [**\OpenAPI\Client\Model\TrialBsResponseTrialBsItems[]**](TrialBsResponseTrialBsItems.md) | breakdown_display_type:item, account_item_display_type:account_item指定時のみ含まれる | [optional]
**sections** | [**\OpenAPI\Client\Model\TrialBsResponseTrialBsSections[]**](TrialBsResponseTrialBsSections.md) | breakdown_display_type:section, account_item_display_type:account_item指定時のみ含まれる | [optional]
**segment_1_tags** | [**\OpenAPI\Client\Model\TrialBsResponseTrialBsSegment1Tags[]**](TrialBsResponseTrialBsSegment1Tags.md) | breakdown_display_type:segment_1_tag, account_item_display_type:account_item指定時のみ含まれる | [optional]
**segment_2_tags** | [**\OpenAPI\Client\Model\TrialBsResponseTrialBsSegment2Tags[]**](TrialBsResponseTrialBsSegment2Tags.md) | breakdown_display_type:segment_2_tag, account_item_display_type:account_item指定時のみ含まれる | [optional]
**segment_3_tags** | [**\OpenAPI\Client\Model\TrialBsResponseTrialBsSegment3Tags[]**](TrialBsResponseTrialBsSegment3Tags.md) | breakdown_display_type:segment_3_tag, account_item_display_type:account_item指定時のみ含まれる | [optional]
**account_category_name** | **string** | 勘定科目カテゴリー名 | [optional]
**total_line** | **bool** | 合計行(勘定科目カテゴリーの時のみ含まれる) | [optional]
**hierarchy_level** | **int** | 階層レベル | [optional]
**parent_account_category_name** | **string** | 上位勘定科目カテゴリー名(勘定科目カテゴリーの時のみ、上層が存在する場合含まれる) | [optional]
**opening_balance** | **int** | 期首残高 | [optional]
**debit_amount** | **int** | 借方金額 | [optional]
**credit_amount** | **int** | 貸方金額 | [optional]
**closing_balance** | **int** | 期末残高 | [optional]
**composition_ratio** | **float** | 構成比 | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
