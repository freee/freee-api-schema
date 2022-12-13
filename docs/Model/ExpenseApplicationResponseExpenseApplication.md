# # ExpenseApplicationResponseExpenseApplication

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 経費申請ID |
**company_id** | **int** | 事業所ID |
**title** | **string** | 申請タイトル |
**issue_date** | **string** | 申請日 (yyyy-mm-dd) |
**description** | **string** | 備考 | [optional]
**total_amount** | **int** | 合計金額 | [optional]
**status** | **string** | 申請ステータス(draft:下書き, in_progress:申請中, approved:承認済, rejected:却下, feedback:差戻し) |
**section_id** | **int** | 部門ID | [optional]
**tag_ids** | **int[]** | メモタグID | [optional]
**expense_application_lines** | [**\OpenAPI\Client\Model\ExpenseApplicationResponseExpenseApplicationExpenseApplicationLines[]**](ExpenseApplicationResponseExpenseApplicationExpenseApplicationLines.md) | 経費申請の項目行一覧（配列） |
**deal_id** | **int** | 取引ID (申請ステータス:statusがapprovedで、取引が存在する時のみdeal_idが表示されます) |
**deal_status** | **string** | 取引ステータス (申請ステータス:statusがapprovedで、取引が存在する時のみdeal_statusが表示されます settled:精算済み, unsettled:清算待ち) |
**applicant_id** | **int** | 申請者のユーザーID |
**approvers** | [**\OpenAPI\Client\Model\ExpenseApplicationResponseExpenseApplicationApprovers[]**](ExpenseApplicationResponseExpenseApplicationApprovers.md) | 承認者（配列）   承認ステップのresource_typeがunspecified (指定なし)の場合はapproversはレスポンスに含まれません。   しかし、resource_typeがunspecifiedの承認ステップにおいて誰かが承認・却下・差し戻しのいずれかのアクションを取った後は、   approversはレスポンスに含まれるようになります。   その場合approversにはアクションを行ったステップのIDとアクションを行ったユーザーのIDが含まれます。 |
**application_number** | **string** | 申請No. |
**approval_flow_route_id** | **int** | 申請経路ID |
**comments** | [**\OpenAPI\Client\Model\ExpenseApplicationResponseExpenseApplicationComments[]**](ExpenseApplicationResponseExpenseApplicationComments.md) | 経費申請のコメント一覧（配列） |
**approval_flow_logs** | [**\OpenAPI\Client\Model\ExpenseApplicationResponseExpenseApplicationApprovalFlowLogs[]**](ExpenseApplicationResponseExpenseApplicationApprovalFlowLogs.md) | 経費申請の承認履歴（配列） |
**current_step_id** | **int** | 現在承認ステップID |
**current_round** | **int** | 現在のround。差し戻し等により申請がstepの最初からやり直しになるとroundの値が増えます。 |
**segment_1_tag_id** | **int** | セグメント１ID。セグメント１が使用可能なプランの時のみレスポンスに含まれます。 | [optional]
**segment_2_tag_id** | **int** | セグメント２ID。セグメント２が使用可能なプランの時のみレスポンスに含まれます。 | [optional]
**segment_3_tag_id** | **int** | セグメント３ID。セグメント３が使用可能なプランの時のみレスポンスに含まれます。 | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
