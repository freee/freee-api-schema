# # ApprovalRequestFormIndexResponseApprovalRequestForms

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 申請フォームID |
**company_id** | **int** | 事業所ID |
**name** | **string** | 申請フォームの名前 |
**description** | **string** | 申請フォームの説明 |
**status** | **string** | ステータス(draft: 申請で使用しない、active: 申請で使用する) |
**created_date** | **string** | 作成日時 |
**form_order** | **int** | 表示順（申請者が選択する申請フォームの表示順を設定できます。小さい数ほど上位に表示されます。（0を除く整数のみ。マイナス不可）未入力の場合、表示順が後ろになります。同じ数字が入力された場合、登録順で表示されます。） |
**route_setting_count** | **int** | 適用された経路数 |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
