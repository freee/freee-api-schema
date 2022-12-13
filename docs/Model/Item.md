# # Item

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 品目ID |
**company_id** | **int** | 事業所ID |
**name** | **string** | 品目名 (30文字以内) |
**update_date** | **string** | 更新日(yyyy-mm-dd) |
**available** | **bool** | 品目の使用設定（true: 使用する、false: 使用しない） &lt;br&gt; &lt;ul&gt;   &lt;li&gt;     本APIでitemを作成した場合はtrueになります。   &lt;/li&gt;   &lt;li&gt;     falseにする場合はWeb画面から変更できます。   &lt;/li&gt;   &lt;li&gt;     trueの場合、Web画面での取引登録時などに入力候補として表示されます。   &lt;/li&gt;   &lt;li&gt;     falseの場合、品目自体は削除せず、Web画面での取引登録時などに入力候補として表示されません。ただし取引（収入／支出）の作成APIなどでfalseの品目をパラメータに指定すれば、取引などにfalseの品目を設定できます。   &lt;/li&gt; &lt;/ul&gt; |
**shortcut1** | **string** | ショートカット１ (20文字以内) | [optional]
**shortcut2** | **string** | ショートカット２ (20文字以内) | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
