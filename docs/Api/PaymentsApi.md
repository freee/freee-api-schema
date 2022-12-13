# OpenAPI\Client\PaymentsApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDealPayment()**](PaymentsApi.md#createDealPayment) | **POST** /api/1/deals/{id}/payments | 取引（収入／支出）の支払行作成
[**destroyDealPayment()**](PaymentsApi.md#destroyDealPayment) | **DELETE** /api/1/deals/{id}/payments/{payment_id} | 取引（収入／支出）の支払行削除
[**updateDealPayment()**](PaymentsApi.md#updateDealPayment) | **PUT** /api/1/deals/{id}/payments/{payment_id} | 取引（収入／支出）の支払行更新


## `createDealPayment()`

```php
createDealPayment($id, $payment_params): \OpenAPI\Client\Model\DealResponse
```

取引（収入／支出）の支払行作成

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PaymentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 取引ID
$payment_params = new \OpenAPI\Client\Model\PaymentParams(); // \OpenAPI\Client\Model\PaymentParams | 取引（収入／支出）の支払行作成

try {
    $result = $apiInstance->createDealPayment($id, $payment_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PaymentsApi->createDealPayment: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 取引ID |
 **payment_params** | [**\OpenAPI\Client\Model\PaymentParams**](../Model/PaymentParams.md)| 取引（収入／支出）の支払行作成 |

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

## `destroyDealPayment()`

```php
destroyDealPayment($id, $payment_id, $company_id)
```

取引（収入／支出）の支払行削除

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PaymentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 取引ID
$payment_id = 56; // int | 決済ID
$company_id = 56; // int | 事業所ID

try {
    $apiInstance->destroyDealPayment($id, $payment_id, $company_id);
} catch (Exception $e) {
    echo 'Exception when calling PaymentsApi->destroyDealPayment: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 取引ID |
 **payment_id** | **int**| 決済ID |
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

## `updateDealPayment()`

```php
updateDealPayment($id, $payment_id, $payment_params): \OpenAPI\Client\Model\DealResponse
```

取引（収入／支出）の支払行更新

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PaymentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 取引ID
$payment_id = 56; // int | 決済ID
$payment_params = new \OpenAPI\Client\Model\PaymentParams(); // \OpenAPI\Client\Model\PaymentParams | 取引（収入／支出）の支払行更新

try {
    $result = $apiInstance->updateDealPayment($id, $payment_id, $payment_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PaymentsApi->updateDealPayment: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 取引ID |
 **payment_id** | **int**| 決済ID |
 **payment_params** | [**\OpenAPI\Client\Model\PaymentParams**](../Model/PaymentParams.md)| 取引（収入／支出）の支払行更新 |

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
