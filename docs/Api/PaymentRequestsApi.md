# OpenAPI\Client\PaymentRequestsApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPaymentRequest()**](PaymentRequestsApi.md#createPaymentRequest) | **POST** /api/1/payment_requests | 支払依頼の作成
[**destroyPaymentRequest()**](PaymentRequestsApi.md#destroyPaymentRequest) | **DELETE** /api/1/payment_requests/{id} | 支払依頼の削除
[**getPaymentRequest()**](PaymentRequestsApi.md#getPaymentRequest) | **GET** /api/1/payment_requests/{id} | 支払依頼詳細の取得
[**getPaymentRequests()**](PaymentRequestsApi.md#getPaymentRequests) | **GET** /api/1/payment_requests | 支払依頼一覧の取得
[**updatePaymentRequest()**](PaymentRequestsApi.md#updatePaymentRequest) | **PUT** /api/1/payment_requests/{id} | 支払依頼の更新
[**updatePaymentRequestAction()**](PaymentRequestsApi.md#updatePaymentRequestAction) | **POST** /api/1/payment_requests/{id}/actions | 支払依頼の承認操作


## `createPaymentRequest()`

```php
createPaymentRequest($payment_request_create_params): \OpenAPI\Client\Model\PaymentRequestResponse
```

支払依頼の作成

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PaymentRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$payment_request_create_params = new \OpenAPI\Client\Model\PaymentRequestCreateParams(); // \OpenAPI\Client\Model\PaymentRequestCreateParams | 支払依頼の作成

try {
    $result = $apiInstance->createPaymentRequest($payment_request_create_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PaymentRequestsApi->createPaymentRequest: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_request_create_params** | [**\OpenAPI\Client\Model\PaymentRequestCreateParams**](../Model/PaymentRequestCreateParams.md)| 支払依頼の作成 | [optional]

### Return type

[**\OpenAPI\Client\Model\PaymentRequestResponse**](../Model/PaymentRequestResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `destroyPaymentRequest()`

```php
destroyPaymentRequest($id, $company_id)
```

支払依頼の削除

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PaymentRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 支払依頼ID
$company_id = 56; // int | 事業所ID

try {
    $apiInstance->destroyPaymentRequest($id, $company_id);
} catch (Exception $e) {
    echo 'Exception when calling PaymentRequestsApi->destroyPaymentRequest: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 支払依頼ID |
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

## `getPaymentRequest()`

```php
getPaymentRequest($id, $company_id): \OpenAPI\Client\Model\PaymentRequestResponse
```

支払依頼詳細の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PaymentRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 支払依頼ID
$company_id = 56; // int | 事業所ID

try {
    $result = $apiInstance->getPaymentRequest($id, $company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PaymentRequestsApi->getPaymentRequest: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 支払依頼ID |
 **company_id** | **int**| 事業所ID |

### Return type

[**\OpenAPI\Client\Model\PaymentRequestResponse**](../Model/PaymentRequestResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPaymentRequests()`

```php
getPaymentRequests($company_id, $status, $start_application_date, $end_application_date, $start_issue_date, $end_issue_date, $application_number, $title, $applicant_id, $approver_id, $min_amount, $max_amount, $partner_id, $partner_code, $payment_method, $start_payment_date, $end_payment_date, $document_code, $offset, $limit): \OpenAPI\Client\Model\PaymentRequestsIndexResponse
```

支払依頼一覧の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PaymentRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$status = 'status_example'; // string | '申請ステータス(draft:下書き, in_progress:申請中, approved:承認済, rejected:却下, feedback:差戻し)、 取引ステータス(unsettled:支払待ち, settled:支払済み)'<br> approver_id を指定した場合は無効です。
$start_application_date = 2019-12-17; // string | 申請日で絞込：開始日(yyyy-mm-dd)
$end_application_date = 2019-12-17; // string | 申請日で絞込：終了日(yyyy-mm-dd)
$start_issue_date = 2019-12-17; // string | 発生日で絞込：開始日(yyyy-mm-dd)
$end_issue_date = 2019-12-17; // string | 発生日で絞込：終了日(yyyy-mm-dd)
$application_number = 2; // int | 申請No.
$title = 大阪出張; // string | 申請タイトル
$applicant_id = 1; // int | 申請者のユーザーID
$approver_id = 1; // int | 承認者のユーザーID<br> 'approver_id を指定した場合は、 in_progress: 申請中 の支払依頼のみを返します。'
$min_amount = 5000; // int | 金額で絞込 (下限金額)
$max_amount = 10000; // int | 金額で絞込 (上限金額)
$partner_id = 56; // int | 取引先IDで絞込
$partner_code = 'partner_code_example'; // string | 取引先コードで絞込
$payment_method = credit_card; // string | 支払方法で絞込 (none: 指定なし, domestic_bank_transfer: 国内振込, abroad_bank_transfer: 国外振込, account_transfer: 口座振替, credit_card: クレジットカード)
$start_payment_date = 2019-12-17; // string | 支払期限で絞込：開始日(yyyy-mm-dd)
$end_payment_date = 2019-12-17; // string | 支払期限で絞込：終了日(yyyy-mm-dd)
$document_code = 2; // string | 請求書番号で絞込
$offset = 56; // int | 取得レコードのオフセット (デフォルト: 0)
$limit = 56; // int | 取得レコードの件数 (デフォルト: 50, 最小: 1, 最大: 500)

try {
    $result = $apiInstance->getPaymentRequests($company_id, $status, $start_application_date, $end_application_date, $start_issue_date, $end_issue_date, $application_number, $title, $applicant_id, $approver_id, $min_amount, $max_amount, $partner_id, $partner_code, $payment_method, $start_payment_date, $end_payment_date, $document_code, $offset, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PaymentRequestsApi->getPaymentRequests: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **status** | **string**| &#39;申請ステータス(draft:下書き, in_progress:申請中, approved:承認済, rejected:却下, feedback:差戻し)、 取引ステータス(unsettled:支払待ち, settled:支払済み)&#39;&lt;br&gt; approver_id を指定した場合は無効です。 | [optional]
 **start_application_date** | **string**| 申請日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_application_date** | **string**| 申請日で絞込：終了日(yyyy-mm-dd) | [optional]
 **start_issue_date** | **string**| 発生日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_issue_date** | **string**| 発生日で絞込：終了日(yyyy-mm-dd) | [optional]
 **application_number** | **int**| 申請No. | [optional]
 **title** | **string**| 申請タイトル | [optional]
 **applicant_id** | **int**| 申請者のユーザーID | [optional]
 **approver_id** | **int**| 承認者のユーザーID&lt;br&gt; &#39;approver_id を指定した場合は、 in_progress: 申請中 の支払依頼のみを返します。&#39; | [optional]
 **min_amount** | **int**| 金額で絞込 (下限金額) | [optional]
 **max_amount** | **int**| 金額で絞込 (上限金額) | [optional]
 **partner_id** | **int**| 取引先IDで絞込 | [optional]
 **partner_code** | **string**| 取引先コードで絞込 | [optional]
 **payment_method** | **string**| 支払方法で絞込 (none: 指定なし, domestic_bank_transfer: 国内振込, abroad_bank_transfer: 国外振込, account_transfer: 口座振替, credit_card: クレジットカード) | [optional]
 **start_payment_date** | **string**| 支払期限で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_payment_date** | **string**| 支払期限で絞込：終了日(yyyy-mm-dd) | [optional]
 **document_code** | **string**| 請求書番号で絞込 | [optional]
 **offset** | **int**| 取得レコードのオフセット (デフォルト: 0) | [optional]
 **limit** | **int**| 取得レコードの件数 (デフォルト: 50, 最小: 1, 最大: 500) | [optional]

### Return type

[**\OpenAPI\Client\Model\PaymentRequestsIndexResponse**](../Model/PaymentRequestsIndexResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updatePaymentRequest()`

```php
updatePaymentRequest($id, $payment_request_update_params): \OpenAPI\Client\Model\PaymentRequestResponse
```

支払依頼の更新

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PaymentRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 支払依頼ID
$payment_request_update_params = new \OpenAPI\Client\Model\PaymentRequestUpdateParams(); // \OpenAPI\Client\Model\PaymentRequestUpdateParams | 支払依頼の更新

try {
    $result = $apiInstance->updatePaymentRequest($id, $payment_request_update_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PaymentRequestsApi->updatePaymentRequest: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 支払依頼ID |
 **payment_request_update_params** | [**\OpenAPI\Client\Model\PaymentRequestUpdateParams**](../Model/PaymentRequestUpdateParams.md)| 支払依頼の更新 | [optional]

### Return type

[**\OpenAPI\Client\Model\PaymentRequestResponse**](../Model/PaymentRequestResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updatePaymentRequestAction()`

```php
updatePaymentRequestAction($id, $payment_request_action_create_params): \OpenAPI\Client\Model\PaymentRequestResponse
```

支払依頼の承認操作

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PaymentRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 支払依頼ID
$payment_request_action_create_params = new \OpenAPI\Client\Model\PaymentRequestActionCreateParams(); // \OpenAPI\Client\Model\PaymentRequestActionCreateParams | 支払依頼の承認操作

try {
    $result = $apiInstance->updatePaymentRequestAction($id, $payment_request_action_create_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PaymentRequestsApi->updatePaymentRequestAction: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 支払依頼ID |
 **payment_request_action_create_params** | [**\OpenAPI\Client\Model\PaymentRequestActionCreateParams**](../Model/PaymentRequestActionCreateParams.md)| 支払依頼の承認操作 |

### Return type

[**\OpenAPI\Client\Model\PaymentRequestResponse**](../Model/PaymentRequestResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
