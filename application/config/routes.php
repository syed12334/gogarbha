<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/userguide3/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = "home";
$route['b2bproducts']="products/products_wholesaler";
$route['product/(:any)']="products/product_view/$1";
$route['products/(:any)']="products/index/$1";
// $route['products/(:any)']="products/$1";
$route['404_override'] = 'My404';
$route['v1/register'] = 'v1/App/register';
$route['v1/login'] = 'v1/App/login';
$route['v1/templedetails'] = 'v1/Api/templedetails';
$route['v1/banners'] = 'v1/App/banners';
$route['v1/category'] = 'v1/App/category_list';
$route['v1/productList'] = 'v1/App/product_list';
$route['v1/productDetails'] = 'v1/App/product_details';
$route['v1/giftList'] = 'v1/App/gift_list';
$route['v1/giftInsert'] = 'v1/App/gifts_insert';
$route['v1/giftRequest'] = 'v1/App/gifts_request';
$route['v1/submenus'] = 'v1/App/submenus';
$route['v1/reviews'] = 'v1/App/reviews';
$route['v1/wishlist'] = 'v1/App/wishlist';
$route['v1/removeWishlist'] = 'v1/App/removeWishlist';
$route['v1/stateMaster'] = 'v1/App/stateMaster';
$route['v1/cityList'] = 'v1/App/cityList';
$route['v1/orders'] = 'v1/App/myOrders';
$route['v1/orderdetails'] = 'v1/App/orderDetails';
$route['v1/profileDetails'] = 'v1/App/profileDetails';
$route['v1/updateProfile'] = 'v1/App/updateProfile';
$route['v1/searchSuggestion'] = 'v1/App/searchSuggestion';
$route['v1/searchResults'] = 'v1/App/searchResults';
$route['v1/filterMenu'] = 'v1/App/filterMenu';
$route['v1/priceFilters'] = 'v1/App/priceFilters';
$route['v1/sortFilters'] = 'v1/App/sortFilters';
$route['v1/dimentionFilters'] = 'v1/App/dimentionFilters';
$route['v1/sort'] = 'v1/App/sort';
$route['v1/payments'] = 'v1/App/payments';
$route['v1/menus'] = 'v1/App/menus';
$route['v1/pincodes'] = 'v1/App/pincode';
$route['v1/priceList'] = 'v1/App/priceList';
$route['v1/sortList'] = 'v1/App/sortList';
$route['v1/dimensionList'] = 'v1/App/dimensionList';
$route['v1/specialOffers'] = 'v1/App/specialOffers';
$route['v1/latestOffers'] = 'v1/App/latestOffers';
$route['v1/bundleProcucts'] = 'v1/App/bundleProcucts';
$route['v1/coupons'] = 'v1/App/couponList';
$route['v1/confirmOrders'] = 'v1/App/confirmOrders';
$route['v1/easebuzzResponse'] = 'v1/App/easebuzzResponse';
$route['v1/addwishlist'] = 'v1/App/addWishlist';
$route['v1/forgotPassword'] = 'v1/App/forgotPassword';
$route['v1/search'] = 'v1/App/search';
$route['v1/packages'] = 'v1/App/packages';
$route['v1/myOrdersList'] = 'v1/App/myOrdersViews';
$route['v1/categoryList'] = 'v1/App/categoryListView';
$route['v1/upanayanaForm'] = 'v1/App/upanayanaFormView';
$route['v1/upanayaFetch'] = 'v1/App/fetchUpanayana';
$route['v1/categoryWiseList'] = 'v1/App/categoryWise';
$route['v1/schools'] = 'v1/App/schools';
/* End of file routes.php */
/* Location: ./application/config/routes.php */