# OpenAPI\Client\SectionsApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSection()**](SectionsApi.md#createSection) | **POST** /api/1/sections | 部門の作成
[**destroySection()**](SectionsApi.md#destroySection) | **DELETE** /api/1/sections/{id} | 部門の削除
[**getSection()**](SectionsApi.md#getSection) | **GET** /api/1/sections/{id} | 
[**getSections()**](SectionsApi.md#getSections) | **GET** /api/1/sections | 部門一覧の取得
[**updateSection()**](SectionsApi.md#updateSection) | **PUT** /api/1/sections/{id} | 部門の更新


## `createSection()`

```php
createSection($section_params): \OpenAPI\Client\Model\SectionResponse
```

部門の作成

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\SectionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$section_params = new \OpenAPI\Client\Model\SectionParams(); // \OpenAPI\Client\Model\SectionParams | 部門の作成

try {
    $result = $apiInstance->createSection($section_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SectionsApi->createSection: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **section_params** | [**\OpenAPI\Client\Model\SectionParams**](../Model/SectionParams.md)| 部門の作成 | [optional]

### Return type

[**\OpenAPI\Client\Model\SectionResponse**](../Model/SectionResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `destroySection()`

```php
destroySection($id, $company_id)
```

部門の削除

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\SectionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$company_id = 56; // int | 事業所ID

try {
    $apiInstance->destroySection($id, $company_id);
} catch (Exception $e) {
    echo 'Exception when calling SectionsApi->destroySection: ', $e->getMessage(), PHP_EOL;
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

## `getSection()`

```php
getSection($id, $company_id): \OpenAPI\Client\Model\SectionResponse
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\SectionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 部門ID
$company_id = 56; // int | 事業所ID

try {
    $result = $apiInstance->getSection($id, $company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SectionsApi->getSection: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 部門ID |
 **company_id** | **int**| 事業所ID |

### Return type

[**\OpenAPI\Client\Model\SectionResponse**](../Model/SectionResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getSections()`

```php
getSections($company_id): \OpenAPI\Client\Model\InlineResponse2001
```

部門一覧の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\SectionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID

try {
    $result = $apiInstance->getSections($company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SectionsApi->getSections: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |

### Return type

[**\OpenAPI\Client\Model\InlineResponse2001**](../Model/InlineResponse2001.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateSection()`

```php
updateSection($id, $section_params): \OpenAPI\Client\Model\SectionResponse
```

部門の更新

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\SectionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$section_params = new \OpenAPI\Client\Model\SectionParams(); // \OpenAPI\Client\Model\SectionParams | 部門の更新

try {
    $result = $apiInstance->updateSection($id, $section_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SectionsApi->updateSection: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |
 **section_params** | [**\OpenAPI\Client\Model\SectionParams**](../Model/SectionParams.md)| 部門の更新 | [optional]

### Return type

[**\OpenAPI\Client\Model\SectionResponse**](../Model/SectionResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
