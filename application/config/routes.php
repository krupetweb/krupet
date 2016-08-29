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
|	http://codeigniter.com/user_guide/general/routing.html
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

//::::::::::::::::::::::::::::::::::::::::::>> Homepage
$route['en']								= 'frontend/home';
$route['kh']								= 'frontend/home';

$route['kh/get-price/(:num)/(:num)']						= 'frontend/hospital/get_price/$1/$2';
$route['en/get-price/(:num)/(:num)']						= 'frontend/hospital/get_price/$1/$2';

$route['kh/get-phones']						= 'frontend/home/get_phones';
$route['en/get-phones']						= 'frontend/home/get_phones';

$route['kh/get-distrits']					= 'frontend/frontend_base/get_distrits';
$route['en/get-distrits']					= 'frontend/frontend_base/get_distrits';

//::::::::::::::::::::::::::::::::::::::::::>> Submit Subscribe
$route['submit-subscribe']					= 'frontend/subscribe/submit_subscribe';
$route['en/unsubscribe/(:any)']				= 'frontend/subscribe/unsubscribe/$1';
$route['kh/unsubscribe/(:any)']				= 'frontend/subscribe/unsubscribe/$1';

//::::::::::::::::::::::::::::::::::::::::::>> Submit Subscribe
$route['submit-feedback']					= 'frontend/feedback/submit_feedback';

$route['kh/get-hospitals-for-rate']					= 'frontend/hospital/get_hospitals_for_rate';
$route['en/get-hospitals-for-rate']					= 'frontend/hospital/get_hospitals_for_rate';

//::::::::::::::::::::::::::::::::::::::::::>> Content
$route['en/(:any)']							= 'frontend/content/contents/$1';
$route['kh/(:any)']							= 'frontend/content/contents/$1';
//::::::::::::::::::::::::::::::::::::::::::>> Phamacy
$route['en/phamacies']						= 'frontend/phamacy/phamacies';
$route['kh/phamacies']						= 'frontend/phamacy/phamacies';
$route['en/phamacies/(:any)']			        = 'frontend/phamacy/view_phamacy/$1';
$route['kh/phamacies/(:any)']			        = 'frontend/phamacy/view_phamacy/$1';
//::::::::::::::::::::::::::::::::::::::::::>> Drop Idea
$route['en/drop-your-idea']					= 'frontend/drop_idea/drop_ideas';
$route['kh/drop-your-idea']					= 'frontend/drop_idea/drop_ideas';
$route['sumit-idea'] 						= 'frontend/drop_idea/submit_contact';
//::::::::::::::::::::::::::::::::::::::::::>> Health Consualltant
$route['en/health-consultant']				= 'frontend/health_consultant/health_consultants';
$route['kh/health-consultant']				= 'frontend/health_consultant/health_consultants';
$route['sumit-consultant'] 					= 'frontend/health_consultant/submit_contact';
//::::::::::::::::::::::::::::::::::::::::::>> Hospital
$route['en/hospitals']						= 'frontend/hospital/hospitals';
$route['kh/hospitals']						= 'frontend/hospital/hospitals';
$route['en/hospital']					= 'frontend/hospital/view_hospital/$1';
$route['kh/view-hospital']					= 'frontend/hospital/view_hospital/$1';
$route['en/hospitals/(:any)']			= 'frontend/hospital/view_hospital/$1';
$route['kh/hospitals/(:any)']			= 'frontend/hospital/view_hospital/$1';
$route['en/hospital-rating/(:any)']			= 'frontend/hospital/hospital_rating/$1';
$route['kh/hospital-rating/(:any)']			= 'frontend/hospital/hospital_rating/$1';
$route['submit-hospital-rating']			= 'frontend/hospital/submit_hospital_rating';

//::::::::::::::::::::::::::::::::::::::::::>> Doctors
$route['en/doctors']						= 'frontend/doctor/doctors';
$route['kh/doctors']						= 'frontend/doctor/doctors';
$route['en/doctors/(:any)']				= 'frontend/doctor/view_doctor/$1';
$route['kh/doctors/(:any)']				= 'frontend/doctor/view_doctor/$1';

//::::::::::::::::::::::::::::::::::::::::::>> Specialists
$route['en/specialist']						= 'frontend/specialist/hospitals';
$route['kh/specialist']						= 'frontend/specialist/hospitals';

//::::::::::::::::::::::::::::::::::::::::::>> Blogs (News&Tips)
$route['en/blogs']							= 'frontend/blog/blogs';
$route['kh/blogs']							= 'frontend/blog/blogs';
$route['en/news']							= 'frontend/blog/blogs/2';
$route['kh/news']							= 'frontend/blog/blogs/2';

$route['en/blog-detail/(:any)']				= 'frontend/blog/detail/$1';
$route['kh/blog-detail/(:any)']				= 'frontend/blog/detail/$1';
//$route['en/news-detail']					= 'frontend/blog/blog_detail/2/$1';
//$route['kh/news-detail']					= 'frontend/blog/blog_detail/2/$1';
//$route['en/tips/(:any)']				= 'frontend/blog/blog_detail/1/$1';
//$route['kh/tips/(:any)']				= 'frontend/blog/blog_detail/1/$1';
//$route['en/tip-detail']						= 'frontend/blog/blog_detail/1/$1';
//$route['kh/tip-detail']						= 'frontend/blog/blog_detail/1/$1';

//::::::::::::::::::::::::::::::::::::::::::>> Get Distrits
$route['en/get-distrits']					= 'frontend/home/get_distrits';
$route['kh/get-distrits']					= 'frontend/home/get_distrits';
//::::::::::::::::::::::::::::::::::::::::::>> Get Distrits
$route['en/get-data-distrits']					= 'frontend/home/get_data_distrits';
$route['kh/get-data-distrits']					= 'frontend/home/get_data_distrits';
//::::::::::::::::::::::::::::::::::::::::::>> FAQs
$route['en/faqs']							= 'frontend/fqa/fqas';
$route['kh/faqs']							= 'frontend/fqa/fqas';

//::::::::::::::::::::::::::::::::::::::::::>> Map
$route['en/map']							= 'frontend/map/search';
$route['kh/map']							= 'frontend/map/search';

//::::::::::::::::::::::::::::::::::::::::::>> Hospital
$route['en/search']						= 'frontend/Search/Search';
$route['kh/search']						= 'frontend/Search/Search';

//::::::::::::::::::::::::::::::::::::::::::>> Map
$route['en/feedback']							= 'frontend/feedback';
$route['kh/feedback']							= 'frontend/feedback';

//::::::::::::::::::::::::::::::::::::::::::>> Admin Panel
$route['cms']									= 'login';
$route['cms/logout']							= 'login/logout';

//::::::::::::::::::::::::::::::::::::::::::>> System Rout
$route['default_controller'] 	= 'Redirect';
$route['404_override'] 			= 'Redirect/found_404';
$route['translate_uri_dashes'] 	= FALSE;


