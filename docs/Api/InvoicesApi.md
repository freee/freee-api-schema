# OpenAPI\Client\InvoicesApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInvoice()**](InvoicesApi.md#createInvoice) | **POST** /api/1/invoices | 請求書の作成
[**destroyInvoice()**](InvoicesApi.md#destroyInvoice) | **DELETE** /api/1/invoices/{id} | 請求書の削除
[**getInvoice()**](InvoicesApi.md#getInvoice) | **GET** /api/1/invoices/{id} | 請求書の取得
[**getInvoices()**](InvoicesApi.md#getInvoices) | **GET** /api/1/invoices | 請求書一覧の取得
[**updateInvoice()**](InvoicesApi.md#updateInvoice) | **PUT** /api/1/invoices/{id} | 請求書の更新


## `createInvoice()`

```php
createInvoice($invoice_create_params): \OpenAPI\Client\Model\InvoiceResponse
```

請求書の作成

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\InvoicesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$invoice_create_params = new \OpenAPI\Client\Model\InvoiceCreateParams(); // \OpenAPI\Client\Model\InvoiceCreateParams | 請求書の作成

try {
    $result = $apiInstance->createInvoice($invoice_create_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InvoicesApi->createInvoice: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_create_params** | [**\OpenAPI\Client\Model\InvoiceCreateParams**](../Model/InvoiceCreateParams.md)| 請求書の作成 | [optional]

### Return type

[**\OpenAPI\Client\Model\InvoiceResponse**](../Model/InvoiceResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `destroyInvoice()`

```php
destroyInvoice($id, $company_id)
```

請求書の削除

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\InvoicesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$company_id = 56; // int | 事業所ID

try {
    $apiInstance->destroyInvoice($id, $company_id);
} catch (Exception $e) {
    echo 'Exception when calling InvoicesApi->destroyInvoice: ', $e->getMessage(), PHP_EOL;
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

## `getInvoice()`

```php
getInvoice($company_id, $id): \OpenAPI\Client\Model\InvoiceResponse
```

請求書の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\InvoicesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$id = 56; // int | 請求書ID

try {
    $result = $apiInstance->getInvoice($company_id, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InvoicesApi->getInvoice: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **id** | **int**| 請求書ID |

### Return type

[**\OpenAPI\Client\Model\InvoiceResponse**](../Model/InvoiceResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getInvoices()`

```php
getInvoices($company_id, $partner_id, $partner_code, $start_issue_date, $end_issue_date, $start_due_date, $end_due_date, $invoice_number, $description, $invoice_status, $payment_status, $offset, $limit): \OpenAPI\Client\Model\InvoiceIndexResponse
```

請求書一覧の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\InvoicesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$partner_id = 56; // int | 取引先IDで絞込
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込
$start_issue_date = 'start_issue_date_example'; // string | 請求日の開始日(yyyy-mm-dd)
$end_issue_date = 'end_issue_date_example'; // string | 請求日の終了日(yyyy-mm-dd)
$start_due_date = 'start_due_date_example'; // string | 期日の開始日(yyyy-mm-dd)
$end_due_date = 'end_due_date_example'; // string | 期日の終了日(yyyy-mm-dd)
$invoice_number = 'invoice_number_example'; // string | 請求書番号
$description = 'description_example'; // string | 概要
$invoice_status = 'invoice_status_example'; // string | 請求書ステータス  (draft: 下書き, applying: 申請中, remanded: 差し戻し, rejected: 却下, approved: 承認済み, unsubmitted: 送付待ち, submitted: 送付済み)
$payment_status = 'payment_status_example'; // string | 入金ステータス  (unsettled: 入金待ち, settled: 入金済み)
$offset = 56; // int | 取得レコードのオフセット (デフォルト: 0)
$limit = 56; // int | 取得レコードの件数 (デフォルト: 20, 最大: 100)

try {
    $result = $apiInstance->getInvoices($company_id, $partner_id, $partner_code, $start_issue_date, $end_issue_date, $start_due_date, $end_due_date, $invoice_number, $description, $invoice_status, $payment_status, $offset, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InvoicesApi->getInvoices: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **partner_id** | **int**| 取引先IDで絞込 | [optional]
 **partner_code** | **string**| 取引先コードで絞込 | [optional]
 **start_issue_date** | **string**| 請求日の開始日(yyyy-mm-dd) | [optional]
 **end_issue_date** | **string**| 請求日の終了日(yyyy-mm-dd) | [optional]
 **start_due_date** | **string**| 期日の開始日(yyyy-mm-dd) | [optional]
 **end_due_date** | **string**| 期日の終了日(yyyy-mm-dd) | [optional]
 **invoice_number** | **string**| 請求書番号 | [optional]
 **description** | **string**| 概要 | [optional]
 **invoice_status** | **string**| 請求書ステータス  (draft: 下書き, applying: 申請中, remanded: 差し戻し, rejected: 却下, approved: 承認済み, unsubmitted: 送付待ち, submitted: 送付済み) | [optional]
 **payment_status** | **string**| 入金ステータス  (unsettled: 入金待ち, settled: 入金済み) | [optional]
 **offset** | **int**| 取得レコードのオフセット (デフォルト: 0) | [optional]
 **limit** | **int**| 取得レコードの件数 (デフォルト: 20, 最大: 100) | [optional]

### Return type

[**\OpenAPI\Client\Model\InvoiceIndexResponse**](../Model/InvoiceIndexResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateInvoice()`

```php
updateInvoice($id, $invoice_update_params): \OpenAPI\Client\Model\InvoiceResponse
```

請求書の更新

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\InvoicesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 請求書ID
$invoice_update_params = new \OpenAPI\Client\Model\InvoiceUpdateParams(); // \OpenAPI\Client\Model\InvoiceUpdateParams | 請求書の更新

try {
    $result = $apiInstance->updateInvoice($id, $invoice_update_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InvoicesApi->updateInvoice: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 請求書ID |
 **invoice_update_params** | [**\OpenAPI\Client\Model\InvoiceUpdateParams**](../Model/InvoiceUpdateParams.md)| 請求書の更新 | [optional]

### Return type

[**\OpenAPI\Client\Model\InvoiceResponse**](../Model/InvoiceResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
