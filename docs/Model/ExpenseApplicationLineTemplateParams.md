# # ExpenseApplicationLineTemplateParams

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company_id** | **int** | 事業所ID |
**name** | **string** | 経費科目名 (100文字以内) |
**account_item_id** | **int** | 勘定科目ID |
**item_id** | **int** | 品目ID | [optional]
**tax_code** | **int** | 税区分コード（税区分のdisplay_categoryがtax_5: 5%表示の税区分, tax_r8: 軽減税率8%表示の税区分に該当するtax_codeのみ利用可能です。税区分のdisplay_categoryは /taxes/companies/{:company_id}のAPIから取得可能です。） |
**description** | **string** | 経費科目の説明 (1000文字以内) | [optional]
**line_description** | **string** | 内容の補足 (1000文字以内) | [optional]
**required_receipt** | **bool** | 添付ファイルの必須/任意&lt;br&gt; falseを指定した時は申請時の領収書の添付を任意とします。&lt;br&gt; trueを指定した時は申請時の領収書の添付を必須とします。&lt;br&gt; 未指定の時は申請時の領収書の添付を任意とします。 | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
