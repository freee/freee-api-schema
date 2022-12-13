# # ExpenseApplicationsIndexResponseExpenseApplications

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
**expense_application_lines** | [**\OpenAPI\Client\Model\ExpenseApplicationsIndexResponseExpenseApplicationLines[]**](ExpenseApplicationsIndexResponseExpenseApplicationLines.md) | 経費申請の項目行一覧（配列） |
**deal_id** | **int** | 取引ID (申請ステータス:statusがapprovedで、取引が存在する時のみdeal_idが表示されます) |
**deal_status** | **string** | 取引ステータス (申請ステータス:statusがapprovedで、取引が存在する時のみdeal_statusが表示されます settled:精算済み, unsettled:清算待ち) |
**applicant_id** | **int** | 申請者のユーザーID |
**application_number** | **string** | 申請No. |
**current_step_id** | **int** | 現在承認ステップID | [optional]
**current_round** | **int** | 現在のround。差し戻し等により申請がstepの最初からやり直しになるとroundの値が増えます。 | [optional]
**segment_1_tag_id** | **int** | セグメント１ID | [optional]
**segment_2_tag_id** | **int** | セグメント２ID | [optional]
**segment_3_tag_id** | **int** | セグメント３ID | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
