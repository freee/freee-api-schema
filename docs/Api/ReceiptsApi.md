# OpenAPI\Client\ReceiptsApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createReceipt()**](ReceiptsApi.md#createReceipt) | **POST** /api/1/receipts | ファイルボックス 証憑ファイルアップロード
[**destroyReceipt()**](ReceiptsApi.md#destroyReceipt) | **DELETE** /api/1/receipts/{id} | ファイルボックス 証憑ファイルを削除する
[**downloadReceipt()**](ReceiptsApi.md#downloadReceipt) | **GET** /api/1/receipts/{id}/download | ファイルボックス 証憑ファイルのダウンロード
[**getReceipt()**](ReceiptsApi.md#getReceipt) | **GET** /api/1/receipts/{id} | ファイルボックス 証憑ファイルの取得
[**getReceipts()**](ReceiptsApi.md#getReceipts) | **GET** /api/1/receipts | ファイルボックス 証憑ファイル一覧の取得
[**updateReceipt()**](ReceiptsApi.md#updateReceipt) | **PUT** /api/1/receipts/{id} | ファイルボックス 証憑ファイル情報更新


## `createReceipt()`

```php
createReceipt($company_id, $receipt, $description, $issue_date, $receipt_metadatum_partner_name, $receipt_metadatum_issue_date, $receipt_metadatum_amount): \OpenAPI\Client\Model\ReceiptResponse
```

ファイルボックス 証憑ファイルアップロード

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ReceiptsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$receipt = "/path/to/file.txt"; // \SplFileObject | 証憑ファイル
$description = 'description_example'; // string | メモ (255文字以内)
$issue_date = 'issue_date_example'; // string | 取引日 (yyyy-mm-dd)
$receipt_metadatum_partner_name = 'receipt_metadatum_partner_name_example'; // string | 発行元
$receipt_metadatum_issue_date = 'receipt_metadatum_issue_date_example'; // string | 発行日 (yyyy-mm-dd)
$receipt_metadatum_amount = 56; // int | 金額

try {
    $result = $apiInstance->createReceipt($company_id, $receipt, $description, $issue_date, $receipt_metadatum_partner_name, $receipt_metadatum_issue_date, $receipt_metadatum_amount);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ReceiptsApi->createReceipt: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **receipt** | **\SplFileObject****\SplFileObject**| 証憑ファイル |
 **description** | **string**| メモ (255文字以内) | [optional]
 **issue_date** | **string**| 取引日 (yyyy-mm-dd) | [optional]
 **receipt_metadatum_partner_name** | **string**| 発行元 | [optional]
 **receipt_metadatum_issue_date** | **string**| 発行日 (yyyy-mm-dd) | [optional]
 **receipt_metadatum_amount** | **int**| 金額 | [optional]

### Return type

[**\OpenAPI\Client\Model\ReceiptResponse**](../Model/ReceiptResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `multipart/form-data`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `destroyReceipt()`

```php
destroyReceipt($id, $company_id)
```

ファイルボックス 証憑ファイルを削除する

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ReceiptsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 証憑ファイルID
$company_id = 56; // int | 事業所ID

try {
    $apiInstance->destroyReceipt($id, $company_id);
} catch (Exception $e) {
    echo 'Exception when calling ReceiptsApi->destroyReceipt: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 証憑ファイルID |
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

## `downloadReceipt()`

```php
downloadReceipt($id, $company_id): string
```

ファイルボックス 証憑ファイルのダウンロード

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ReceiptsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 証憑ファイルID
$company_id = 56; // int | 事業所ID

try {
    $result = $apiInstance->downloadReceipt($id, $company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ReceiptsApi->downloadReceipt: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 証憑ファイルID |
 **company_id** | **int**| 事業所ID |

### Return type

**string**

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/csv`, `application/pdf`, `image/_*`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getReceipt()`

```php
getReceipt($id, $company_id): \OpenAPI\Client\Model\ReceiptResponse
```

ファイルボックス 証憑ファイルの取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ReceiptsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 証憑ファイルID
$company_id = 56; // int | 事業所ID

try {
    $result = $apiInstance->getReceipt($id, $company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ReceiptsApi->getReceipt: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 証憑ファイルID |
 **company_id** | **int**| 事業所ID |

### Return type

[**\OpenAPI\Client\Model\ReceiptResponse**](../Model/ReceiptResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getReceipts()`

```php
getReceipts($company_id, $start_date, $end_date, $user_name, $number, $comment_type, $comment_important, $category, $offset, $limit): \OpenAPI\Client\Model\InlineResponse20014
```

ファイルボックス 証憑ファイル一覧の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ReceiptsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$start_date = 'start_date_example'; // string | アップロード日 (yyyy-mm-dd)
$end_date = 'end_date_example'; // string | アップロード日 (yyyy-mm-dd)
$user_name = 'user_name_example'; // string | アップロードしたユーザー名、メールアドレス
$number = 56; // int | アップロードファイルNo
$comment_type = 'comment_type_example'; // string | posted:コメントあり, raised:未解決, resolved:解決済
$comment_important = True; // bool | trueの時、重要コメント付きが対象
$category = 'category_example'; // string | all:すべて、without_deal:未登録、with_expense_application_line:経費申請中, with_deal:登録済み、ignored:無視
$offset = 56; // int | 取得レコードのオフセット (デフォルト: 0)
$limit = 56; // int | 取得レコードの件数 (デフォルト: 50, 最小: 1, 最大: 3000)

try {
    $result = $apiInstance->getReceipts($company_id, $start_date, $end_date, $user_name, $number, $comment_type, $comment_important, $category, $offset, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ReceiptsApi->getReceipts: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **start_date** | **string**| アップロード日 (yyyy-mm-dd) |
 **end_date** | **string**| アップロード日 (yyyy-mm-dd) |
 **user_name** | **string**| アップロードしたユーザー名、メールアドレス | [optional]
 **number** | **int**| アップロードファイルNo | [optional]
 **comment_type** | **string**| posted:コメントあり, raised:未解決, resolved:解決済 | [optional]
 **comment_important** | **bool**| trueの時、重要コメント付きが対象 | [optional]
 **category** | **string**| all:すべて、without_deal:未登録、with_expense_application_line:経費申請中, with_deal:登録済み、ignored:無視 | [optional]
 **offset** | **int**| 取得レコードのオフセット (デフォルト: 0) | [optional]
 **limit** | **int**| 取得レコードの件数 (デフォルト: 50, 最小: 1, 最大: 3000) | [optional]

### Return type

[**\OpenAPI\Client\Model\InlineResponse20014**](../Model/InlineResponse20014.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateReceipt()`

```php
updateReceipt($id, $receipt_update_params): \OpenAPI\Client\Model\ReceiptResponse
```

ファイルボックス 証憑ファイル情報更新

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ReceiptsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 証憑ファイルID
$receipt_update_params = new \OpenAPI\Client\Model\ReceiptUpdateParams(); // \OpenAPI\Client\Model\ReceiptUpdateParams

try {
    $result = $apiInstance->updateReceipt($id, $receipt_update_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ReceiptsApi->updateReceipt: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 証憑ファイルID |
 **receipt_update_params** | [**\OpenAPI\Client\Model\ReceiptUpdateParams**](../Model/ReceiptUpdateParams.md)|  |

### Return type

[**\OpenAPI\Client\Model\ReceiptResponse**](../Model/ReceiptResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
