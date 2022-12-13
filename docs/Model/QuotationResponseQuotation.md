# # QuotationResponseQuotation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | 見積書ID |
**company_id** | **int** | 事業所ID |
**issue_date** | **string** | 見積日 (yyyy-mm-dd) |
**partner_id** | **int** | 取引先ID |
**partner_code** | **string** | 取引先コード | [optional]
**quotation_number** | **string** | 見積書番号 |
**title** | **string** | タイトル | [optional]
**total_amount** | **int** | 合計金額 |
**total_vat** | **int** | 消費税 | [optional]
**sub_total** | **int** | 小計 | [optional]
**description** | **string** | 概要 | [optional]
**quotation_status** | **string** | 見積書ステータス  (unsubmitted: 送付待ち, submitted: 送付済み, all: 全て) |
**web_published_at** | **string** | Web共有日時(最新) | [optional]
**web_downloaded_at** | **string** | Web共有ダウンロード日時(最新) | [optional]
**web_confirmed_at** | **string** | Web共有取引先確認日時(最新) | [optional]
**mail_sent_at** | **string** | メール送信日時(最新) | [optional]
**partner_name** | **string** | 取引先名 | [optional]
**partner_display_name** | **string** | 見積書に表示する取引先名 | [optional]
**partner_title** | **string** | 敬称（御中、様、(空白)の3つから選択） |
**partner_zipcode** | **string** | 郵便番号 | [optional]
**partner_prefecture_code** | **int** | 都道府県コード（-1: 設定しない、0:北海道、1:青森、2:岩手、3:宮城、4:秋田、5:山形、6:福島、7:茨城、8:栃木、9:群馬、10:埼玉、11:千葉、12:東京、13:神奈川、14:新潟、15:富山、16:石川、17:福井、18:山梨、19:長野、20:岐阜、21:静岡、22:愛知、23:三重、24:滋賀、25:京都、26:大阪、27:兵庫、28:奈良、29:和歌山、30:鳥取、31:島根、32:岡山、33:広島、34:山口、35:徳島、36:香川、37:愛媛、38:高知、39:福岡、40:佐賀、41:長崎、42:熊本、43:大分、44:宮崎、45:鹿児島、46:沖縄 | [optional]
**partner_prefecture_name** | **string** | 都道府県 | [optional]
**partner_address1** | **string** | 市区町村・番地 | [optional]
**partner_address2** | **string** | 建物名・部屋番号など | [optional]
**partner_contact_info** | **string** | 取引先担当者名 | [optional]
**company_name** | **string** | 事業所名 |
**company_zipcode** | **string** | 郵便番号 | [optional]
**company_prefecture_code** | **int** | 都道府県コード（-1: 設定しない、0:北海道、1:青森、2:岩手、3:宮城、4:秋田、5:山形、6:福島、7:茨城、8:栃木、9:群馬、10:埼玉、11:千葉、12:東京、13:神奈川、14:新潟、15:富山、16:石川、17:福井、18:山梨、19:長野、20:岐阜、21:静岡、22:愛知、23:三重、24:滋賀、25:京都、26:大阪、27:兵庫、28:奈良、29:和歌山、30:鳥取、31:島根、32:岡山、33:広島、34:山口、35:徳島、36:香川、37:愛媛、38:高知、39:福岡、40:佐賀、41:長崎、42:熊本、43:大分、44:宮崎、45:鹿児島、46:沖縄 | [optional]
**company_prefecture_name** | **string** | 都道府県 | [optional]
**company_address1** | **string** | 市区町村・番地 | [optional]
**company_address2** | **string** | 建物名・部屋番号など | [optional]
**company_contact_info** | **string** | 事業所担当者名 | [optional]
**message** | **string** | メッセージ | [optional]
**notes** | **string** | 備考 | [optional]
**quotation_layout** | **string** | 見積書レイアウト * &#x60;default_classic&#x60; - レイアウト１/クラシック (デフォルト)  * &#x60;standard_classic&#x60; - レイアウト２/クラシック  * &#x60;envelope_classic&#x60; - 封筒１/クラシック  * &#x60;default_modern&#x60; - レイアウト１/モダン  * &#x60;standard_modern&#x60; - レイアウト２/モダン  * &#x60;envelope_modern&#x60; - 封筒/モダン |
**tax_entry_method** | **string** | 見積書の消費税計算方法(inclusive: 内税, exclusive: 外税) |
**quotation_contents** | [**\OpenAPI\Client\Model\QuotationIndexResponseQuotationContents[]**](QuotationIndexResponseQuotationContents.md) | 見積内容 | [optional]
**total_amount_per_vat_rate** | [**\OpenAPI\Client\Model\InvoiceIndexResponseTotalAmountPerVatRate**](InvoiceIndexResponseTotalAmountPerVatRate.md) |  |
**related_invoice_id** | **int** | 関連する請求書ID&lt;br&gt; 下記で作成したものが該当します。  &lt;a href&#x3D;\&quot;https://support.freee.co.jp/hc/ja/articles/203318410#1-2\&quot; target&#x3D;\&quot;_blank\&quot;&gt;見積書・納品書を納品書・請求書に変換する&lt;/a&gt;&lt;br&gt; &lt;a href&#x3D;\&quot;https://support.freee.co.jp/hc/ja/articles/209076226\&quot; target&#x3D;\&quot;_blank\&quot;&gt;複数の見積書・納品書から合算請求書を作成する&lt;/a&gt;&lt;br&gt; | [optional]
**related_quotation_ids** | **int[]** | 関連する見積書ID(配列)&lt;br&gt; 下記で作成したものが該当します。  &lt;a href&#x3D;\&quot;https://support.freee.co.jp/hc/ja/articles/203318410#1-2\&quot; target&#x3D;\&quot;_blank\&quot;&gt;見積書・納品書を納品書・請求書に変換する&lt;/a&gt;&lt;br&gt; &lt;a href&#x3D;\&quot;https://support.freee.co.jp/hc/ja/articles/209076226\&quot; target&#x3D;\&quot;_blank\&quot;&gt;複数の見積書・納品書から合算請求書を作成する&lt;/a&gt;&lt;br&gt; | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
