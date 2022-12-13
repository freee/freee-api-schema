# OpenAPI\Client\PartnersApi

All URIs are relative to https://api.freee.co.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPartner()**](PartnersApi.md#createPartner) | **POST** /api/1/partners | 取引先の作成
[**destroyPartner()**](PartnersApi.md#destroyPartner) | **DELETE** /api/1/partners/{id} | 取引先の削除
[**getPartner()**](PartnersApi.md#getPartner) | **GET** /api/1/partners/{id} | 取引先の取得
[**getPartners()**](PartnersApi.md#getPartners) | **GET** /api/1/partners | 取引先一覧の取得
[**updatePartner()**](PartnersApi.md#updatePartner) | **PUT** /api/1/partners/{id} | 取引先の更新
[**updatePartnerByCode()**](PartnersApi.md#updatePartnerByCode) | **PUT** /api/1/partners/code/{code} | 取引先の更新


## `createPartner()`

```php
createPartner($partner_create_params): \OpenAPI\Client\Model\PartnerResponse
```

取引先の作成

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PartnersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$partner_create_params = new \OpenAPI\Client\Model\PartnerCreateParams(); // \OpenAPI\Client\Model\PartnerCreateParams | 取引先の作成

try {
    $result = $apiInstance->createPartner($partner_create_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PartnersApi->createPartner: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partner_create_params** | [**\OpenAPI\Client\Model\PartnerCreateParams**](../Model/PartnerCreateParams.md)| 取引先の作成 |

### Return type

[**\OpenAPI\Client\Model\PartnerResponse**](../Model/PartnerResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `destroyPartner()`

```php
destroyPartner($id, $company_id)
```

取引先の削除

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PartnersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 取引先ID
$company_id = 56; // int | 事業所ID

try {
    $apiInstance->destroyPartner($id, $company_id);
} catch (Exception $e) {
    echo 'Exception when calling PartnersApi->destroyPartner: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 取引先ID |
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

## `getPartner()`

```php
getPartner($id, $company_id): \OpenAPI\Client\Model\PartnerResponse
```

取引先の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PartnersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 取引先ID
$company_id = 56; // int | 事業所ID

try {
    $result = $apiInstance->getPartner($id, $company_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PartnersApi->getPartner: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 取引先ID |
 **company_id** | **int**| 事業所ID |

### Return type

[**\OpenAPI\Client\Model\PartnerResponse**](../Model/PartnerResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPartners()`

```php
getPartners($company_id, $start_update_date, $end_update_date, $offset, $limit, $keyword): \OpenAPI\Client\Model\PartnersResponse
```

取引先一覧の取得

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PartnersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$company_id = 56; // int | 事業所ID
$start_update_date = 'start_update_date_example'; // string | 更新日で絞り込み：開始日(yyyy-mm-dd)
$end_update_date = 'end_update_date_example'; // string | 更新日で絞り込み：終了日(yyyy-mm-dd)
$offset = 56; // int | 取得レコードのオフセット (デフォルト: 0)
$limit = 56; // int | 取得レコードの件数 (デフォルト: 50, 最小: 1, 最大: 3000)
$keyword = 'keyword_example'; // string | 検索キーワード<br> 取引先コード・取引先名・正式名称・カナ名称・ショートカットキー1・2のいずれかに対する部分一致。<br> 以下のいずれかで区切って複数キーワードを指定した場合はAND検索となります。 <ul> <li>半角スペース</li> <li>全角スペース</li> <li>タブ</li> </ul>

try {
    $result = $apiInstance->getPartners($company_id, $start_update_date, $end_update_date, $offset, $limit, $keyword);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PartnersApi->getPartners: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**| 事業所ID |
 **start_update_date** | **string**| 更新日で絞り込み：開始日(yyyy-mm-dd) | [optional]
 **end_update_date** | **string**| 更新日で絞り込み：終了日(yyyy-mm-dd) | [optional]
 **offset** | **int**| 取得レコードのオフセット (デフォルト: 0) | [optional]
 **limit** | **int**| 取得レコードの件数 (デフォルト: 50, 最小: 1, 最大: 3000) | [optional]
 **keyword** | **string**| 検索キーワード&lt;br&gt; 取引先コード・取引先名・正式名称・カナ名称・ショートカットキー1・2のいずれかに対する部分一致。&lt;br&gt; 以下のいずれかで区切って複数キーワードを指定した場合はAND検索となります。 &lt;ul&gt; &lt;li&gt;半角スペース&lt;/li&gt; &lt;li&gt;全角スペース&lt;/li&gt; &lt;li&gt;タブ&lt;/li&gt; &lt;/ul&gt; | [optional]

### Return type

[**\OpenAPI\Client\Model\PartnersResponse**](../Model/PartnersResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updatePartner()`

```php
updatePartner($id, $partner_update_params): \OpenAPI\Client\Model\PartnerResponse
```

取引先の更新

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PartnersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | 取引先ID
$partner_update_params = new \OpenAPI\Client\Model\PartnerUpdateParams(); // \OpenAPI\Client\Model\PartnerUpdateParams | 取引先の更新

try {
    $result = $apiInstance->updatePartner($id, $partner_update_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PartnersApi->updatePartner: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 取引先ID |
 **partner_update_params** | [**\OpenAPI\Client\Model\PartnerUpdateParams**](../Model/PartnerUpdateParams.md)| 取引先の更新 |

### Return type

[**\OpenAPI\Client\Model\PartnerResponse**](../Model/PartnerResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updatePartnerByCode()`

```php
updatePartnerByCode($code, $partner_update_params): \OpenAPI\Client\Model\PartnerResponse
```

取引先の更新

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: oauth2
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PartnersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$code = 'code_example'; // string | 取引先コード
$partner_update_params = new \OpenAPI\Client\Model\PartnerUpdateParams(); // \OpenAPI\Client\Model\PartnerUpdateParams | 取引先の更新

try {
    $result = $apiInstance->updatePartnerByCode($code, $partner_update_params);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PartnersApi->updatePartnerByCode: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **string**| 取引先コード |
 **partner_update_params** | [**\OpenAPI\Client\Model\PartnerUpdateParams**](../Model/PartnerUpdateParams.md)| 取引先の更新 |

### Return type

[**\OpenAPI\Client\Model\PartnerResponse**](../Model/PartnerResponse.md)

### Authorization

[oauth2](../../README.md#oauth2)

### HTTP request headers

- **Content-Type**: `application/json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
