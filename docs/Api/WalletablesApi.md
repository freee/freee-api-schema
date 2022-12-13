# OpenAPI\Client\WalletablesApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWalletable()**](WalletablesApi.md#createWalletable) | **POST** /api/1/walletables | 口座の作成
[**destroyWalletable()**](WalletablesApi.md#destroyWalletable) | **DELETE** /api/1/walletables/{type}/{id} | 口座の削除
[**getWalletable()**](WalletablesApi.md#getWalletable) | **GET** /api/1/walletables/{type}/{id} | 口座情報の取得
[**getWalletables()**](WalletablesApi.md#getWalletables) | **GET** /api/1/walletables | 口座一覧の取得
[**updateWalletable()**](WalletablesApi.md#updateWalletable) | **PUT** /api/1/walletables/{type}/{id} | 口座の更新


## `createWalletable()`

```php
createWalletable($walletable_create_params): \OpenAPI\Client\Model\WalletableCreateResponse
```

口座の作成

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\WalletablesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$walletable_create_params = new \OpenAPI\Client\Model\WalletableCreateParams(); // \OpenAPI\Client\Model\WalletableCreateParams | 口座の作成

try {
    $result = $apiInstance->createWalletable($walletable_create_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WalletablesApi->createWalletable: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **walletable_create_params** | [**\OpenAPI\Client\Model\WalletableCreateParams**](../Model/WalletableCreateParams.md)| 口座の作成 | [optional]

### Return type

[**\OpenAPI\Client\Model\WalletableCreateResponse**](../Model/WalletableCreateResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `destroyWalletable()`

```php
destroyWalletable($id, $type, $company_id)
```

口座の削除

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\WalletablesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 口座ID
$type = 'type_example'; // string | 口座種別（bank_account : 銀行口座, credit_card : クレジットカード, wallet : その他の決済口座）
$company_id = 56; // int | 事業所ID

try {
    $apiInstance->destroyWalletable($id, $type, $company_id);
} catch (Exception $e) {
    echo 'Exception when calling WalletablesApi->destroyWalletable: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 口座ID |
 **type** | **string**| 口座種別（bank_account : 銀行口座, credit_card : クレジットカード, wallet : その他の決済口座） |
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

## `getWalletable()`

```php
getWalletable($id, $type, $company_id): \OpenAPI\Client\Model\InlineResponse20010
```

口座情報の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\WalletablesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 口座ID
$type = 'type_example'; // string | 口座種別（bank_account : 銀行口座, credit_card : クレジットカード, wallet : その他の決済口座）
$company_id = 56; // int | 事業所ID

try {
    $result = $apiInstance->getWalletable($id, $type, $company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WalletablesApi->getWalletable: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 口座ID |
 **type** | **string**| 口座種別（bank_account : 銀行口座, credit_card : クレジットカード, wallet : その他の決済口座） |
 **company_id** | **int**| 事業所ID |

### Return type

[**\OpenAPI\Client\Model\InlineResponse20010**](../Model/InlineResponse20010.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getWalletables()`

```php
getWalletables($company_id, $with_balance, $type): \OpenAPI\Client\Model\InlineResponse2009
```

口座一覧の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\WalletablesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$with_balance = True; // bool | 残高情報を含める
$type = 'type_example'; // string | 口座種別（bank_account : 銀行口座, credit_card : クレジットカード, wallet : その他の決済口座）

try {
    $result = $apiInstance->getWalletables($company_id, $with_balance, $type);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WalletablesApi->getWalletables: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **with_balance** | **bool**| 残高情報を含める | [optional]
 **type** | **string**| 口座種別（bank_account : 銀行口座, credit_card : クレジットカード, wallet : その他の決済口座） | [optional]

### Return type

[**\OpenAPI\Client\Model\InlineResponse2009**](../Model/InlineResponse2009.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateWalletable()`

```php
updateWalletable($id, $type, $walletable_update_params): \OpenAPI\Client\Model\InlineResponse20010
```

口座の更新

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\WalletablesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$type = 'type_example'; // string | 口座種別（bank_account : 銀行口座, credit_card : クレジットカード, wallet : その他の決済口座）
$walletable_update_params = new \OpenAPI\Client\Model\WalletableUpdateParams(); // \OpenAPI\Client\Model\WalletableUpdateParams | 口座の更新

try {
    $result = $apiInstance->updateWalletable($id, $type, $walletable_update_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WalletablesApi->updateWalletable: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |
 **type** | **string**| 口座種別（bank_account : 銀行口座, credit_card : クレジットカード, wallet : その他の決済口座） |
 **walletable_update_params** | [**\OpenAPI\Client\Model\WalletableUpdateParams**](../Model/WalletableUpdateParams.md)| 口座の更新 | [optional]

### Return type

[**\OpenAPI\Client\Model\InlineResponse20010**](../Model/InlineResponse20010.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
