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

1. Install nginx 1.10.3, PHP 7.0
2. Create the folder structure in the file tree.txt
3. Set up the configuration files in 
4. Set up the soft link to the configuration file 
5. Make the changes in the file
6. Install the files from [phpZoteroWebDAV](https://github.com/krueschan/phpZoteroWebDAV) in the root folder directory, following the folder structure in 

## Troubleshooting
Almost all of the problems you may have are due to file privileges and firewall configuration.
Use the command `chmod -R +rx /var/www` on the linux command line to change the file permissions.
Use the command `iptables` to change firewall rules. (See a tutorial first.)
