# OpenAPI\Client\ExpenseApplicationLineTemplatesApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createExpenseApplicationLineTemplate()**](ExpenseApplicationLineTemplatesApi.md#createExpenseApplicationLineTemplate) | **POST** /api/1/expense_application_line_templates | 経費科目の作成
[**destroyExpenseApplicationLineTemplate()**](ExpenseApplicationLineTemplatesApi.md#destroyExpenseApplicationLineTemplate) | **DELETE** /api/1/expense_application_line_templates/{id} | 経費科目の削除
[**getExpenseApplicationLineTemplate()**](ExpenseApplicationLineTemplatesApi.md#getExpenseApplicationLineTemplate) | **GET** /api/1/expense_application_line_templates/{id} | 経費科目の取得
[**getExpenseApplicationLineTemplates()**](ExpenseApplicationLineTemplatesApi.md#getExpenseApplicationLineTemplates) | **GET** /api/1/expense_application_line_templates | 経費科目一覧の取得
[**updateExpenseApplicationLineTemplate()**](ExpenseApplicationLineTemplatesApi.md#updateExpenseApplicationLineTemplate) | **PUT** /api/1/expense_application_line_templates/{id} | 経費科目の更新


## `createExpenseApplicationLineTemplate()`

```php
createExpenseApplicationLineTemplate($expense_application_line_template_params): \OpenAPI\Client\Model\ExpenseApplicationLineTemplateResponse
```

経費科目の作成

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ExpenseApplicationLineTemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$expense_application_line_template_params = new \OpenAPI\Client\Model\ExpenseApplicationLineTemplateParams(); // \OpenAPI\Client\Model\ExpenseApplicationLineTemplateParams | 経費科目の作成

try {
    $result = $apiInstance->createExpenseApplicationLineTemplate($expense_application_line_template_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExpenseApplicationLineTemplatesApi->createExpenseApplicationLineTemplate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expense_application_line_template_params** | [**\OpenAPI\Client\Model\ExpenseApplicationLineTemplateParams**](../Model/ExpenseApplicationLineTemplateParams.md)| 経費科目の作成 |

### Return type

[**\OpenAPI\Client\Model\ExpenseApplicationLineTemplateResponse**](../Model/ExpenseApplicationLineTemplateResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `destroyExpenseApplicationLineTemplate()`

```php
destroyExpenseApplicationLineTemplate($id, $company_id)
```

経費科目の削除

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ExpenseApplicationLineTemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 経費科目ID
$company_id = 56; // int | 事業所ID

try {
    $apiInstance->destroyExpenseApplicationLineTemplate($id, $company_id);
} catch (Exception $e) {
    echo 'Exception when calling ExpenseApplicationLineTemplatesApi->destroyExpenseApplicationLineTemplate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 経費科目ID |
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

## `getExpenseApplicationLineTemplate()`

```php
getExpenseApplicationLineTemplate($id, $company_id): \OpenAPI\Client\Model\ExpenseApplicationLineTemplateResponse
```

経費科目の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ExpenseApplicationLineTemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 経費科目ID
$company_id = 56; // int | 事業所ID

try {
    $result = $apiInstance->getExpenseApplicationLineTemplate($id, $company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExpenseApplicationLineTemplatesApi->getExpenseApplicationLineTemplate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 経費科目ID |
 **company_id** | **int**| 事業所ID |

### Return type

[**\OpenAPI\Client\Model\ExpenseApplicationLineTemplateResponse**](../Model/ExpenseApplicationLineTemplateResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getExpenseApplicationLineTemplates()`

```php
getExpenseApplicationLineTemplates($company_id, $offset, $limit): \OpenAPI\Client\Model\InlineResponse20015
```

経費科目一覧の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ExpenseApplicationLineTemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$offset = 56; // int | 取得レコードのオフセット (デフォルト: 0)
$limit = 56; // int | 取得レコードの件数 (デフォルト: 20, 最小: 1, 最大: 100)

try {
    $result = $apiInstance->getExpenseApplicationLineTemplates($company_id, $offset, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExpenseApplicationLineTemplatesApi->getExpenseApplicationLineTemplates: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **offset** | **int**| 取得レコードのオフセット (デフォルト: 0) | [optional]
 **limit** | **int**| 取得レコードの件数 (デフォルト: 20, 最小: 1, 最大: 100) | [optional]

### Return type

[**\OpenAPI\Client\Model\InlineResponse20015**](../Model/InlineResponse20015.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateExpenseApplicationLineTemplate()`

```php
updateExpenseApplicationLineTemplate($id, $expense_application_line_template_params): \OpenAPI\Client\Model\ExpenseApplicationLineTemplateResponse
```

経費科目の更新

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ExpenseApplicationLineTemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 経費科目ID
$expense_application_line_template_params = new \OpenAPI\Client\Model\ExpenseApplicationLineTemplateParams(); // \OpenAPI\Client\Model\ExpenseApplicationLineTemplateParams | 経費科目の更新

try {
    $result = $apiInstance->updateExpenseApplicationLineTemplate($id, $expense_application_line_template_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExpenseApplicationLineTemplatesApi->updateExpenseApplicationLineTemplate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 経費科目ID |
 **expense_application_line_template_params** | [**\OpenAPI\Client\Model\ExpenseApplicationLineTemplateParams**](../Model/ExpenseApplicationLineTemplateParams.md)| 経費科目の更新 |

### Return type

[**\OpenAPI\Client\Model\ExpenseApplicationLineTemplateResponse**](../Model/ExpenseApplicationLineTemplateResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
