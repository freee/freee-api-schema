# # PaymentRequestCreateParams

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company_id** | **int** | 事業所ID |
**title** | **string** | 申請タイトル |
**application_date** | **string** | 申請日 (yyyy-mm-dd)&lt;br&gt; 指定しない場合は当日の日付が登録されます。 | [optional]
**description** | **string** | 備考 | [optional]
**payment_request_lines** | [**\OpenAPI\Client\Model\PaymentRequestCreateParamsPaymentRequestLines[]**](PaymentRequestCreateParamsPaymentRequestLines.md) | 支払依頼の項目行一覧（配列） |
**approver_id** | **int** | 承認者のユーザーID&lt;br&gt; 「承認者を指定」の経路を申請経路として使用する場合に指定してください。&lt;br&gt; 指定する承認者のユーザーIDは、申請経路APIを利用して取得してください。 | [optional]
**approval_flow_route_id** | **int** | 申請経路ID&lt;br&gt; 指定する申請経路IDは、申請経路APIを利用して取得してください。 |
**parent_id** | **int** | 親申請ID(法人向け エンタープライズプラン、プロフェッショナルプラン)&lt;br&gt; &lt;ul&gt;   &lt;li&gt;承認済みの既存各種申請IDのみ指定可能です。&lt;/li&gt;   &lt;li&gt;各種申請一覧APIを利用して取得してください。&lt;/li&gt; &lt;/ul&gt; | [optional]
**draft** | **bool** | 支払依頼のステータス&lt;br&gt; falseを指定した時は申請中（in_progress）で支払依頼を作成します。&lt;br&gt; trueを指定した時は下書き（draft）で支払依頼を作成します。 |
**document_code** | **string** | 請求書番号（255文字以内） | [optional]
**receipt_ids** | **int[]** | 証憑ファイルID（ファイルボックスのファイルID）（配列） | [optional]
**issue_date** | **string** | 発生日 (yyyy-mm-dd) |
**payment_date** | **string** | 支払期限 (yyyy-mm-dd) | [optional]
**payment_method** | **string** | &#39;支払方法(none: 指定なし, domestic_bank_transfer: 国内振込, abroad_bank_transfer: 国外振込, account_transfer: 口座振替, credit_card: クレジットカード)&#39;&lt;br&gt; &#39;デフォルトは none: 指定なし です。&#39; | [optional]
**partner_id** | **int** | 支払先の取引先ID | [optional]
**partner_code** | **string** | 支払先の取引先コード&lt;br&gt; 支払先の取引先ID指定時には無効 | [optional]
**bank_code** | **string** | 銀行コード（半角数字1桁〜4桁）&lt;br&gt; 支払先指定時には無効 | [optional]
**bank_name** | **string** | 銀行名（255文字以内）&lt;br&gt; 支払先指定時には無効 | [optional]
**bank_name_kana** | **string** | 銀行名（カナ）（15文字以内）&lt;br&gt; 支払先指定時には無効 | [optional]
**branch_code** | **string** | 支店番号（半角数字1桁〜3桁）&lt;br&gt; 支払先指定時には無効 | [optional]
**branch_name** | **string** | 支店名（255文字以内）&lt;br&gt; 支払先指定時には無効 | [optional]
**branch_kana** | **string** | 支店名（カナ）（15文字以内）&lt;br&gt; 指定可能な文字は、英数・カナ・丸括弧・ハイフン・スペースのみです。&lt;br&gt; 支払先指定時には無効 | [optional]
**account_name** | **string** | 受取人名（カナ）（48文字以内）&lt;br&gt; 支払先指定時には無効 | [optional]
**account_number** | **string** | 口座番号（半角数字1桁〜7桁）&lt;br&gt; 支払先指定時には無効 | [optional]
**account_type** | **string** | &#39;口座種別(ordinary: 普通、checking: 当座、earmarked: 納税準備預金、savings: 貯蓄、other: その他)&#39;&lt;br&gt; &#39;支払先指定時には無効&#39;&lt;br&gt; &#39;デフォルトは ordinary: 普通 です&#39; | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
