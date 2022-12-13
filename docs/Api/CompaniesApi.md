# OpenAPI\Client\CompaniesApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCompanies()**](CompaniesApi.md#getCompanies) | **GET** /api/1/companies | 事業所一覧の取得
[**getCompany()**](CompaniesApi.md#getCompany) | **GET** /api/1/companies/{id} | 事業所の詳細情報の取得


## `getCompanies()`

```php
getCompanies(): \OpenAPI\Client\Model\CompanyIndexResponse
```

事業所一覧の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\CompaniesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getCompanies();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CompaniesApi->getCompanies: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CompanyIndexResponse**](../Model/CompanyIndexResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getCompany()`

```php
getCompany($id, $details, $account_items, $taxes, $items, $partners, $sections, $tags, $walletables): \OpenAPI\Client\Model\CompanyResponse
```

事業所の詳細情報の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\CompaniesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 事業所ID
$details = True; // bool | 取得情報に勘定科目・税区分コード・品目・取引先・部門・メモタグ・口座の一覧を含める
$account_items = True; // bool | 取得情報に勘定科目一覧を含める
$taxes = True; // bool | 取得情報に税区分コード一覧を含める
$items = True; // bool | 取得情報に品目一覧を含める
$partners = True; // bool | 取得情報に取引先一覧を含める
$sections = True; // bool | 取得情報に部門一覧を含める
$tags = True; // bool | 取得情報にメモタグ一覧を含める
$walletables = True; // bool | 取得情報に口座一覧を含める

try {
    $result = $apiInstance->getCompany($id, $details, $account_items, $taxes, $items, $partners, $sections, $tags, $walletables);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CompaniesApi->getCompany: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 事業所ID |
 **details** | **bool**| 取得情報に勘定科目・税区分コード・品目・取引先・部門・メモタグ・口座の一覧を含める | [optional]
 **account_items** | **bool**| 取得情報に勘定科目一覧を含める | [optional]
 **taxes** | **bool**| 取得情報に税区分コード一覧を含める | [optional]
 **items** | **bool**| 取得情報に品目一覧を含める | [optional]
 **partners** | **bool**| 取得情報に取引先一覧を含める | [optional]
 **sections** | **bool**| 取得情報に部門一覧を含める | [optional]
 **tags** | **bool**| 取得情報にメモタグ一覧を含める | [optional]
 **walletables** | **bool**| 取得情報に口座一覧を含める | [optional]

### Return type

[**\OpenAPI\Client\Model\CompanyResponse**](../Model/CompanyResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
