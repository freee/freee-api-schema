# # TrialPlSegment1TagsResponseTrialPlSegment1Tags

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company_id** | **int** | 事業所ID |
**segment_1_tag_ids** | **string** | 出力するセグメント1の指定 |
**fiscal_year** | **int** | 会計年度(条件に指定した時、または条件に月、日条件がない時のみ含まれる） | [optional]
**start_month** | **int** | 発生月で絞込：開始会計月(1-12)(条件に指定した時のみ含まれる） | [optional]
**end_month** | **int** | 発生月で絞込：終了会計月(1-12)(条件に指定した時のみ含まれる） | [optional]
**start_date** | **string** | 発生日で絞込：開始日(yyyy-mm-dd)(条件に指定した時のみ含まれる） | [optional]
**end_date** | **string** | 発生日で絞込：終了日(yyyy-mm-dd)(条件に指定した時のみ含まれる） | [optional]
**account_item_display_type** | **string** | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）(条件に指定した時のみ含まれる） | [optional]
**breakdown_display_type** | **string** | 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item）(条件に指定した時のみ含まれる） | [optional]
**partner_id** | **int** | 取引先ID(条件に指定した時のみ含まれる） | [optional]
**partner_code** | **string** | 取引先コード(条件に指定した時のみ含まれる） | [optional]
**item_id** | **int** | 品目ID(条件に指定した時のみ含まれる） | [optional]
**section_id** | **int** | 部門ID(条件に指定した時のみ含まれる） | [optional]
**adjustment** | **string** | 決算整理仕訳のみ: only, 決算整理仕訳以外: without(条件に指定した時のみ含まれる） | [optional]
**cost_allocation** | **string** | 配賦仕訳のみ：only,配賦仕訳以外：without(条件に指定した時のみ含まれる） | [optional]
**approval_flow_status** | **string** | 未承認を除く: without_in_progress (デフォルト), 全てのステータス: all(条件に指定した時のみ含まれる） | [optional]
**created_at** | **string** | 作成日時 | [optional]
**balances** | [**\OpenAPI\Client\Model\TrialPlSegment1TagsResponseTrialPlSegment1TagsBalances[]**](TrialPlSegment1TagsResponseTrialPlSegment1TagsBalances.md) |  |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
