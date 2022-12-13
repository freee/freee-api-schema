# OpenAPI\Client\QuotationsApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createQuotation()**](QuotationsApi.md#createQuotation) | **POST** /api/1/quotations | 見積書の作成
[**destroyQuotation()**](QuotationsApi.md#destroyQuotation) | **DELETE** /api/1/quotations/{id} | 見積書の削除
[**getQuotation()**](QuotationsApi.md#getQuotation) | **GET** /api/1/quotations/{id} | 見積書の取得
[**getQuotations()**](QuotationsApi.md#getQuotations) | **GET** /api/1/quotations | 見積書一覧の取得
[**updateQuotation()**](QuotationsApi.md#updateQuotation) | **PUT** /api/1/quotations/{id} | 見積書の更新


## `createQuotation()`

```php
createQuotation($quotation_create_params): \OpenAPI\Client\Model\QuotationResponse
```

見積書の作成

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\QuotationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$quotation_create_params = new \OpenAPI\Client\Model\QuotationCreateParams(); // \OpenAPI\Client\Model\QuotationCreateParams | 見積書の作成

try {
    $result = $apiInstance->createQuotation($quotation_create_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuotationsApi->createQuotation: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotation_create_params** | [**\OpenAPI\Client\Model\QuotationCreateParams**](../Model/QuotationCreateParams.md)| 見積書の作成 | [optional]

### Return type

[**\OpenAPI\Client\Model\QuotationResponse**](../Model/QuotationResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `destroyQuotation()`

```php
destroyQuotation($id, $company_id)
```

見積書の削除

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\QuotationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$company_id = 56; // int | 事業所ID

try {
    $apiInstance->destroyQuotation($id, $company_id);
} catch (Exception $e) {
    echo 'Exception when calling QuotationsApi->destroyQuotation: ', $e->getMessage(), PHP_EOL;
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

## `getQuotation()`

```php
getQuotation($company_id, $id): \OpenAPI\Client\Model\QuotationResponse
```

見積書の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\QuotationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$id = 56; // int | 見積書ID

try {
    $result = $apiInstance->getQuotation($company_id, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuotationsApi->getQuotation: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **id** | **int**| 見積書ID |

### Return type

[**\OpenAPI\Client\Model\QuotationResponse**](../Model/QuotationResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getQuotations()`

```php
getQuotations($company_id, $partner_id, $partner_code, $start_issue_date, $end_issue_date, $quotation_number, $description, $quotation_status, $offset, $limit): \OpenAPI\Client\Model\QuotationIndexResponse
```

見積書一覧の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\QuotationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$partner_id = 56; // int | 取引先IDで絞込
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込
$start_issue_date = 'start_issue_date_example'; // string | 見積日の開始日(yyyy-mm-dd)
$end_issue_date = 'end_issue_date_example'; // string | 見積日の終了日(yyyy-mm-dd)
$quotation_number = 'quotation_number_example'; // string | 見積書番号
$description = 'description_example'; // string | 概要
$quotation_status = 'quotation_status_example'; // string | 見積書ステータス  (unsubmitted: 送付待ち, submitted: 送付済み, all: 全て)
$offset = 56; // int | 取得レコードのオフセット (デフォルト: 0)
$limit = 56; // int | 取得レコードの件数 (デフォルト: 20, 最大: 100)

try {
    $result = $apiInstance->getQuotations($company_id, $partner_id, $partner_code, $start_issue_date, $end_issue_date, $quotation_number, $description, $quotation_status, $offset, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuotationsApi->getQuotations: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **partner_id** | **int**| 取引先IDで絞込 | [optional]
 **partner_code** | **string**| 取引先コードで絞込 | [optional]
 **start_issue_date** | **string**| 見積日の開始日(yyyy-mm-dd) | [optional]
 **end_issue_date** | **string**| 見積日の終了日(yyyy-mm-dd) | [optional]
 **quotation_number** | **string**| 見積書番号 | [optional]
 **description** | **string**| 概要 | [optional]
 **quotation_status** | **string**| 見積書ステータス  (unsubmitted: 送付待ち, submitted: 送付済み, all: 全て) | [optional]
 **offset** | **int**| 取得レコードのオフセット (デフォルト: 0) | [optional]
 **limit** | **int**| 取得レコードの件数 (デフォルト: 20, 最大: 100) | [optional]

### Return type

[**\OpenAPI\Client\Model\QuotationIndexResponse**](../Model/QuotationIndexResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateQuotation()`

```php
updateQuotation($id, $quotation_update_params): \OpenAPI\Client\Model\QuotationResponse
```

見積書の更新

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\QuotationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 見積書ID
$quotation_update_params = new \OpenAPI\Client\Model\QuotationUpdateParams(); // \OpenAPI\Client\Model\QuotationUpdateParams | 見積書の更新

try {
    $result = $apiInstance->updateQuotation($id, $quotation_update_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuotationsApi->updateQuotation: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 見積書ID |
 **quotation_update_params** | [**\OpenAPI\Client\Model\QuotationUpdateParams**](../Model/QuotationUpdateParams.md)| 見積書の更新 | [optional]

### Return type

[**\OpenAPI\Client\Model\QuotationResponse**](../Model/QuotationResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
