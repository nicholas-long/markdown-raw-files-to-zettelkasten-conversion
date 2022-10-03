## write to file
Use "a" for append
```php
<?php
$myfile = fopen("newfile.txt", "w") or die("Unable to open file!");
$txt = "John Doe\n";
fwrite($myfile, $txt);
fclose($myfile);
?>
```
### easy file write
```php
file_put_contents('/dest/file', 'file contents', FILE_APPEND);
```

