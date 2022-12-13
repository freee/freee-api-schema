# OpenAPI\Client\ApprovalFlowRoutesApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getApprovalFlowRoute()**](ApprovalFlowRoutesApi.md#getApprovalFlowRoute) | **GET** /api/1/approval_flow_routes/{id} | 申請経路の取得
[**getApprovalFlowRoutes()**](ApprovalFlowRoutesApi.md#getApprovalFlowRoutes) | **GET** /api/1/approval_flow_routes | 申請経路一覧の取得


## `getApprovalFlowRoute()`

```php
getApprovalFlowRoute($id, $company_id): \OpenAPI\Client\Model\ApprovalFlowRouteResponse
```

申請経路の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ApprovalFlowRoutesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 経路申請ID
$company_id = 56; // int | 事業所ID

try {
    $result = $apiInstance->getApprovalFlowRoute($id, $company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ApprovalFlowRoutesApi->getApprovalFlowRoute: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 経路申請ID |
 **company_id** | **int**| 事業所ID |

### Return type

[**\OpenAPI\Client\Model\ApprovalFlowRouteResponse**](../Model/ApprovalFlowRouteResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getApprovalFlowRoutes()`

```php
getApprovalFlowRoutes($company_id, $included_user_id, $usage, $request_form_id): \OpenAPI\Client\Model\ApprovalFlowRoutesIndexResponse
```

申請経路一覧の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ApprovalFlowRoutesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$included_user_id = 56; // int | 経路に含まれるユーザーのユーザーID
$usage = 'usage_example'; // string | 申請種別（各申請種別が使用できる申請経路に絞り込めます。例えば、ApprovalRequest を指定すると、各種申請が使用できる申請経路に絞り込めます。） * `TxnApproval` - 仕訳承認 * `ExpenseApplication` - 経費精算 * `PaymentRequest` - 支払依頼 * `ApprovalRequest` - 各種申請 * `DocApproval` - 請求書等 (見積書・納品書・請求書・発注書)
$request_form_id = 56; // int | 申請フォームID request_form_id指定時はusage条件をApprovalRequestに指定してください。指定しない場合無効になります。

try {
    $result = $apiInstance->getApprovalFlowRoutes($company_id, $included_user_id, $usage, $request_form_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ApprovalFlowRoutesApi->getApprovalFlowRoutes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **included_user_id** | **int**| 経路に含まれるユーザーのユーザーID | [optional]
 **usage** | **string**| 申請種別（各申請種別が使用できる申請経路に絞り込めます。例えば、ApprovalRequest を指定すると、各種申請が使用できる申請経路に絞り込めます。） * &#x60;TxnApproval&#x60; - 仕訳承認 * &#x60;ExpenseApplication&#x60; - 経費精算 * &#x60;PaymentRequest&#x60; - 支払依頼 * &#x60;ApprovalRequest&#x60; - 各種申請 * &#x60;DocApproval&#x60; - 請求書等 (見積書・納品書・請求書・発注書) | [optional]
 **request_form_id** | **int**| 申請フォームID request_form_id指定時はusage条件をApprovalRequestに指定してください。指定しない場合無効になります。 | [optional]

### Return type

[**\OpenAPI\Client\Model\ApprovalFlowRoutesIndexResponse**](../Model/ApprovalFlowRoutesIndexResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
