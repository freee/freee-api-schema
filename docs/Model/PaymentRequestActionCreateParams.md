# # PaymentRequestActionCreateParams

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company_id** | **int** | 事業所ID |
**approval_action** | **string** | 操作(approve: 承認する、force_approve: 代理承認する、cancel: 申請を取り消す、reject: 却下する、feedback: 申請者へ差し戻す、force_feedback: 承認済み・却下済みを取り消す) |
**target_step_id** | **int** | 対象承認ステップID 支払依頼の取得APIレスポンス.current_step_idを送信してください。 |
**target_round** | **int** | 対象round。差し戻し等により申請がstepの最初からやり直しになるとroundの値が増えます。支払依頼の取得APIレスポンス.current_roundを送信してください。 |
**next_approver_id** | **int** | 次ステップの承認者のユーザーID | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
