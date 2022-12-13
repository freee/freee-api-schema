# # AccountItemsResponseAccountItems

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 勘定科目ID |
**name** | **string** | 勘定科目名 (30文字以内) |
**tax_code** | **int** | 税区分コード |
**shortcut** | **string** | ショートカット1 (20文字以内) | [optional]
**shortcut_num** | **string** | ショートカット2(勘定科目コード) (20文字以内) | [optional]
**default_tax_code** | **int** | デフォルト設定がされている税区分コード |
**account_category** | **string** | 勘定科目カテゴリー |
**account_category_id** | **int** | 勘定科目のカテゴリーID |
**categories** | **string[]** |  |
**available** | **bool** | 勘定科目の使用設定（true: 使用する、false: 使用しない） |
**walletable_id** | **int** | 口座ID |
**group_name** | **string** | 決算書表示名（小カテゴリー） | [optional]
**corresponding_income_name** | **string** | 収入取引相手勘定科目名 | [optional]
**corresponding_income_id** | **int** | 収入取引相手勘定科目ID | [optional]
**corresponding_expense_name** | **string** | 支出取引相手勘定科目名 | [optional]
**corresponding_expense_id** | **int** | 支出取引相手勘定科目ID | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
