# OpenAPI\Client\TrialBalanceApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTrialBs()**](TrialBalanceApi.md#getTrialBs) | **GET** /api/1/reports/trial_bs | 貸借対照表の取得
[**getTrialBsThreeYears()**](TrialBalanceApi.md#getTrialBsThreeYears) | **GET** /api/1/reports/trial_bs_three_years | 貸借対照表(３期間比較)の取得
[**getTrialBsTwoYears()**](TrialBalanceApi.md#getTrialBsTwoYears) | **GET** /api/1/reports/trial_bs_two_years | 貸借対照表(前年比較)の取得
[**getTrialCr()**](TrialBalanceApi.md#getTrialCr) | **GET** /api/1/reports/trial_cr | 製造原価報告書の取得
[**getTrialCrSections()**](TrialBalanceApi.md#getTrialCrSections) | **GET** /api/1/reports/trial_cr_sections | 製造原価報告書(部門比較)の取得
[**getTrialCrSegment1Tags()**](TrialBalanceApi.md#getTrialCrSegment1Tags) | **GET** /api/1/reports/trial_cr_segment_1_tags | 製造原価報告書(セグメント1比較)の取得
[**getTrialCrSegment2Tags()**](TrialBalanceApi.md#getTrialCrSegment2Tags) | **GET** /api/1/reports/trial_cr_segment_2_tags | 製造原価報告書(セグメント2比較)の取得
[**getTrialCrSegment3Tags()**](TrialBalanceApi.md#getTrialCrSegment3Tags) | **GET** /api/1/reports/trial_cr_segment_3_tags | 製造原価報告書(セグメント3比較)の取得
[**getTrialCrThreeYears()**](TrialBalanceApi.md#getTrialCrThreeYears) | **GET** /api/1/reports/trial_cr_three_years | 製造原価報告書(３期間比較)の取得
[**getTrialCrTwoYears()**](TrialBalanceApi.md#getTrialCrTwoYears) | **GET** /api/1/reports/trial_cr_two_years | 製造原価報告書(前年比較)の取得
[**getTrialPl()**](TrialBalanceApi.md#getTrialPl) | **GET** /api/1/reports/trial_pl | 損益計算書の取得
[**getTrialPlSections()**](TrialBalanceApi.md#getTrialPlSections) | **GET** /api/1/reports/trial_pl_sections | 損益計算書(部門比較)の取得
[**getTrialPlSegment1Tags()**](TrialBalanceApi.md#getTrialPlSegment1Tags) | **GET** /api/1/reports/trial_pl_segment_1_tags | 損益計算書(セグメント1比較)の取得
[**getTrialPlSegment2Tags()**](TrialBalanceApi.md#getTrialPlSegment2Tags) | **GET** /api/1/reports/trial_pl_segment_2_tags | 損益計算書(セグメント2比較)の取得
[**getTrialPlSegment3Tags()**](TrialBalanceApi.md#getTrialPlSegment3Tags) | **GET** /api/1/reports/trial_pl_segment_3_tags | 損益計算書(セグメント3比較)の取得
[**getTrialPlThreeYears()**](TrialBalanceApi.md#getTrialPlThreeYears) | **GET** /api/1/reports/trial_pl_three_years | 損益計算書(３期間比較)の取得
[**getTrialPlTwoYears()**](TrialBalanceApi.md#getTrialPlTwoYears) | **GET** /api/1/reports/trial_pl_two_years | 損益計算書(前年比較)の取得


## `getTrialBs()`

```php
getTrialBs($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $approval_flow_status): \OpenAPI\Client\Model\TrialBsResponse
```

貸借対照表の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TrialBalanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$fiscal_year = 56; // int | 会計年度
$start_month = 56; // int | 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。
$end_month = 56; // int | 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。
$start_date = 'start_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$account_item_display_type = 'account_item_display_type_example'; // string | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。
$breakdown_display_type = 'breakdown_display_type_example'; // string | 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です）
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます）
$section_id = 56; // int | 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます）
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。
$approval_flow_status = 'approval_flow_status_example'; // string | 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)<br> 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。<br> 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。

try {
    $result = $apiInstance->getTrialBs($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $approval_flow_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrialBalanceApi->getTrialBs: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **fiscal_year** | **int**| 会計年度 | [optional]
 **start_month** | **int**| 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。 | [optional]
 **end_month** | **int**| 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。 | [optional]
 **start_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **account_item_display_type** | **string**| 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。 | [optional]
 **breakdown_display_type** | **string**| 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です） | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます） | [optional]
 **section_id** | **int**| 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます） | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。 | [optional]
 **approval_flow_status** | **string**| 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)&lt;br&gt; 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。&lt;br&gt; 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。 | [optional]

### Return type

[**\OpenAPI\Client\Model\TrialBsResponse**](../Model/TrialBsResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTrialBsThreeYears()`

```php
getTrialBsThreeYears($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $approval_flow_status): \OpenAPI\Client\Model\TrialBsThreeYearsResponse
```

貸借対照表(３期間比較)の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TrialBalanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$fiscal_year = 56; // int | 会計年度
$start_month = 56; // int | 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。
$end_month = 56; // int | 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。
$start_date = 'start_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$account_item_display_type = 'account_item_display_type_example'; // string | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。
$breakdown_display_type = 'breakdown_display_type_example'; // string | 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です）
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます）
$section_id = 56; // int | 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます）
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。
$approval_flow_status = 'approval_flow_status_example'; // string | 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)<br> 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。<br> 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。

try {
    $result = $apiInstance->getTrialBsThreeYears($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $approval_flow_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrialBalanceApi->getTrialBsThreeYears: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **fiscal_year** | **int**| 会計年度 | [optional]
 **start_month** | **int**| 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。 | [optional]
 **end_month** | **int**| 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。 | [optional]
 **start_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **account_item_display_type** | **string**| 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。 | [optional]
 **breakdown_display_type** | **string**| 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です） | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます） | [optional]
 **section_id** | **int**| 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます） | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。 | [optional]
 **approval_flow_status** | **string**| 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)&lt;br&gt; 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。&lt;br&gt; 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。 | [optional]

### Return type

[**\OpenAPI\Client\Model\TrialBsThreeYearsResponse**](../Model/TrialBsThreeYearsResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTrialBsTwoYears()`

```php
getTrialBsTwoYears($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $approval_flow_status): \OpenAPI\Client\Model\TrialBsTwoYearsResponse
```

貸借対照表(前年比較)の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TrialBalanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$fiscal_year = 56; // int | 会計年度
$start_month = 56; // int | 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。
$end_month = 56; // int | 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。
$start_date = 'start_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$account_item_display_type = 'account_item_display_type_example'; // string | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。
$breakdown_display_type = 'breakdown_display_type_example'; // string | 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です）
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます）
$section_id = 56; // int | 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます）
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。
$approval_flow_status = 'approval_flow_status_example'; // string | 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)<br> 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。<br> 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。

try {
    $result = $apiInstance->getTrialBsTwoYears($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $approval_flow_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrialBalanceApi->getTrialBsTwoYears: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **fiscal_year** | **int**| 会計年度 | [optional]
 **start_month** | **int**| 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。 | [optional]
 **end_month** | **int**| 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。 | [optional]
 **start_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **account_item_display_type** | **string**| 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。 | [optional]
 **breakdown_display_type** | **string**| 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です） | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます） | [optional]
 **section_id** | **int**| 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます） | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。 | [optional]
 **approval_flow_status** | **string**| 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)&lt;br&gt; 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。&lt;br&gt; 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。 | [optional]

### Return type

[**\OpenAPI\Client\Model\TrialBsTwoYearsResponse**](../Model/TrialBsTwoYearsResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTrialCr()`

```php
getTrialCr($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status): \OpenAPI\Client\Model\TrialCrResponse
```

製造原価報告書の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TrialBalanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$fiscal_year = 56; // int | 会計年度
$start_month = 56; // int | 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。
$end_month = 56; // int | 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。
$start_date = 'start_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$account_item_display_type = 'account_item_display_type_example'; // string | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。
$breakdown_display_type = 'breakdown_display_type_example'; // string | 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です）
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます）
$section_id = 56; // int | 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます）
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。
$cost_allocation = 'cost_allocation_example'; // string | 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。
$approval_flow_status = 'approval_flow_status_example'; // string | 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト), 全てのステータス: all)<br> 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。<br> 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。

try {
    $result = $apiInstance->getTrialCr($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrialBalanceApi->getTrialCr: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **fiscal_year** | **int**| 会計年度 | [optional]
 **start_month** | **int**| 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。 | [optional]
 **end_month** | **int**| 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。 | [optional]
 **start_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **account_item_display_type** | **string**| 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。 | [optional]
 **breakdown_display_type** | **string**| 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です） | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます） | [optional]
 **section_id** | **int**| 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます） | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。 | [optional]
 **cost_allocation** | **string**| 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。 | [optional]
 **approval_flow_status** | **string**| 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト), 全てのステータス: all)&lt;br&gt; 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。&lt;br&gt; 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。 | [optional]

### Return type

[**\OpenAPI\Client\Model\TrialCrResponse**](../Model/TrialCrResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTrialCrSections()`

```php
getTrialCrSections($company_id, $section_ids, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $adjustment, $cost_allocation, $approval_flow_status): \OpenAPI\Client\Model\TrialCrSectionsResponse
```

製造原価報告書(部門比較)の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TrialBalanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$section_ids = 'section_ids_example'; // string | 出力する部門の指定（半角数字のidを半角カンマ区切りスペースなしで指定してください。0を指定すると、未選択の部門で比較できます）
$fiscal_year = 56; // int | 会計年度
$start_month = 56; // int | 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。
$end_month = 56; // int | 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。
$start_date = 'start_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$account_item_display_type = 'account_item_display_type_example'; // string | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。
$breakdown_display_type = 'breakdown_display_type_example'; // string | 内訳の表示（取引先: partner, 品目: item, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です）
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます）
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。
$cost_allocation = 'cost_allocation_example'; // string | 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。
$approval_flow_status = 'approval_flow_status_example'; // string | 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)<br> 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。<br> 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。

try {
    $result = $apiInstance->getTrialCrSections($company_id, $section_ids, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $adjustment, $cost_allocation, $approval_flow_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrialBalanceApi->getTrialCrSections: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **section_ids** | **string**| 出力する部門の指定（半角数字のidを半角カンマ区切りスペースなしで指定してください。0を指定すると、未選択の部門で比較できます） |
 **fiscal_year** | **int**| 会計年度 | [optional]
 **start_month** | **int**| 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。 | [optional]
 **end_month** | **int**| 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。 | [optional]
 **start_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **account_item_display_type** | **string**| 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。 | [optional]
 **breakdown_display_type** | **string**| 内訳の表示（取引先: partner, 品目: item, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です） | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます） | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。 | [optional]
 **cost_allocation** | **string**| 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。 | [optional]
 **approval_flow_status** | **string**| 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)&lt;br&gt; 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。&lt;br&gt; 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。 | [optional]

### Return type

[**\OpenAPI\Client\Model\TrialCrSectionsResponse**](../Model/TrialCrSectionsResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTrialCrSegment1Tags()`

```php
getTrialCrSegment1Tags($company_id, $segment_1_tag_ids, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status): \OpenAPI\Client\Model\TrialCrSegment1TagsResponse
```

製造原価報告書(セグメント1比較)の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TrialBalanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$segment_1_tag_ids = 'segment_1_tag_ids_example'; // string | 出力するセグメント1タグの指定（半角数字のidを半角カンマ区切りスペースなしで指定してください。0を指定すると、未選択のセグメントで比較できます）
$fiscal_year = 56; // int | 会計年度
$start_month = 56; // int | 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。
$end_month = 56; // int | 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。
$start_date = 'start_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$account_item_display_type = 'account_item_display_type_example'; // string | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。
$breakdown_display_type = 'breakdown_display_type_example'; // string | 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門 の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です）
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます）
$section_id = 56; // int | 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます）
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。
$cost_allocation = 'cost_allocation_example'; // string | 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。
$approval_flow_status = 'approval_flow_status_example'; // string | 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)<br> 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。<br> 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。

try {
    $result = $apiInstance->getTrialCrSegment1Tags($company_id, $segment_1_tag_ids, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrialBalanceApi->getTrialCrSegment1Tags: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **segment_1_tag_ids** | **string**| 出力するセグメント1タグの指定（半角数字のidを半角カンマ区切りスペースなしで指定してください。0を指定すると、未選択のセグメントで比較できます） |
 **fiscal_year** | **int**| 会計年度 | [optional]
 **start_month** | **int**| 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。 | [optional]
 **end_month** | **int**| 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。 | [optional]
 **start_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **account_item_display_type** | **string**| 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。 | [optional]
 **breakdown_display_type** | **string**| 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門 の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です） | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます） | [optional]
 **section_id** | **int**| 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます） | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。 | [optional]
 **cost_allocation** | **string**| 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。 | [optional]
 **approval_flow_status** | **string**| 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)&lt;br&gt; 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。&lt;br&gt; 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。 | [optional]

### Return type

[**\OpenAPI\Client\Model\TrialCrSegment1TagsResponse**](../Model/TrialCrSegment1TagsResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTrialCrSegment2Tags()`

```php
getTrialCrSegment2Tags($company_id, $segment_2_tag_ids, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status): \OpenAPI\Client\Model\TrialCrSegment2TagsResponse
```

製造原価報告書(セグメント2比較)の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TrialBalanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$segment_2_tag_ids = 'segment_2_tag_ids_example'; // string | 出力するセグメント2タグの指定（半角数字のidを半角カンマ区切りスペースなしで指定してください。0を指定すると、未選択のセグメントで比較できます）
$fiscal_year = 56; // int | 会計年度
$start_month = 56; // int | 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。
$end_month = 56; // int | 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。
$start_date = 'start_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$account_item_display_type = 'account_item_display_type_example'; // string | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。
$breakdown_display_type = 'breakdown_display_type_example'; // string | 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門 の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です）
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます）
$section_id = 56; // int | 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます）
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。
$cost_allocation = 'cost_allocation_example'; // string | 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。
$approval_flow_status = 'approval_flow_status_example'; // string | 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)<br> 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。<br> 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。

try {
    $result = $apiInstance->getTrialCrSegment2Tags($company_id, $segment_2_tag_ids, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrialBalanceApi->getTrialCrSegment2Tags: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **segment_2_tag_ids** | **string**| 出力するセグメント2タグの指定（半角数字のidを半角カンマ区切りスペースなしで指定してください。0を指定すると、未選択のセグメントで比較できます） |
 **fiscal_year** | **int**| 会計年度 | [optional]
 **start_month** | **int**| 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。 | [optional]
 **end_month** | **int**| 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。 | [optional]
 **start_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **account_item_display_type** | **string**| 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。 | [optional]
 **breakdown_display_type** | **string**| 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門 の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です） | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます） | [optional]
 **section_id** | **int**| 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます） | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。 | [optional]
 **cost_allocation** | **string**| 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。 | [optional]
 **approval_flow_status** | **string**| 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)&lt;br&gt; 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。&lt;br&gt; 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。 | [optional]

### Return type

[**\OpenAPI\Client\Model\TrialCrSegment2TagsResponse**](../Model/TrialCrSegment2TagsResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTrialCrSegment3Tags()`

```php
getTrialCrSegment3Tags($company_id, $segment_3_tag_ids, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status): \OpenAPI\Client\Model\TrialCrSegment3TagsResponse
```

製造原価報告書(セグメント3比較)の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TrialBalanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$segment_3_tag_ids = 'segment_3_tag_ids_example'; // string | 出力するセグメント3タグの指定（半角数字のidを半角カンマ区切りスペースなしで指定してください。0を指定すると、未選択のセグメントで比較できます）
$fiscal_year = 56; // int | 会計年度
$start_month = 56; // int | 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。
$end_month = 56; // int | 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。
$start_date = 'start_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$account_item_display_type = 'account_item_display_type_example'; // string | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。
$breakdown_display_type = 'breakdown_display_type_example'; // string | 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門 の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です）
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます）
$section_id = 56; // int | 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます）
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。
$cost_allocation = 'cost_allocation_example'; // string | 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。
$approval_flow_status = 'approval_flow_status_example'; // string | 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)<br> 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。<br> 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。

try {
    $result = $apiInstance->getTrialCrSegment3Tags($company_id, $segment_3_tag_ids, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrialBalanceApi->getTrialCrSegment3Tags: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **segment_3_tag_ids** | **string**| 出力するセグメント3タグの指定（半角数字のidを半角カンマ区切りスペースなしで指定してください。0を指定すると、未選択のセグメントで比較できます） |
 **fiscal_year** | **int**| 会計年度 | [optional]
 **start_month** | **int**| 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。 | [optional]
 **end_month** | **int**| 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。 | [optional]
 **start_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **account_item_display_type** | **string**| 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。 | [optional]
 **breakdown_display_type** | **string**| 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門 の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です） | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます） | [optional]
 **section_id** | **int**| 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます） | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。 | [optional]
 **cost_allocation** | **string**| 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。 | [optional]
 **approval_flow_status** | **string**| 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)&lt;br&gt; 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。&lt;br&gt; 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。 | [optional]

### Return type

[**\OpenAPI\Client\Model\TrialCrSegment3TagsResponse**](../Model/TrialCrSegment3TagsResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTrialCrThreeYears()`

```php
getTrialCrThreeYears($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status): \OpenAPI\Client\Model\TrialCrThreeYearsResponse
```

製造原価報告書(３期間比較)の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TrialBalanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$fiscal_year = 56; // int | 会計年度
$start_month = 56; // int | 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。
$end_month = 56; // int | 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。
$start_date = 'start_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$account_item_display_type = 'account_item_display_type_example'; // string | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。
$breakdown_display_type = 'breakdown_display_type_example'; // string | 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です）
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます）
$section_id = 56; // int | 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます）
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。
$cost_allocation = 'cost_allocation_example'; // string | 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。
$approval_flow_status = 'approval_flow_status_example'; // string | 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト), 全てのステータス: all)<br> 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。<br> 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。

try {
    $result = $apiInstance->getTrialCrThreeYears($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrialBalanceApi->getTrialCrThreeYears: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **fiscal_year** | **int**| 会計年度 | [optional]
 **start_month** | **int**| 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。 | [optional]
 **end_month** | **int**| 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。 | [optional]
 **start_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **account_item_display_type** | **string**| 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。 | [optional]
 **breakdown_display_type** | **string**| 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です） | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます） | [optional]
 **section_id** | **int**| 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます） | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。 | [optional]
 **cost_allocation** | **string**| 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。 | [optional]
 **approval_flow_status** | **string**| 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト), 全てのステータス: all)&lt;br&gt; 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。&lt;br&gt; 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。 | [optional]

### Return type

[**\OpenAPI\Client\Model\TrialCrThreeYearsResponse**](../Model/TrialCrThreeYearsResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTrialCrTwoYears()`

```php
getTrialCrTwoYears($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status): \OpenAPI\Client\Model\TrialCrTwoYearsResponse
```

製造原価報告書(前年比較)の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TrialBalanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$fiscal_year = 56; // int | 会計年度
$start_month = 56; // int | 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。
$end_month = 56; // int | 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。
$start_date = 'start_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$account_item_display_type = 'account_item_display_type_example'; // string | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。
$breakdown_display_type = 'breakdown_display_type_example'; // string | 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です）
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます）
$section_id = 56; // int | 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます）
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。
$cost_allocation = 'cost_allocation_example'; // string | 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。
$approval_flow_status = 'approval_flow_status_example'; // string | 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト), 全てのステータス: all)<br> 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。<br> 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。

try {
    $result = $apiInstance->getTrialCrTwoYears($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrialBalanceApi->getTrialCrTwoYears: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **fiscal_year** | **int**| 会計年度 | [optional]
 **start_month** | **int**| 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。 | [optional]
 **end_month** | **int**| 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。 | [optional]
 **start_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **account_item_display_type** | **string**| 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。 | [optional]
 **breakdown_display_type** | **string**| 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です） | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます） | [optional]
 **section_id** | **int**| 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます） | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。 | [optional]
 **cost_allocation** | **string**| 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。 | [optional]
 **approval_flow_status** | **string**| 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト), 全てのステータス: all)&lt;br&gt; 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。&lt;br&gt; 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。 | [optional]

### Return type

[**\OpenAPI\Client\Model\TrialCrTwoYearsResponse**](../Model/TrialCrTwoYearsResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTrialPl()`

```php
getTrialPl($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status): \OpenAPI\Client\Model\TrialPlResponse
```

損益計算書の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TrialBalanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$fiscal_year = 56; // int | 会計年度
$start_month = 56; // int | 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。
$end_month = 56; // int | 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。
$start_date = 'start_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$account_item_display_type = 'account_item_display_type_example'; // string | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。
$breakdown_display_type = 'breakdown_display_type_example'; // string | 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です）
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます）
$section_id = 56; // int | 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます）
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。
$cost_allocation = 'cost_allocation_example'; // string | 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。
$approval_flow_status = 'approval_flow_status_example'; // string | 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)<br> 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。<br> 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。

try {
    $result = $apiInstance->getTrialPl($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrialBalanceApi->getTrialPl: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **fiscal_year** | **int**| 会計年度 | [optional]
 **start_month** | **int**| 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。 | [optional]
 **end_month** | **int**| 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。 | [optional]
 **start_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **account_item_display_type** | **string**| 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。 | [optional]
 **breakdown_display_type** | **string**| 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です） | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます） | [optional]
 **section_id** | **int**| 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます） | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。 | [optional]
 **cost_allocation** | **string**| 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。 | [optional]
 **approval_flow_status** | **string**| 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)&lt;br&gt; 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。&lt;br&gt; 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。 | [optional]

### Return type

[**\OpenAPI\Client\Model\TrialPlResponse**](../Model/TrialPlResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTrialPlSections()`

```php
getTrialPlSections($company_id, $section_ids, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $adjustment, $cost_allocation, $approval_flow_status): \OpenAPI\Client\Model\TrialPlSectionsResponse
```

損益計算書(部門比較)の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TrialBalanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$section_ids = 'section_ids_example'; // string | 出力する部門の指定（半角数字のidを半角カンマ区切りスペースなしで指定してください。0を指定すると、未選択の部門で比較できます。）
$fiscal_year = 56; // int | 会計年度
$start_month = 56; // int | 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。
$end_month = 56; // int | 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。
$start_date = 'start_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$account_item_display_type = 'account_item_display_type_example'; // string | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。
$breakdown_display_type = 'breakdown_display_type_example'; // string | 内訳の表示（取引先: partner, 品目: item, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です）
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます）
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。
$cost_allocation = 'cost_allocation_example'; // string | 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。
$approval_flow_status = 'approval_flow_status_example'; // string | 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)<br> 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。<br> 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。

try {
    $result = $apiInstance->getTrialPlSections($company_id, $section_ids, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $adjustment, $cost_allocation, $approval_flow_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrialBalanceApi->getTrialPlSections: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **section_ids** | **string**| 出力する部門の指定（半角数字のidを半角カンマ区切りスペースなしで指定してください。0を指定すると、未選択の部門で比較できます。） |
 **fiscal_year** | **int**| 会計年度 | [optional]
 **start_month** | **int**| 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。 | [optional]
 **end_month** | **int**| 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。 | [optional]
 **start_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **account_item_display_type** | **string**| 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。 | [optional]
 **breakdown_display_type** | **string**| 内訳の表示（取引先: partner, 品目: item, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です） | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます） | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。 | [optional]
 **cost_allocation** | **string**| 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。 | [optional]
 **approval_flow_status** | **string**| 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)&lt;br&gt; 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。&lt;br&gt; 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。 | [optional]

### Return type

[**\OpenAPI\Client\Model\TrialPlSectionsResponse**](../Model/TrialPlSectionsResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTrialPlSegment1Tags()`

```php
getTrialPlSegment1Tags($company_id, $segment_1_tag_ids, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status): \OpenAPI\Client\Model\TrialPlSegment1TagsResponse
```

損益計算書(セグメント1比較)の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TrialBalanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$segment_1_tag_ids = 'segment_1_tag_ids_example'; // string | 出力するセグメント1タグの指定（半角数字のidを半角カンマ区切りスペースなしで指定してください。0を指定すると、未選択のセグメントで比較できます）
$fiscal_year = 56; // int | 会計年度
$start_month = 56; // int | 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。
$end_month = 56; // int | 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。
$start_date = 'start_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$account_item_display_type = 'account_item_display_type_example'; // string | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。
$breakdown_display_type = 'breakdown_display_type_example'; // string | 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門 の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です）
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます）
$section_id = 56; // int | 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます）
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。
$cost_allocation = 'cost_allocation_example'; // string | 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。
$approval_flow_status = 'approval_flow_status_example'; // string | 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)<br> 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。<br> 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。

try {
    $result = $apiInstance->getTrialPlSegment1Tags($company_id, $segment_1_tag_ids, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrialBalanceApi->getTrialPlSegment1Tags: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **segment_1_tag_ids** | **string**| 出力するセグメント1タグの指定（半角数字のidを半角カンマ区切りスペースなしで指定してください。0を指定すると、未選択のセグメントで比較できます） |
 **fiscal_year** | **int**| 会計年度 | [optional]
 **start_month** | **int**| 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。 | [optional]
 **end_month** | **int**| 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。 | [optional]
 **start_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **account_item_display_type** | **string**| 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。 | [optional]
 **breakdown_display_type** | **string**| 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門 の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です） | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます） | [optional]
 **section_id** | **int**| 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます） | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。 | [optional]
 **cost_allocation** | **string**| 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。 | [optional]
 **approval_flow_status** | **string**| 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)&lt;br&gt; 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。&lt;br&gt; 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。 | [optional]

### Return type

[**\OpenAPI\Client\Model\TrialPlSegment1TagsResponse**](../Model/TrialPlSegment1TagsResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTrialPlSegment2Tags()`

```php
getTrialPlSegment2Tags($company_id, $segment_2_tag_ids, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status): \OpenAPI\Client\Model\TrialPlSegment2TagsResponse
```

損益計算書(セグメント2比較)の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TrialBalanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$segment_2_tag_ids = 'segment_2_tag_ids_example'; // string | 出力するセグメント2タグの指定（半角数字のidを半角カンマ区切りスペースなしで指定してください。0を指定すると、未選択のセグメントで比較できます）
$fiscal_year = 56; // int | 会計年度
$start_month = 56; // int | 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。
$end_month = 56; // int | 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。
$start_date = 'start_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$account_item_display_type = 'account_item_display_type_example'; // string | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。
$breakdown_display_type = 'breakdown_display_type_example'; // string | 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門 の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です）
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます）
$section_id = 56; // int | 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます）
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。
$cost_allocation = 'cost_allocation_example'; // string | 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。
$approval_flow_status = 'approval_flow_status_example'; // string | 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)<br> 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。<br> 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。

try {
    $result = $apiInstance->getTrialPlSegment2Tags($company_id, $segment_2_tag_ids, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrialBalanceApi->getTrialPlSegment2Tags: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **segment_2_tag_ids** | **string**| 出力するセグメント2タグの指定（半角数字のidを半角カンマ区切りスペースなしで指定してください。0を指定すると、未選択のセグメントで比較できます） |
 **fiscal_year** | **int**| 会計年度 | [optional]
 **start_month** | **int**| 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。 | [optional]
 **end_month** | **int**| 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。 | [optional]
 **start_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **account_item_display_type** | **string**| 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。 | [optional]
 **breakdown_display_type** | **string**| 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門 の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です） | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます） | [optional]
 **section_id** | **int**| 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます） | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。 | [optional]
 **cost_allocation** | **string**| 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。 | [optional]
 **approval_flow_status** | **string**| 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)&lt;br&gt; 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。&lt;br&gt; 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。 | [optional]

### Return type

[**\OpenAPI\Client\Model\TrialPlSegment2TagsResponse**](../Model/TrialPlSegment2TagsResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTrialPlSegment3Tags()`

```php
getTrialPlSegment3Tags($company_id, $segment_3_tag_ids, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status): \OpenAPI\Client\Model\TrialPlSegment3TagsResponse
```

損益計算書(セグメント3比較)の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TrialBalanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$segment_3_tag_ids = 'segment_3_tag_ids_example'; // string | 出力するセグメント3タグの指定（半角数字のidを半角カンマ区切りスペースなしで指定してください。0を指定すると、未選択のセグメントで比較できます）
$fiscal_year = 56; // int | 会計年度
$start_month = 56; // int | 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。
$end_month = 56; // int | 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。
$start_date = 'start_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$account_item_display_type = 'account_item_display_type_example'; // string | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。
$breakdown_display_type = 'breakdown_display_type_example'; // string | 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門 の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です）
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます）
$section_id = 56; // int | 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます）
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。
$cost_allocation = 'cost_allocation_example'; // string | 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。
$approval_flow_status = 'approval_flow_status_example'; // string | 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)<br> 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。<br> 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。

try {
    $result = $apiInstance->getTrialPlSegment3Tags($company_id, $segment_3_tag_ids, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrialBalanceApi->getTrialPlSegment3Tags: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **segment_3_tag_ids** | **string**| 出力するセグメント3タグの指定（半角数字のidを半角カンマ区切りスペースなしで指定してください。0を指定すると、未選択のセグメントで比較できます） |
 **fiscal_year** | **int**| 会計年度 | [optional]
 **start_month** | **int**| 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。 | [optional]
 **end_month** | **int**| 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。 | [optional]
 **start_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **account_item_display_type** | **string**| 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。 | [optional]
 **breakdown_display_type** | **string**| 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門 の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です） | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます） | [optional]
 **section_id** | **int**| 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます） | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。 | [optional]
 **cost_allocation** | **string**| 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。 | [optional]
 **approval_flow_status** | **string**| 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)&lt;br&gt; 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。&lt;br&gt; 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。 | [optional]

### Return type

[**\OpenAPI\Client\Model\TrialPlSegment3TagsResponse**](../Model/TrialPlSegment3TagsResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTrialPlThreeYears()`

```php
getTrialPlThreeYears($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status): \OpenAPI\Client\Model\TrialPlThreeYearsResponse
```

損益計算書(３期間比較)の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TrialBalanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$fiscal_year = 56; // int | 会計年度
$start_month = 56; // int | 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。
$end_month = 56; // int | 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。
$start_date = 'start_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$account_item_display_type = 'account_item_display_type_example'; // string | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。
$breakdown_display_type = 'breakdown_display_type_example'; // string | 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です）
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます）
$section_id = 56; // int | 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます）
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。
$cost_allocation = 'cost_allocation_example'; // string | 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。
$approval_flow_status = 'approval_flow_status_example'; // string | 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)<br> 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。<br> 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。

try {
    $result = $apiInstance->getTrialPlThreeYears($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrialBalanceApi->getTrialPlThreeYears: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **fiscal_year** | **int**| 会計年度 | [optional]
 **start_month** | **int**| 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。 | [optional]
 **end_month** | **int**| 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。 | [optional]
 **start_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **account_item_display_type** | **string**| 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。 | [optional]
 **breakdown_display_type** | **string**| 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です） | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます） | [optional]
 **section_id** | **int**| 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます） | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。 | [optional]
 **cost_allocation** | **string**| 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。 | [optional]
 **approval_flow_status** | **string**| 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)&lt;br&gt; 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。&lt;br&gt; 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。 | [optional]

### Return type

[**\OpenAPI\Client\Model\TrialPlThreeYearsResponse**](../Model/TrialPlThreeYearsResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTrialPlTwoYears()`

```php
getTrialPlTwoYears($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status): \OpenAPI\Client\Model\TrialPlTwoYearsResponse
```

損益計算書(前年比較)の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TrialBalanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$fiscal_year = 56; // int | 会計年度
$start_month = 56; // int | 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。
$end_month = 56; // int | 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。
$start_date = 'start_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$account_item_display_type = 'account_item_display_type_example'; // string | 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。
$breakdown_display_type = 'breakdown_display_type_example'; // string | 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です）
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます）
$section_id = 56; // int | 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます）
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。
$cost_allocation = 'cost_allocation_example'; // string | 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。
$approval_flow_status = 'approval_flow_status_example'; // string | 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)<br> 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。<br> 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。

try {
    $result = $apiInstance->getTrialPlTwoYears($company_id, $fiscal_year, $start_month, $end_month, $start_date, $end_date, $account_item_display_type, $breakdown_display_type, $partner_id, $partner_code, $item_id, $section_id, $adjustment, $cost_allocation, $approval_flow_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrialBalanceApi->getTrialPlTwoYears: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **fiscal_year** | **int**| 会計年度 | [optional]
 **start_month** | **int**| 発生月で絞込：開始会計月(1-12)。指定されない場合、現在の会計年度の期首月が指定されます。 | [optional]
 **end_month** | **int**| 発生月で絞込：終了会計月(1-12)(会計年度が10月始まりでstart_monthが11なら11, 12, 1, ... 9のいずれかを指定する)。指定されない場合、現在の会計年度の期末月が指定されます。 | [optional]
 **start_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **account_item_display_type** | **string**| 勘定科目の表示（勘定科目: account_item, 決算書表示:group）。指定されない場合、勘定科目: account_itemが指定されます。 | [optional]
 **breakdown_display_type** | **string**| 内訳の表示（取引先: partner, 品目: item, 部門: section, 勘定科目: account_item, セグメント1(法人向けプロフェッショナルプラン, 法人向けエンタープライズプラン): segment_1_tag, セグメント2(法人向けエンタープライズプラン):segment_2_tag, セグメント3(法人向けエンタープライズプラン): segment_3_tag） ※勘定科目はaccount_item_display_typeが「group」の時のみ指定できます。  取引先、品目、部門、セグメント の各項目が単独で1,000以上登録されている場合は、breakdown_display_type で該当項目を指定するとエラーになります。  例）取引先の登録数が1,000以上、品目の登録数が999以下の場合 * breakdown_display_type: 取引先を指定 → エラーになる * breakdown_display_type: 品目を指定 → エラーにならない | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択で絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込（事業所設定で取引先コードの利用を有効にしている場合のみ利用可能です） | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択で絞り込めます） | [optional]
 **section_id** | **int**| 部門IDで絞込（0を指定すると、部門が未選択で絞り込めます） | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）。指定されない場合、決算整理仕訳以外: withoutが指定されます。 | [optional]
 **cost_allocation** | **string**| 配賦仕訳で絞込（配賦仕訳のみ：only,配賦仕訳以外：without）。指定されない場合、配賦仕訳を含む金額が返却されます。 | [optional]
 **approval_flow_status** | **string**| 承認ステータスで絞込 (未承認を除く: without_in_progress (デフォルト)、全てのステータス: all)&lt;br&gt; 個人: プレミアムプラン、法人: プロフェッショナルプラン以上で指定可能です。&lt;br&gt; 事業所の設定から仕訳承認フローの利用を有効にした場合に指定可能です。 | [optional]

### Return type

[**\OpenAPI\Client\Model\TrialPlTwoYearsResponse**](../Model/TrialPlTwoYearsResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
