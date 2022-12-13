# # ApprovalFlowRouteResponseApprovalFlowRoute

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 申請経路ID |
**name** | **string** | 申請経路名 | [optional]
**description** | **string** | 申請経路の説明 | [optional]
**user_id** | **int** | 更新したユーザーのユーザーID | [optional]
**definition_system** | **bool** | システム作成の申請経路かどうか | [optional]
**first_step_id** | **int** | 最初の承認ステップのID | [optional]
**usages** | **string[]** | 申請種別（申請経路を使用できる申請種別を示します。例えば、ApprovalRequest の場合は、各種申請で使用できる申請経路です。） * &#x60;TxnApproval&#x60; - 仕訳承認 * &#x60;ExpenseApplication&#x60; - 経費精算 * &#x60;PaymentRequest&#x60; - 支払依頼 * &#x60;ApprovalRequest&#x60; - 各種申請 * &#x60;DocApproval&#x60; - 請求書等 (見積書・納品書・請求書・発注書) | [optional]
**request_form_ids** | **int[]** | 申請経路で利用できる申請フォームID配列 |
**steps** | [**\OpenAPI\Client\Model\ApprovalFlowRouteResponseApprovalFlowRouteSteps[]**](ApprovalFlowRouteResponseApprovalFlowRouteSteps.md) | 承認ステップ（配列） | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
