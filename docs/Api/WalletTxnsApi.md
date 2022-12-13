# OpenAPI\Client\WalletTxnsApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWalletTxn()**](WalletTxnsApi.md#createWalletTxn) | **POST** /api/1/wallet_txns | 明細の作成
[**destroyWalletTxn()**](WalletTxnsApi.md#destroyWalletTxn) | **DELETE** /api/1/wallet_txns/{id} | 明細の削除
[**getWalletTxn()**](WalletTxnsApi.md#getWalletTxn) | **GET** /api/1/wallet_txns/{id} | 明細の取得
[**getWalletTxns()**](WalletTxnsApi.md#getWalletTxns) | **GET** /api/1/wallet_txns | 明細一覧の取得


## `createWalletTxn()`

```php
createWalletTxn($wallet_txn_params): \OpenAPI\Client\Model\WalletTxnResponse
```

明細の作成

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\WalletTxnsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$wallet_txn_params = new \OpenAPI\Client\Model\WalletTxnParams(); // \OpenAPI\Client\Model\WalletTxnParams | 明細の作成

try {
    $result = $apiInstance->createWalletTxn($wallet_txn_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WalletTxnsApi->createWalletTxn: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wallet_txn_params** | [**\OpenAPI\Client\Model\WalletTxnParams**](../Model/WalletTxnParams.md)| 明細の作成 | [optional]

### Return type

[**\OpenAPI\Client\Model\WalletTxnResponse**](../Model/WalletTxnResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `destroyWalletTxn()`

```php
destroyWalletTxn($id, $company_id)
```

明細の削除

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\WalletTxnsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 明細ID
$company_id = 56; // int | 事業所ID

try {
    $apiInstance->destroyWalletTxn($id, $company_id);
} catch (Exception $e) {
    echo 'Exception when calling WalletTxnsApi->destroyWalletTxn: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 明細ID |
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

## `getWalletTxn()`

```php
getWalletTxn($id, $company_id): \OpenAPI\Client\Model\WalletTxnResponse
```

明細の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\WalletTxnsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 明細ID
$company_id = 56; // int | 事業所ID

try {
    $result = $apiInstance->getWalletTxn($id, $company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WalletTxnsApi->getWalletTxn: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 明細ID |
 **company_id** | **int**| 事業所ID |

### Return type

[**\OpenAPI\Client\Model\WalletTxnResponse**](../Model/WalletTxnResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getWalletTxns()`

```php
getWalletTxns($company_id, $walletable_type, $walletable_id, $start_date, $end_date, $entry_side, $offset, $limit): \OpenAPI\Client\Model\InlineResponse20013
```

明細一覧の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\WalletTxnsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$walletable_type = 'walletable_type_example'; // string | 口座区分 (銀行口座: bank_account, クレジットカード: credit_card, 現金: wallet) walletable_type、walletable_idは同時に指定が必要です。
$walletable_id = 56; // int | 口座ID walletable_type、walletable_idは同時に指定が必要です。
$start_date = 'start_date_example'; // string | 取引日で絞込：開始日 (yyyy-mm-dd)
$end_date = 'end_date_example'; // string | 取引日で絞込：終了日 (yyyy-mm-dd)
$entry_side = 'entry_side_example'; // string | 入金／出金 (入金: income, 出金: expense)
$offset = 56; // int | 取得レコードのオフセット (デフォルト: 0)
$limit = 56; // int | 取得レコードの件数 (デフォルト: 20, 最小: 1, 最大: 100)

try {
    $result = $apiInstance->getWalletTxns($company_id, $walletable_type, $walletable_id, $start_date, $end_date, $entry_side, $offset, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WalletTxnsApi->getWalletTxns: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **walletable_type** | **string**| 口座区分 (銀行口座: bank_account, クレジットカード: credit_card, 現金: wallet) walletable_type、walletable_idは同時に指定が必要です。 | [optional]
 **walletable_id** | **int**| 口座ID walletable_type、walletable_idは同時に指定が必要です。 | [optional]
 **start_date** | **string**| 取引日で絞込：開始日 (yyyy-mm-dd) | [optional]
 **end_date** | **string**| 取引日で絞込：終了日 (yyyy-mm-dd) | [optional]
 **entry_side** | **string**| 入金／出金 (入金: income, 出金: expense) | [optional]
 **offset** | **int**| 取得レコードのオフセット (デフォルト: 0) | [optional]
 **limit** | **int**| 取得レコードの件数 (デフォルト: 20, 最小: 1, 最大: 100) | [optional]

### Return type

[**\OpenAPI\Client\Model\InlineResponse20013**](../Model/InlineResponse20013.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
