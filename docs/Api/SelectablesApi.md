# OpenAPI\Client\SelectablesApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFormsSelectables()**](SelectablesApi.md#getFormsSelectables) | **GET** /api/1/forms/selectables | フォーム用選択項目情報の取得


## `getFormsSelectables()`

```php
getFormsSelectables($company_id, $includes): \OpenAPI\Client\Model\SelectablesIndexResponse
```

フォーム用選択項目情報の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\SelectablesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$includes = 'includes_example'; // string | 取得する項目(項目: account_item)

try {
    $result = $apiInstance->getFormsSelectables($company_id, $includes);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SelectablesApi->getFormsSelectables: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **includes** | **string**| 取得する項目(項目: account_item) | [optional]

### Return type

[**\OpenAPI\Client\Model\SelectablesIndexResponse**](../Model/SelectablesIndexResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
