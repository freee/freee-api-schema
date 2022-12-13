# OpenAPI\Client\RenewsApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDealRenew()**](RenewsApi.md#createDealRenew) | **POST** /api/1/deals/{id}/renews | 取引（収入／支出）に対する+更新の作成
[**deleteDealRenew()**](RenewsApi.md#deleteDealRenew) | **DELETE** /api/1/deals/{id}/renews/{renew_id} | 取引（収入／支出）の+更新の削除
[**updateDealRenew()**](RenewsApi.md#updateDealRenew) | **PUT** /api/1/deals/{id}/renews/{renew_id} | 取引（収入／支出）の+更新の更新


## `createDealRenew()`

```php
createDealRenew($id, $renew_create_params): \OpenAPI\Client\Model\DealResponse
```

取引（収入／支出）に対する+更新の作成

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RenewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 取引ID
$renew_create_params = new \OpenAPI\Client\Model\RenewCreateParams(); // \OpenAPI\Client\Model\RenewCreateParams | 取引（収入／支出）に対する+更新の情報

try {
    $result = $apiInstance->createDealRenew($id, $renew_create_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RenewsApi->createDealRenew: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 取引ID |
 **renew_create_params** | [**\OpenAPI\Client\Model\RenewCreateParams**](../Model/RenewCreateParams.md)| 取引（収入／支出）に対する+更新の情報 |

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

## `deleteDealRenew()`

```php
deleteDealRenew($id, $renew_id, $company_id): \OpenAPI\Client\Model\DealResponse
```

取引（収入／支出）の+更新の削除

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RenewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 取引ID
$renew_id = 56; // int | +更新ID
$company_id = 56; // int | 事業所ID

try {
    $result = $apiInstance->deleteDealRenew($id, $renew_id, $company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RenewsApi->deleteDealRenew: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 取引ID |
 **renew_id** | **int**| +更新ID |
 **company_id** | **int**| 事業所ID |

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

## `updateDealRenew()`

```php
updateDealRenew($id, $renew_id, $renew_update_params): \OpenAPI\Client\Model\DealResponse
```

取引（収入／支出）の+更新の更新

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RenewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 取引ID
$renew_id = 56; // int | +更新ID
$renew_update_params = new \OpenAPI\Client\Model\RenewUpdateParams(); // \OpenAPI\Client\Model\RenewUpdateParams | +更新の更新情報

try {
    $result = $apiInstance->updateDealRenew($id, $renew_id, $renew_update_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RenewsApi->updateDealRenew: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 取引ID |
 **renew_id** | **int**| +更新ID |
 **renew_update_params** | [**\OpenAPI\Client\Model\RenewUpdateParams**](../Model/RenewUpdateParams.md)| +更新の更新情報 |

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
