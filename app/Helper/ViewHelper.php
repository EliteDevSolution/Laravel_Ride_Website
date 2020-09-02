<?php

use App\PromocodeUsage;
use App\ServiceType;

function currency($value = '')
{
	if($value == ""){
		return Setting::get('currency')."0.00";
	} else {
		return Setting::get('currency').$value;
	}
}

function distance($value = '')
{
    if($value == ""){
        return "0".Setting::get('distance', 'Km');
    }else{
        return $value.Setting::get('distance', 'Km');
    }
}

function img($img){
	if($img == ""){
		return asset('main/avatar.jpg');
	}else if (strpos($img, 'http') !== false) {
        return $img;
    }else{
		return asset('storage/app/public/'.$img);
	}
}

function image($img){
	if($img == ""){
		return asset('main/avatar.jpg');
	}else{
		return asset($img);
	}
}

function promo_used_count($promo_id)
{
	return PromocodeUsage::where('status','ADDED')->where('promocode_id',$promo_id)->count();
}

function curl($url)
{
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    $return = curl_exec($ch);
    curl_close ($ch);
    return $return;
}

function get_all_service_types()
{
	return ServiceType::all();
}

function getFleetOwnerAmount($totalAmount) {
    $fleetOwnerPercentage = Setting::get('fleet_owner_percentage', '0');

    return $totalAmount * $fleetOwnerPercentage / 100;
}

function getCompanyAmount($totalAmount) {
    $companyPercentage = Setting::get('company_percentage', '0');

    return $totalAmount * $companyPercentage / 100;
}

function getPartnersAmount($totalAmount) {
    $partnersPercentage = Setting::get('partners_percentage', '0');

    return $totalAmount * $partnersPercentage / 100;
}

function getProviderAmount($totalAmount) {
    $providerPercentage = Setting::get('provider_percentage', '0');

    return $totalAmount * $providerPercentage / 100;
}

function getEscrowAmount($totalAmount) {
    $escrowPercentage = Setting::get('escrow_percentage', '0');

    return $totalAmount * $escrowPercentage / 100;
}