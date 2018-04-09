<?php

	function redirect_to($location) {
		if($location != NULL) {
			header("Location: {$location}");
			exit;
		}
	}

	function multiReturns($value){ //expect some sort of value
		$addPassed = $value;//2results you pass to admin_multireturns ie amazon-reg user and prime
		$newResult = 23 + $addPassed;				//prime amazon user
		$newResult2 = $value * 12; 					//regular amazon user
		return array($newResult, $newResult2); //return more than 1 result. in the project if you need more than 1 item
	}
?>
