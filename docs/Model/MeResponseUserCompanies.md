# # MeResponseUserCompanies

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 事業所ID |
**display_name** | **string** | 表示名 |
**role** | **string** | ユーザーの権限 &lt;ul&gt; &lt;li&gt;admin: 管理者&lt;/li&gt; &lt;li&gt;simple_accounting: 一般&lt;/li&gt; &lt;li&gt;self_only: 取引登録のみ&lt;/li&gt; &lt;li&gt;read_only: 閲覧のみ&lt;/li&gt; &lt;li&gt;workflow: 申請・承認&lt;/li&gt; &lt;/ul&gt; |
**use_custom_role** | **bool** | カスタム権限（true: 使用する、false: 使用しない） |
**advisor_id** | **int** | アドバイザープロファイルID（アドバイザー事業所で無い場合にnullになります） | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
