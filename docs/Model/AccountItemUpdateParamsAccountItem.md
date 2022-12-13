# # AccountItemUpdateParamsAccountItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | 勘定科目名 (30文字以内) 口座に紐付かない勘定科目の更新時は必須です。 口座に紐付く勘定科目の更新時は指定することができません。 | [optional]
**shortcut** | **string** | ショートカット1 (20文字以内) | [optional]
**shortcut_num** | **string** | ショートカット2(勘定科目コード)(20文字以内) | [optional]
**tax_code** | **int** | 税区分コード |
**group_name** | **string** | 決算書表示名（小カテゴリー） Selectablesフォーム用選択項目情報エンドポイント(account_groups.name)で取得可能です |
**account_category_id** | **int** | 勘定科目カテゴリーID Selectablesフォーム用選択項目情報エンドポイント(account_groups.account_category_id)で取得可能です |
**corresponding_income_id** | **int** | 収入取引相手勘定科目ID |
**corresponding_expense_id** | **int** | 支出取引相手勘定科目ID |
**accumulated_dep_account_item_id** | **int** | 減価償却累計額勘定科目ID（法人のみ利用可能） | [optional]
**searchable** | **int** | 検索可能:2, 検索不可：3(登録時未指定の場合は2で登録されます。更新時未指定の場合はsearchableは変更されません。) | [optional]
**items** | [**\OpenAPI\Client\Model\AccountItemCreateParamsAccountItemItems[]**](AccountItemCreateParamsAccountItemItems.md) | 品目 | [optional]
**partners** | [**\OpenAPI\Client\Model\AccountItemCreateParamsAccountItemItems[]**](AccountItemCreateParamsAccountItemItems.md) | 取引先 | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
