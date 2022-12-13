# # ApprovalRequestResponseApprovalRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 各種申請ID |
**company_id** | **int** | 事業所ID |
**application_date** | **string** | 申請日 (yyyy-mm-dd) |
**title** | **string** | 申請タイトル |
**applicant_id** | **int** | 申請者のユーザーID |
**approvers** | [**\OpenAPI\Client\Model\ExpenseApplicationResponseExpenseApplicationApprovers[]**](ExpenseApplicationResponseExpenseApplicationApprovers.md) | 承認者（配列）   承認ステップのresource_typeがunspecified (指定なし)の場合はapproversはレスポンスに含まれません。   しかし、resource_typeがunspecifiedの承認ステップにおいて誰かが承認・却下・差し戻しのいずれかのアクションを取った後は、   approversはレスポンスに含まれるようになります。   その場合approversにはアクションを行ったステップのIDとアクションを行ったユーザーのIDが含まれます。 |
**application_number** | **string** | 申請No. |
**status** | **string** | 申請ステータス(draft:下書き, in_progress:申請中, approved:承認済, rejected:却下, feedback:差戻し) |
**request_items** | [**\OpenAPI\Client\Model\ApprovalRequestsIndexResponseRequestItems[]**](ApprovalRequestsIndexResponseRequestItems.md) | 各種申請の項目一覧（配列） |
**form_id** | **int** | 申請フォームID |
**approval_flow_route_id** | **int** | 申請経路ID |
**comments** | [**\OpenAPI\Client\Model\ExpenseApplicationResponseExpenseApplicationComments[]**](ExpenseApplicationResponseExpenseApplicationComments.md) | 各種申請のコメント一覧（配列） |
**approval_flow_logs** | [**\OpenAPI\Client\Model\ExpenseApplicationResponseExpenseApplicationApprovalFlowLogs[]**](ExpenseApplicationResponseExpenseApplicationApprovalFlowLogs.md) | 各種申請の承認履歴（配列） |
**current_step_id** | **int** | 現在承認ステップID |
**current_round** | **int** | 現在のround。差し戻し等により申請がstepの最初からやり直しになるとroundの値が増えます。 |
**approval_request_form** | [**\OpenAPI\Client\Model\ApprovalRequestResponseApprovalRequestApprovalRequestForm**](ApprovalRequestResponseApprovalRequestApprovalRequestForm.md) |  |
**deal_id** | **int** | 取引ID (申請ステータス:statusがapprovedで、取引が存在する時のみdeal_idが表示されます) |
**manual_journal_id** | **int** | 振替伝票のID (申請ステータス:statusがapprovedで、関連する振替伝票が存在する時のみmanual_journal_idが表示されます)  &lt;a href&#x3D;\&quot;https://support.freee.co.jp/hc/ja/articles/115003827683-#5\&quot; target&#x3D;\&quot;_blank\&quot;&gt;承認された各種申請から支払依頼等を作成する&lt;/a&gt; |
**deal_status** | **string** | 取引ステータス (申請ステータス:statusがapprovedで、取引が存在する時のみdeal_statusが表示されます settled:決済済み, unsettled:未決済) |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
