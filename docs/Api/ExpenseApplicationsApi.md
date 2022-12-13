# OpenAPI\Client\ExpenseApplicationsApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createExpenseApplication()**](ExpenseApplicationsApi.md#createExpenseApplication) | **POST** /api/1/expense_applications | 経費申請の作成
[**destroyExpenseApplication()**](ExpenseApplicationsApi.md#destroyExpenseApplication) | **DELETE** /api/1/expense_applications/{id} | 経費申請の削除
[**getExpenseApplication()**](ExpenseApplicationsApi.md#getExpenseApplication) | **GET** /api/1/expense_applications/{id} | 経費申請詳細の取得
[**getExpenseApplications()**](ExpenseApplicationsApi.md#getExpenseApplications) | **GET** /api/1/expense_applications | 経費申請一覧の取得
[**updateExpenseApplication()**](ExpenseApplicationsApi.md#updateExpenseApplication) | **PUT** /api/1/expense_applications/{id} | 経費申請の更新
[**updateExpenseApplicationAction()**](ExpenseApplicationsApi.md#updateExpenseApplicationAction) | **POST** /api/1/expense_applications/{id}/actions | 経費申請の承認操作


## `createExpenseApplication()`

```php
createExpenseApplication($expense_application_create_params): \OpenAPI\Client\Model\ExpenseApplicationResponse
```

経費申請の作成

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ExpenseApplicationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$expense_application_create_params = new \OpenAPI\Client\Model\ExpenseApplicationCreateParams(); // \OpenAPI\Client\Model\ExpenseApplicationCreateParams | 経費申請の作成

try {
    $result = $apiInstance->createExpenseApplication($expense_application_create_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExpenseApplicationsApi->createExpenseApplication: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expense_application_create_params** | [**\OpenAPI\Client\Model\ExpenseApplicationCreateParams**](../Model/ExpenseApplicationCreateParams.md)| 経費申請の作成 | [optional]

### Return type

[**\OpenAPI\Client\Model\ExpenseApplicationResponse**](../Model/ExpenseApplicationResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `destroyExpenseApplication()`

```php
destroyExpenseApplication($id, $company_id)
```

経費申請の削除

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ExpenseApplicationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 経費申請ID
$company_id = 56; // int | 事業所ID

try {
    $apiInstance->destroyExpenseApplication($id, $company_id);
} catch (Exception $e) {
    echo 'Exception when calling ExpenseApplicationsApi->destroyExpenseApplication: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 経費申請ID |
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

## `getExpenseApplication()`

```php
getExpenseApplication($id, $company_id): \OpenAPI\Client\Model\ExpenseApplicationResponse
```

経費申請詳細の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ExpenseApplicationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 経費申請ID
$company_id = 56; // int | 事業所ID

try {
    $result = $apiInstance->getExpenseApplication($id, $company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExpenseApplicationsApi->getExpenseApplication: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 経費申請ID |
 **company_id** | **int**| 事業所ID |

### Return type

[**\OpenAPI\Client\Model\ExpenseApplicationResponse**](../Model/ExpenseApplicationResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getExpenseApplications()`

```php
getExpenseApplications($company_id, $status, $payroll_attached, $start_transaction_date, $end_transaction_date, $application_number, $title, $start_issue_date, $end_issue_date, $applicant_id, $approver_id, $min_amount, $max_amount, $offset, $limit): \OpenAPI\Client\Model\ExpenseApplicationsIndexResponse
```

経費申請一覧の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ExpenseApplicationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$status = 'status_example'; // string | 申請ステータス(draft:下書き, in_progress:申請中, approved:承認済, rejected:却下, feedback:差戻し)、 取引ステータス(unsettled:清算待ち, settled:精算済み)
$payroll_attached = true; // bool | true:給与連携あり、false:給与連携なし、未指定時:絞り込みなし
$start_transaction_date = 2019-12-17; // string | 発生日(経費申請項目の日付)で絞込：開始日(yyyy-mm-dd)
$end_transaction_date = 2019-12-17; // string | 発生日(経費申請項目の日付)で絞込：終了日(yyyy-mm-dd)
$application_number = 2; // int | 申請No.
$title = 大阪出張; // string | 申請タイトル
$start_issue_date = 2019-12-17; // string | 申請日で絞込：開始日(yyyy-mm-dd)
$end_issue_date = 2019-12-17; // string | 申請日で絞込：終了日(yyyy-mm-dd)
$applicant_id = 1; // int | 申請者のユーザーID
$approver_id = 1; // int | 承認者のユーザーID
$min_amount = 5000; // int | 金額で絞込 (下限金額)
$max_amount = 10000; // int | 金額で絞込 (上限金額)
$offset = 56; // int | 取得レコードのオフセット (デフォルト: 0)
$limit = 56; // int | 取得レコードの件数 (デフォルト: 50, 最小: 1, 最大: 500)

try {
    $result = $apiInstance->getExpenseApplications($company_id, $status, $payroll_attached, $start_transaction_date, $end_transaction_date, $application_number, $title, $start_issue_date, $end_issue_date, $applicant_id, $approver_id, $min_amount, $max_amount, $offset, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExpenseApplicationsApi->getExpenseApplications: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **status** | **string**| 申請ステータス(draft:下書き, in_progress:申請中, approved:承認済, rejected:却下, feedback:差戻し)、 取引ステータス(unsettled:清算待ち, settled:精算済み) | [optional]
 **payroll_attached** | **bool**| true:給与連携あり、false:給与連携なし、未指定時:絞り込みなし | [optional]
 **start_transaction_date** | **string**| 発生日(経費申請項目の日付)で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_transaction_date** | **string**| 発生日(経費申請項目の日付)で絞込：終了日(yyyy-mm-dd) | [optional]
 **application_number** | **int**| 申請No. | [optional]
 **title** | **string**| 申請タイトル | [optional]
 **start_issue_date** | **string**| 申請日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_issue_date** | **string**| 申請日で絞込：終了日(yyyy-mm-dd) | [optional]
 **applicant_id** | **int**| 申請者のユーザーID | [optional]
 **approver_id** | **int**| 承認者のユーザーID | [optional]
 **min_amount** | **int**| 金額で絞込 (下限金額) | [optional]
 **max_amount** | **int**| 金額で絞込 (上限金額) | [optional]
 **offset** | **int**| 取得レコードのオフセット (デフォルト: 0) | [optional]
 **limit** | **int**| 取得レコードの件数 (デフォルト: 50, 最小: 1, 最大: 500) | [optional]

### Return type

[**\OpenAPI\Client\Model\ExpenseApplicationsIndexResponse**](../Model/ExpenseApplicationsIndexResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateExpenseApplication()`

```php
updateExpenseApplication($id, $expense_application_update_params): \OpenAPI\Client\Model\ExpenseApplicationResponse
```

経費申請の更新

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ExpenseApplicationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 経費申請ID
$expense_application_update_params = new \OpenAPI\Client\Model\ExpenseApplicationUpdateParams(); // \OpenAPI\Client\Model\ExpenseApplicationUpdateParams | 経費申請の更新

try {
    $result = $apiInstance->updateExpenseApplication($id, $expense_application_update_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExpenseApplicationsApi->updateExpenseApplication: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 経費申請ID |
 **expense_application_update_params** | [**\OpenAPI\Client\Model\ExpenseApplicationUpdateParams**](../Model/ExpenseApplicationUpdateParams.md)| 経費申請の更新 | [optional]

### Return type

[**\OpenAPI\Client\Model\ExpenseApplicationResponse**](../Model/ExpenseApplicationResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateExpenseApplicationAction()`

```php
updateExpenseApplicationAction($id, $expense_application_action_create_params): \OpenAPI\Client\Model\ExpenseApplicationResponse
```

経費申請の承認操作

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ExpenseApplicationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 経費申請ID
$expense_application_action_create_params = new \OpenAPI\Client\Model\ExpenseApplicationActionCreateParams(); // \OpenAPI\Client\Model\ExpenseApplicationActionCreateParams | 経費申請の承認操作

try {
    $result = $apiInstance->updateExpenseApplicationAction($id, $expense_application_action_create_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExpenseApplicationsApi->updateExpenseApplicationAction: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 経費申請ID |
 **expense_application_action_create_params** | [**\OpenAPI\Client\Model\ExpenseApplicationActionCreateParams**](../Model/ExpenseApplicationActionCreateParams.md)| 経費申請の承認操作 |

### Return type

[**\OpenAPI\Client\Model\ExpenseApplicationResponse**](../Model/ExpenseApplicationResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
