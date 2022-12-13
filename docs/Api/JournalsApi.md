# OpenAPI\Client\JournalsApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**downloadJournal()**](JournalsApi.md#downloadJournal) | **GET** /api/1/journals/reports/{id}/download | ダウンロード実行
[**getJournalStatus()**](JournalsApi.md#getJournalStatus) | **GET** /api/1/journals/reports/{id}/status | ステータス確認
[**getJournals()**](JournalsApi.md#getJournals) | **GET** /api/1/journals | ダウンロード要求


## `downloadJournal()`

```php
downloadJournal($id, $company_id): string
```

ダウンロード実行

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\JournalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 受け付けID
$company_id = 56; // int | 事業所ID

try {
    $result = $apiInstance->downloadJournal($id, $company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JournalsApi->downloadJournal: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 受け付けID |
 **company_id** | **int**| 事業所ID |

### Return type

**string**

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/csv`, `application/pdf`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getJournalStatus()`

```php
getJournalStatus($company_id, $id): \OpenAPI\Client\Model\JournalStatusResponse
```

ステータス確認

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\JournalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$id = 56; // int | 受け付けID

try {
    $result = $apiInstance->getJournalStatus($company_id, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JournalsApi->getJournalStatus: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **id** | **int**| 受け付けID |

### Return type

[**\OpenAPI\Client\Model\JournalStatusResponse**](../Model/JournalStatusResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getJournals()`

```php
getJournals($download_type, $company_id, $visible_tags, $visible_ids, $start_date, $end_date): \OpenAPI\Client\Model\JournalsResponse
```

ダウンロード要求

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\JournalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$download_type = 'download_type_example'; // string | ダウンロード形式
$company_id = 56; // int | 事業所ID
$visible_tags = array('visible_tags_example'); // string[] | 補助科目やコメントとして出力する項目
$visible_ids = array('visible_ids_example'); // string[] | 追加出力するID項目
$start_date = 'start_date_example'; // string | 取得開始日 (yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 取得終了日 (yyyy-mm-dd)

try {
    $result = $apiInstance->getJournals($download_type, $company_id, $visible_tags, $visible_ids, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JournalsApi->getJournals: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **download_type** | **string**| ダウンロード形式 |
 **company_id** | **int**| 事業所ID |
 **visible_tags** | [**string[]**](../Model/string.md)| 補助科目やコメントとして出力する項目 | [optional]
 **visible_ids** | [**string[]**](../Model/string.md)| 追加出力するID項目 | [optional]
 **start_date** | **string**| 取得開始日 (yyyy-mm-dd) | [optional]
 **end_date** | **string**| 取得終了日 (yyyy-mm-dd) | [optional]

### Return type

[**\OpenAPI\Client\Model\JournalsResponse**](../Model/JournalsResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
