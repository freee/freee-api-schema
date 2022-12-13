# OpenAPI\Client\TransfersApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTransfer()**](TransfersApi.md#createTransfer) | **POST** /api/1/transfers | 取引（振替）の作成
[**destroyTransfer()**](TransfersApi.md#destroyTransfer) | **DELETE** /api/1/transfers/{id} | 取引（振替）の削除する
[**getTransfer()**](TransfersApi.md#getTransfer) | **GET** /api/1/transfers/{id} | 取引（振替）の取得
[**getTransfers()**](TransfersApi.md#getTransfers) | **GET** /api/1/transfers | 取引（振替）一覧の取得
[**updateTransfer()**](TransfersApi.md#updateTransfer) | **PUT** /api/1/transfers/{id} | 取引（振替）の更新


## `createTransfer()`

```php
createTransfer($transfer_params): \OpenAPI\Client\Model\TransferResponse
```

取引（振替）の作成

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TransfersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$transfer_params = new \OpenAPI\Client\Model\TransferParams(); // \OpenAPI\Client\Model\TransferParams | 取引（振替）の作成

try {
    $result = $apiInstance->createTransfer($transfer_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransfersApi->createTransfer: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transfer_params** | [**\OpenAPI\Client\Model\TransferParams**](../Model/TransferParams.md)| 取引（振替）の作成 | [optional]

### Return type

[**\OpenAPI\Client\Model\TransferResponse**](../Model/TransferResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `destroyTransfer()`

```php
destroyTransfer($id, $company_id)
```

取引（振替）の削除する

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TransfersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 取引(振替)ID
$company_id = 56; // int | 事業所ID

try {
    $apiInstance->destroyTransfer($id, $company_id);
} catch (Exception $e) {
    echo 'Exception when calling TransfersApi->destroyTransfer: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 取引(振替)ID |
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

## `getTransfer()`

```php
getTransfer($id, $company_id): \OpenAPI\Client\Model\TransferResponse
```

取引（振替）の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TransfersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 取引(振替)ID
$company_id = 56; // int | 事業所ID

try {
    $result = $apiInstance->getTransfer($id, $company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransfersApi->getTransfer: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 取引(振替)ID |
 **company_id** | **int**| 事業所ID |

### Return type

[**\OpenAPI\Client\Model\TransferResponse**](../Model/TransferResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTransfers()`

```php
getTransfers($company_id, $start_date, $end_date, $offset, $limit): \OpenAPI\Client\Model\InlineResponse20012
```

取引（振替）一覧の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TransfersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$start_date = 'start_date_example'; // string | 振替日で絞込：開始日 (yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 振替日で絞込：終了日 (yyyy-mm-dd)
$offset = 56; // int | 取得レコードのオフセット (デフォルト: 0)
$limit = 56; // int | 取得レコードの件数 (デフォルト: 20, 最小: 1, 最大: 100)

try {
    $result = $apiInstance->getTransfers($company_id, $start_date, $end_date, $offset, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransfersApi->getTransfers: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **start_date** | **string**| 振替日で絞込：開始日 (yyyy-mm-dd) | [optional]
 **end_date** | **string**| 振替日で絞込：終了日 (yyyy-mm-dd) | [optional]
 **offset** | **int**| 取得レコードのオフセット (デフォルト: 0) | [optional]
 **limit** | **int**| 取得レコードの件数 (デフォルト: 20, 最小: 1, 最大: 100) | [optional]

### Return type

[**\OpenAPI\Client\Model\InlineResponse20012**](../Model/InlineResponse20012.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateTransfer()`

```php
updateTransfer($id, $transfer_params): \OpenAPI\Client\Model\TransferResponse
```

取引（振替）の更新

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TransfersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 取引(振替)ID
$transfer_params = new \OpenAPI\Client\Model\TransferParams(); // \OpenAPI\Client\Model\TransferParams | 取引（振替）の更新

try {
    $result = $apiInstance->updateTransfer($id, $transfer_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransfersApi->updateTransfer: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 取引(振替)ID |
 **transfer_params** | [**\OpenAPI\Client\Model\TransferParams**](../Model/TransferParams.md)| 取引（振替）の更新 |

### Return type

[**\OpenAPI\Client\Model\TransferResponse**](../Model/TransferResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
