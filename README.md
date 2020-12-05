# phpZoteroWebDAV-nginx-configuration
A working configuration for phpZoteroWebDAV on nginx with PHP 7 using FastCGI (FPM) on Ubuntu/Mint

I recently set up my personal Zotero using [phpZoteroWebDAV](https://github.com/krueschan/phpZoteroWebDAV).
Although there is documentation on how to set it up using Apache, I could not find anything about how to
set it up using nginx. I am sharing the configuration file that worked for me in this repo.

## Prerequistes
This is _not_ a full tutorial: you need a working knowledge of linux command line, and at least a passing
knowledge of server setup. 

See one of the many tutorials from the search term "nginx and PHP installation". 
Also study the original instructions from [Christian Holz' blog](http://blog.holz.ca/2011/11/phpzoterowebdav-installation/).

## Software Dependencies
1. Linux Ubuntu or Mint (Folders will be different for Linux distros other than Ubuntu or Mint.)
2. nginx >=1.10.3
3. PHP7.0 >=7.0

## Steps

1. Install nginx 1.10.3, PHP 7.0, and the required PHP modules with the commands in the script [apt-install-nginx-and-php.sh](https://github.com/sinan-ozel/phpZoteroWebDAV-nginx-configuration/blob/master/apt-install-nginx-and-php.sh).
2. Create the folder structure in the file [`tree.txt`](https://github.com/sinan-ozel/phpZoteroWebDAV-nginx-configuration/blob/master/tree.txt) in the web server root folder. (i.e. typically under `/var/www/` for Ubuntu linux systems.)
3. Set up the configuration file in [/etc/nginx/sites-available/zotero.conf](https://github.com/sinan-ozel/phpZoteroWebDAV-nginx-configuration/blob/master/etc/nginx/sites-available/zotero.conf). Also note the other included file, [/etc/nginx/fastcgi.conf](https://github.com/sinan-ozel/phpZoteroWebDAV-nginx-configuration/blob/master/etc/nginx/fastcgi.conf)
4. Set up the soft link to the configuration file from `sites-available` to `sites-enabled`. (i.e. run `sudo ln -s /etc/nginx/sites-available/zotero.conf .` while in the folder `/etc/nginx/sites-enabled`.)
5. Make the shown changes in the file [/etc/php/7.0/fpm/pool.d/www.conf](https://github.com/sinan-ozel/phpZoteroWebDAV-nginx-configuration/blob/master/etc/php/7.0/fpm/pool.d/www.conf)
6. Install the files from [phpZoteroWebDAV](https://github.com/krueschan/phpZoteroWebDAV) in the root folder directory, following the folder structure in [`tree.txt`](https://github.com/sinan-ozel/phpZoteroWebDAV-nginx-configuration/blob/master/tree.txt).
7. Set up file and folder permissions, change ownership if necessary, test the configuration files (`sudo nginx -t`) and (re)start nginx and PHP-FPM. 

## Troubleshooting
Almost all of the problems you may have are due to file privileges, firewall configuration, or needing to restart nginx or PHP FPM services.
Use the command `chmod -R +rx /var/www` on the linux command line to change the file permissions.
Use the command `iptables` to change firewall rules. (See a tutorial first.)
Use the command `sudo systemctl restart nginx` and `sudo systemctl restart php7.0-fpm` to restart the nginx and PHP-FPM.

## Client-Side

Here is what the configuration looks like on the Zotero client on my computer. Note that IP address will be different for you, whatever your server's ip address is.


![image](https://raw.githubusercontent.com/sinan-ozel/phpZoteroWebDAV-nginx-configuration/master/client-side-configuration.png)

