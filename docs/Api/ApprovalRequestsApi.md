# OpenAPI\Client\ApprovalRequestsApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createApprovalRequest()**](ApprovalRequestsApi.md#createApprovalRequest) | **POST** /api/1/approval_requests | 各種申請の作成
[**destroyApprovalRequest()**](ApprovalRequestsApi.md#destroyApprovalRequest) | **DELETE** /api/1/approval_requests/{id} | 各種申請の削除
[**getApprovalRequest()**](ApprovalRequestsApi.md#getApprovalRequest) | **GET** /api/1/approval_requests/{id} | 各種申請の取得
[**getApprovalRequestForm()**](ApprovalRequestsApi.md#getApprovalRequestForm) | **GET** /api/1/approval_requests/forms/{id} | 各種申請の申請フォームの取得
[**getApprovalRequestForms()**](ApprovalRequestsApi.md#getApprovalRequestForms) | **GET** /api/1/approval_requests/forms | 各種申請の申請フォーム一覧の取得
[**getApprovalRequests()**](ApprovalRequestsApi.md#getApprovalRequests) | **GET** /api/1/approval_requests | 各種申請の一覧
[**updateApprovalRequest()**](ApprovalRequestsApi.md#updateApprovalRequest) | **PUT** /api/1/approval_requests/{id} | 各種申請の更新
[**updateApprovalRequestAction()**](ApprovalRequestsApi.md#updateApprovalRequestAction) | **POST** /api/1/approval_requests/{id}/actions | 各種申請の承認操作


## `createApprovalRequest()`

```php
createApprovalRequest($approval_request_create_params): \OpenAPI\Client\Model\ApprovalRequestResponse
```

各種申請の作成

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ApprovalRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$approval_request_create_params = new \OpenAPI\Client\Model\ApprovalRequestCreateParams(); // \OpenAPI\Client\Model\ApprovalRequestCreateParams | 各種申請の作成

try {
    $result = $apiInstance->createApprovalRequest($approval_request_create_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ApprovalRequestsApi->createApprovalRequest: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **approval_request_create_params** | [**\OpenAPI\Client\Model\ApprovalRequestCreateParams**](../Model/ApprovalRequestCreateParams.md)| 各種申請の作成 | [optional]

### Return type

[**\OpenAPI\Client\Model\ApprovalRequestResponse**](../Model/ApprovalRequestResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `destroyApprovalRequest()`

```php
destroyApprovalRequest($id, $company_id)
```

各種申請の削除

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ApprovalRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 各種申請ID
$company_id = 56; // int | 事業所ID

try {
    $apiInstance->destroyApprovalRequest($id, $company_id);
} catch (Exception $e) {
    echo 'Exception when calling ApprovalRequestsApi->destroyApprovalRequest: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 各種申請ID |
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

## `getApprovalRequest()`

```php
getApprovalRequest($id, $company_id): \OpenAPI\Client\Model\ApprovalRequestResponse
```

各種申請の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ApprovalRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 各種申請ID
$company_id = 56; // int | 事業所ID

try {
    $result = $apiInstance->getApprovalRequest($id, $company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ApprovalRequestsApi->getApprovalRequest: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 各種申請ID |
 **company_id** | **int**| 事業所ID |

### Return type

[**\OpenAPI\Client\Model\ApprovalRequestResponse**](../Model/ApprovalRequestResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getApprovalRequestForm()`

```php
getApprovalRequestForm($id, $company_id): \OpenAPI\Client\Model\ApprovalRequestFormResponse
```

各種申請の申請フォームの取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ApprovalRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 申請フォームID
$company_id = 56; // int | 事業所ID

try {
    $result = $apiInstance->getApprovalRequestForm($id, $company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ApprovalRequestsApi->getApprovalRequestForm: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 申請フォームID |
 **company_id** | **int**| 事業所ID |

### Return type

[**\OpenAPI\Client\Model\ApprovalRequestFormResponse**](../Model/ApprovalRequestFormResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getApprovalRequestForms()`

```php
getApprovalRequestForms($company_id): \OpenAPI\Client\Model\ApprovalRequestFormIndexResponse
```

各種申請の申請フォーム一覧の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ApprovalRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID

try {
    $result = $apiInstance->getApprovalRequestForms($company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ApprovalRequestsApi->getApprovalRequestForms: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |

### Return type

[**\OpenAPI\Client\Model\ApprovalRequestFormIndexResponse**](../Model/ApprovalRequestFormIndexResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getApprovalRequests()`

```php
getApprovalRequests($company_id, $status, $application_number, $title, $form_id, $start_application_date, $end_application_date, $applicant_id, $min_amount, $max_amount, $approver_id, $offset, $limit): \OpenAPI\Client\Model\ApprovalRequestsIndexResponse
```

各種申請の一覧

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ApprovalRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$status = draft; // string | 申請ステータス(draft:下書き, in_progress:申請中, approved:承認済, rejected:却下, feedback:差戻し) 承認者指定時には無効です。
$application_number = 2; // int | 申請No.
$title = 大阪出張; // string | 申請タイトル
$form_id = 56; // int | 申請フォームID
$start_application_date = 'start_application_date_example'; // string | 申請日で絞込：開始日(yyyy-mm-dd)
$end_application_date = 'end_application_date_example'; // string | 申請日で絞込：終了日(yyyy-mm-dd)
$applicant_id = 56; // int | 申請者のユーザーID
$min_amount = 56; // int | 金額で絞込：以上
$max_amount = 56; // int | 金額で絞込：以下
$approver_id = 1; // int | 承認者のユーザーID 承認者指定時には申請ステータスが申請中のものだけが取得可能です。
$offset = 56; // int | 取得レコードのオフセット (デフォルト: 0)
$limit = 56; // int | 取得レコードの件数 (デフォルト: 50, 最小: 1, 最大: 500)

try {
    $result = $apiInstance->getApprovalRequests($company_id, $status, $application_number, $title, $form_id, $start_application_date, $end_application_date, $applicant_id, $min_amount, $max_amount, $approver_id, $offset, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ApprovalRequestsApi->getApprovalRequests: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **status** | **string**| 申請ステータス(draft:下書き, in_progress:申請中, approved:承認済, rejected:却下, feedback:差戻し) 承認者指定時には無効です。 | [optional]
 **application_number** | **int**| 申請No. | [optional]
 **title** | **string**| 申請タイトル | [optional]
 **form_id** | **int**| 申請フォームID | [optional]
 **start_application_date** | **string**| 申請日で絞込：開始日(yyyy-mm-dd) | [optional]
 **end_application_date** | **string**| 申請日で絞込：終了日(yyyy-mm-dd) | [optional]
 **applicant_id** | **int**| 申請者のユーザーID | [optional]
 **min_amount** | **int**| 金額で絞込：以上 | [optional]
 **max_amount** | **int**| 金額で絞込：以下 | [optional]
 **approver_id** | **int**| 承認者のユーザーID 承認者指定時には申請ステータスが申請中のものだけが取得可能です。 | [optional]
 **offset** | **int**| 取得レコードのオフセット (デフォルト: 0) | [optional]
 **limit** | **int**| 取得レコードの件数 (デフォルト: 50, 最小: 1, 最大: 500) | [optional]

### Return type

[**\OpenAPI\Client\Model\ApprovalRequestsIndexResponse**](../Model/ApprovalRequestsIndexResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateApprovalRequest()`

```php
updateApprovalRequest($id, $approval_request_update_params): \OpenAPI\Client\Model\ApprovalRequestResponse
```

各種申請の更新

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ApprovalRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 各種申請ID
$approval_request_update_params = new \OpenAPI\Client\Model\ApprovalRequestUpdateParams(); // \OpenAPI\Client\Model\ApprovalRequestUpdateParams | 各種申請の更新

try {
    $result = $apiInstance->updateApprovalRequest($id, $approval_request_update_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ApprovalRequestsApi->updateApprovalRequest: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 各種申請ID |
 **approval_request_update_params** | [**\OpenAPI\Client\Model\ApprovalRequestUpdateParams**](../Model/ApprovalRequestUpdateParams.md)| 各種申請の更新 |

### Return type

[**\OpenAPI\Client\Model\ApprovalRequestResponse**](../Model/ApprovalRequestResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateApprovalRequestAction()`

```php
updateApprovalRequestAction($id, $approval_request_action_create_params): \OpenAPI\Client\Model\ApprovalRequestResponse
```

各種申請の承認操作

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ApprovalRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 各種申請ID
$approval_request_action_create_params = new \OpenAPI\Client\Model\ApprovalRequestActionCreateParams(); // \OpenAPI\Client\Model\ApprovalRequestActionCreateParams | 各種申請の承認操作

try {
    $result = $apiInstance->updateApprovalRequestAction($id, $approval_request_action_create_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ApprovalRequestsApi->updateApprovalRequestAction: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 各種申請ID |
 **approval_request_action_create_params** | [**\OpenAPI\Client\Model\ApprovalRequestActionCreateParams**](../Model/ApprovalRequestActionCreateParams.md)| 各種申請の承認操作 |

### Return type

[**\OpenAPI\Client\Model\ApprovalRequestResponse**](../Model/ApprovalRequestResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
