# OpenAPI\Client\DealsApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDeal()**](DealsApi.md#createDeal) | **POST** /api/1/deals | 取引（収入／支出）の作成
[**destroyDeal()**](DealsApi.md#destroyDeal) | **DELETE** /api/1/deals/{id} | 取引（収入／支出）の削除
[**getDeal()**](DealsApi.md#getDeal) | **GET** /api/1/deals/{id} | 取引（収入／支出）の取得
[**getDeals()**](DealsApi.md#getDeals) | **GET** /api/1/deals | 取引（収入／支出）一覧の取得
[**updateDeal()**](DealsApi.md#updateDeal) | **PUT** /api/1/deals/{id} | 取引（収入／支出）の更新


## `createDeal()`

```php
createDeal($deal_create_params): \OpenAPI\Client\Model\DealCreateResponse
```

取引（収入／支出）の作成

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\DealsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$deal_create_params = new \OpenAPI\Client\Model\DealCreateParams(); // \OpenAPI\Client\Model\DealCreateParams | 取引（収入／支出）の作成

try {
    $result = $apiInstance->createDeal($deal_create_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DealsApi->createDeal: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deal_create_params** | [**\OpenAPI\Client\Model\DealCreateParams**](../Model/DealCreateParams.md)| 取引（収入／支出）の作成 | [optional]

### Return type

[**\OpenAPI\Client\Model\DealCreateResponse**](../Model/DealCreateResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `destroyDeal()`

```php
destroyDeal($id, $company_id)
```

取引（収入／支出）の削除

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\DealsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 取引ID
$company_id = 56; // int | 事業所ID

try {
    $apiInstance->destroyDeal($id, $company_id);
} catch (Exception $e) {
    echo 'Exception when calling DealsApi->destroyDeal: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 取引ID |
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

## `getDeal()`

```php
getDeal($company_id, $id, $accruals): \OpenAPI\Client\Model\DealResponse
```

取引（収入／支出）の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\DealsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$id = 56; // int
$accruals = 'accruals_example'; // string | 取引の債権債務行の表示（without: 表示しない(デフォルト), with: 表示する）

try {
    $result = $apiInstance->getDeal($company_id, $id, $accruals);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DealsApi->getDeal: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **id** | **int**|  |
 **accruals** | **string**| 取引の債権債務行の表示（without: 表示しない(デフォルト), with: 表示する） | [optional]

### Return type

[**\OpenAPI\Client\Model\DealResponse**](../Model/DealResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getDeals()`

```php
getDeals($company_id, $partner_id, $account_item_id, $partner_code, $status, $type, $start_issue_date, $end_issue_date, $start_due_date, $end_due_date, $start_renew_date, $end_renew_date, $offset, $limit, $registered_from, $accruals): \OpenAPI\Client\Model\InlineResponse2002
```

取引（収入／支出）一覧の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\DealsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$partner_id = 56; // int | 取引先IDで絞込
$account_item_id = 56; // int | 勘定科目IDで絞込
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込
$status = 'status_example'; // string | 決済状況で絞込 (未決済: unsettled, 完了: settled)
$type = 'type_example'; // string | 収支区分 (収入: income, 支出: expense)
$start_issue_date = 'start_issue_date_example'; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_issue_date = 'end_issue_date_example'; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$start_due_date = 'start_due_date_example'; // string | 支払期日で絞込：開始日(yyyy-mm-dd)
$end_due_date = 'end_due_date_example'; // string | 支払期日で絞込：終了日(yyyy-mm-dd)
$start_renew_date = 'start_renew_date_example'; // string | +更新日で絞込：開始日(yyyy-mm-dd)
$end_renew_date = 'end_renew_date_example'; // string | +更新日で絞込：終了日(yyyy-mm-dd)
$offset = 56; // int | 取得レコードのオフセット (デフォルト: 0)
$limit = 56; // int | 取得レコードの件数 (デフォルト: 20, 最大: 100)
$registered_from = 'registered_from_example'; // string | 取引登録元アプリで絞込（me: 本APIを叩くアプリ自身から登録した取引のみ）
$accruals = 'accruals_example'; // string | 取引の債権債務行の表示（without: 表示しない(デフォルト), with: 表示する）

try {
    $result = $apiInstance->getDeals($company_id, $partner_id, $account_item_id, $partner_code, $status, $type, $start_issue_date, $end_issue_date, $start_due_date, $end_due_date, $start_renew_date, $end_renew_date, $offset, $limit, $registered_from, $accruals);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DealsApi->getDeals: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **partner_id** | **int**| 取引先IDで絞込 | [optional]
 **account_item_id** | **int**| 勘定科目IDで絞込 | [optional]
 **partner_code** | **string**| 取引先コードで絞込 | [optional]
 **status** | **string**| 決済状況で絞込 (未決済: unsettled, 完了: settled) | [optional]
 **type** | **string**| 収支区分 (収入: income, 支出: expense) | [optional]
 **start_issue_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_issue_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **start_due_date** | **string**| 支払期日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_due_date** | **string**| 支払期日で絞込：終了日(yyyy-mm-dd) | [optional]
 **start_renew_date** | **string**| +更新日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_renew_date** | **string**| +更新日で絞込：終了日(yyyy-mm-dd) | [optional]
 **offset** | **int**| 取得レコードのオフセット (デフォルト: 0) | [optional]
 **limit** | **int**| 取得レコードの件数 (デフォルト: 20, 最大: 100) | [optional]
 **registered_from** | **string**| 取引登録元アプリで絞込（me: 本APIを叩くアプリ自身から登録した取引のみ） | [optional]
 **accruals** | **string**| 取引の債権債務行の表示（without: 表示しない(デフォルト), with: 表示する） | [optional]

### Return type

[**\OpenAPI\Client\Model\InlineResponse2002**](../Model/InlineResponse2002.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateDeal()`

```php
updateDeal($id, $deal_update_params): \OpenAPI\Client\Model\DealResponse
```

取引（収入／支出）の更新

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\DealsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 取引ID
$deal_update_params = new \OpenAPI\Client\Model\DealUpdateParams(); // \OpenAPI\Client\Model\DealUpdateParams | 取引（収入／支出）の更新

try {
    $result = $apiInstance->updateDeal($id, $deal_update_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DealsApi->updateDeal: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 取引ID |
 **deal_update_params** | [**\OpenAPI\Client\Model\DealUpdateParams**](../Model/DealUpdateParams.md)| 取引（収入／支出）の更新 | [optional]

### Return type

[**\OpenAPI\Client\Model\DealResponse**](../Model/DealResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
