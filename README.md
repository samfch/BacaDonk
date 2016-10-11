##BacaDonk
Aplikasi *News Reader* sederhana untuk proyek pada **Training Pemrograman Aplikasi Android di Teknik Informatika Unissula**

**Requirement**  
Android Studio 2.2.1 and up

**Instalasi Web App**  
web application untuk proyek ini ada di dalam folder **PHP Files**  
1.copy folder bacadonk ke dalam webroot anda (htdocs / www)  
2.import bacadonk.sql (ada di dalam folder bacadonk)  
3.sesuaikan koneksi pada file config.php
```php
$db = new MysqliDb ('localhost', 'root', 'mysql', 'bacadonk');
```  
4.sesuaikan url pada kode aplikasi android di MainActivity.java  
```java
/** ubah url **/
//String url = "http://10.0.2.2/bacadonk/json.php"; //for use in android default emulator  
String url = "http://10.71.34.1/bacadonk/json.php";//for use in xamarin android player
```
