<?php
	// reference to the database connection
	$link = "";
	// database constants
	define('DB_SERVER', 'localhost');
	define('DB_NAME', 'travel');
	define('DB_USER', 'root');
	define('DB_PASS', '');

	// directory separator
    defined("DS") ? NULL : define("DS",DIRECTORY_SEPARATOR);
    defined("SITE_ROOT") ? NULL : define("SITE_ROOT", "C:".DS."wamp".DS."www".DS."travel");
    
    // on mac
    // defined("SITE_ROOT") ? NULL : define("SITE_ROOT", DS."Applications".DS."MAMP".DS."htdocs".DS."travel");

    require 'twilio-php-master/Twilio/autoload.php';
    // Use the REST API Client to make requests to the Twilio REST API
    use Twilio\Rest\Client;

    $sid = 'AC704e2243741d245cc450f5dcd929516b';
    $token = '80199f9ff67abea8ab670500a913e236';

    $client = new Client($sid, $token);
    $from = '+447481339364';
?>