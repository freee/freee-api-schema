# # WalletTxn

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 明細ID |
**company_id** | **int** | 事業所ID |
**date** | **string** | 取引日(yyyy-mm-dd) |
**amount** | **int** | 取引金額 |
**due_amount** | **int** | 未決済金額 |
**balance** | **int** | 残高(銀行口座等) |
**entry_side** | **string** | 入金／出金 (入金: income, 出金: expense) |
**walletable_type** | **string** | 口座区分 (銀行口座: bank_account, クレジットカード: credit_card, 現金: wallet) |
**walletable_id** | **int** | 口座ID |
**description** | **string** | 取引内容 |
**status** | **int** | 明細のステータス（消込待ち: 1, 消込済み: 2, 無視: 3, 消込中: 4, 対象外: 6） |
**rule_matched** | **bool** | 登録時に&lt;a href&#x3D;\&quot;https://support.freee.co.jp/hc/ja/articles/202848350-明細の自動登録ルールを設定する\&quot; target&#x3D;\&quot;_blank\&quot;&gt;自動登録ルールの設定&lt;/a&gt;が適用され、登録処理が実行された場合、 trueになります。〜を推測する、〜の消込をするの条件の場合は一致してもfalseになります。 |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
