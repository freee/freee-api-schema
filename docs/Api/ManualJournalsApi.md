# OpenAPI\Client\ManualJournalsApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createManualJournal()**](ManualJournalsApi.md#createManualJournal) | **POST** /api/1/manual_journals | 振替伝票の作成
[**destroyManualJournal()**](ManualJournalsApi.md#destroyManualJournal) | **DELETE** /api/1/manual_journals/{id} | 振替伝票の削除
[**getManualJournal()**](ManualJournalsApi.md#getManualJournal) | **GET** /api/1/manual_journals/{id} | 振替伝票の取得
[**getManualJournals()**](ManualJournalsApi.md#getManualJournals) | **GET** /api/1/manual_journals | 振替伝票一覧の取得
[**updateManualJournal()**](ManualJournalsApi.md#updateManualJournal) | **PUT** /api/1/manual_journals/{id} | 振替伝票の更新


## `createManualJournal()`

```php
createManualJournal($manual_journal_create_params): \OpenAPI\Client\Model\ManualJournalResponse
```

振替伝票の作成

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ManualJournalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$manual_journal_create_params = new \OpenAPI\Client\Model\ManualJournalCreateParams(); // \OpenAPI\Client\Model\ManualJournalCreateParams | 振替伝票の作成

try {
    $result = $apiInstance->createManualJournal($manual_journal_create_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ManualJournalsApi->createManualJournal: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manual_journal_create_params** | [**\OpenAPI\Client\Model\ManualJournalCreateParams**](../Model/ManualJournalCreateParams.md)| 振替伝票の作成 | [optional]

### Return type

[**\OpenAPI\Client\Model\ManualJournalResponse**](../Model/ManualJournalResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `destroyManualJournal()`

```php
destroyManualJournal($id, $company_id)
```

振替伝票の削除

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ManualJournalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$company_id = 56; // int | 事業所ID

try {
    $apiInstance->destroyManualJournal($id, $company_id);
} catch (Exception $e) {
    echo 'Exception when calling ManualJournalsApi->destroyManualJournal: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |
 **company_id** | **int**| 事業所ID |

### Return type

void (empty response body)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getManualJournal()`

```php
getManualJournal($company_id, $id): \OpenAPI\Client\Model\ManualJournalResponse
```

振替伝票の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ManualJournalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$id = 56; // int

try {
    $result = $apiInstance->getManualJournal($company_id, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ManualJournalsApi->getManualJournal: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **id** | **int**|  |

### Return type

[**\OpenAPI\Client\Model\ManualJournalResponse**](../Model/ManualJournalResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getManualJournals()`

```php
getManualJournals($company_id, $start_issue_date, $end_issue_date, $entry_side, $account_item_id, $min_amount, $max_amount, $partner_id, $partner_code, $item_id, $section_id, $segment_1_tag_id, $segment_2_tag_id, $segment_3_tag_id, $comment_status, $comment_important, $adjustment, $txn_number, $offset, $limit): \OpenAPI\Client\Model\InlineResponse2003
```

振替伝票一覧の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ManualJournalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$start_issue_date = 'start_issue_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_issue_date = 'end_issue_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$entry_side = 'entry_side_example'; // string | 貸借で絞込 (貸方: credit, 借方: debit)
$account_item_id = 56; // int | 勘定科目IDで絞込
$min_amount = 56; // int | 金額で絞込：下限
$max_amount = 56; // int | 金額で絞込：上限
$partner_id = 56; // int | 取引先IDで絞込（0を指定すると、取引先が未選択の貸借行を絞り込めます）
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込
$item_id = 56; // int | 品目IDで絞込（0を指定すると、品目が未選択の貸借行を絞り込めます）
$section_id = 56; // int | 部門IDで絞込（0を指定すると、部門が未選択の貸借行を絞り込めます）
$segment_1_tag_id = 56; // int | セグメント１IDで絞込（0を指定すると、セグメント１が未選択の貸借行を絞り込めます）
$segment_2_tag_id = 56; // int | セグメント２IDで絞込（0を指定すると、セグメント２が未選択の貸借行を絞り込めます）
$segment_3_tag_id = 56; // int | セグメント３IDで絞込（0を指定すると、セグメント３が未選択の貸借行を絞り込めます）
$comment_status = 'comment_status_example'; // string | コメント状態で絞込（自分宛のコメント: posted_with_mention, 自分宛のコメント-未解決: raised_with_mention, 自分宛のコメント-解決済: resolved_with_mention, コメントあり: posted, 未解決: raised, 解決済: resolved, コメントなし: none）
$comment_important = True; // bool | 重要コメント付きの振替伝票を絞込
$adjustment = 'adjustment_example'; // string | 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without）
$txn_number = 'txn_number_example'; // string | 仕訳番号で絞込（事業所の仕訳番号形式が有効な場合のみ）
$offset = 56; // int | 取得レコードのオフセット (デフォルト: 0)
$limit = 56; // int | 取得レコードの件数 (デフォルト: 20, 最小: 1, 最大: 500)

try {
    $result = $apiInstance->getManualJournals($company_id, $start_issue_date, $end_issue_date, $entry_side, $account_item_id, $min_amount, $max_amount, $partner_id, $partner_code, $item_id, $section_id, $segment_1_tag_id, $segment_2_tag_id, $segment_3_tag_id, $comment_status, $comment_important, $adjustment, $txn_number, $offset, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ManualJournalsApi->getManualJournals: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **start_issue_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_issue_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **entry_side** | **string**| 貸借で絞込 (貸方: credit, 借方: debit) | [optional]
 **account_item_id** | **int**| 勘定科目IDで絞込 | [optional]
 **min_amount** | **int**| 金額で絞込：下限 | [optional]
 **max_amount** | **int**| 金額で絞込：上限 | [optional]
 **partner_id** | **int**| 取引先IDで絞込（0を指定すると、取引先が未選択の貸借行を絞り込めます） | [optional]
 **partner_code** | **string**| 取引先コードで絞込 | [optional]
 **item_id** | **int**| 品目IDで絞込（0を指定すると、品目が未選択の貸借行を絞り込めます） | [optional]
 **section_id** | **int**| 部門IDで絞込（0を指定すると、部門が未選択の貸借行を絞り込めます） | [optional]
 **segment_1_tag_id** | **int**| セグメント１IDで絞込（0を指定すると、セグメント１が未選択の貸借行を絞り込めます） | [optional]
 **segment_2_tag_id** | **int**| セグメント２IDで絞込（0を指定すると、セグメント２が未選択の貸借行を絞り込めます） | [optional]
 **segment_3_tag_id** | **int**| セグメント３IDで絞込（0を指定すると、セグメント３が未選択の貸借行を絞り込めます） | [optional]
 **comment_status** | **string**| コメント状態で絞込（自分宛のコメント: posted_with_mention, 自分宛のコメント-未解決: raised_with_mention, 自分宛のコメント-解決済: resolved_with_mention, コメントあり: posted, 未解決: raised, 解決済: resolved, コメントなし: none） | [optional]
 **comment_important** | **bool**| 重要コメント付きの振替伝票を絞込 | [optional]
 **adjustment** | **string**| 決算整理仕訳で絞込（決算整理仕訳のみ: only, 決算整理仕訳以外: without） | [optional]
 **txn_number** | **string**| 仕訳番号で絞込（事業所の仕訳番号形式が有効な場合のみ） | [optional]
 **offset** | **int**| 取得レコードのオフセット (デフォルト: 0) | [optional]
 **limit** | **int**| 取得レコードの件数 (デフォルト: 20, 最小: 1, 最大: 500) | [optional]

### Return type

[**\OpenAPI\Client\Model\InlineResponse2003**](../Model/InlineResponse2003.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateManualJournal()`

```php
updateManualJournal($id, $manual_journal_update_params): \OpenAPI\Client\Model\ManualJournalResponse
```

振替伝票の更新

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ManualJournalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$manual_journal_update_params = new \OpenAPI\Client\Model\ManualJournalUpdateParams(); // \OpenAPI\Client\Model\ManualJournalUpdateParams | 振替伝票の更新

try {
    $result = $apiInstance->updateManualJournal($id, $manual_journal_update_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ManualJournalsApi->updateManualJournal: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |
 **manual_journal_update_params** | [**\OpenAPI\Client\Model\ManualJournalUpdateParams**](../Model/ManualJournalUpdateParams.md)| 振替伝票の更新 | [optional]

### Return type

[**\OpenAPI\Client\Model\ManualJournalResponse**](../Model/ManualJournalResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
