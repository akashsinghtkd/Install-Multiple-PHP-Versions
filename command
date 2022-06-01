Add a PHP Repository

By default, Ubuntu 20.04 ships with the PHP version 7.4. So you'll need to add the PHP repository in your system to install the multiple PHP versions. 

First, install the required dependencies with the following command: 

# apt-get install software-properties-common gnupg2 -y 

Once all the dependencies are installed, add the PHP repository using the following command: 

# add-apt-repository ppa:ondrej/php 

Next, update the repository with the following command: 

# apt-get update -y 

Once the repository is up-to-date, you can proceed to install multiple PHP versions.
Install Multiple Versions of PHP (7.2, 7.4 and 8.0) 

To install the PHP version 7.2 with PHP-FPM support, run the following command: 

# apt-get install php7.2 php7.2-fpm php7.2-cli -y

To install the PHP version 7.4 with PHP-FPM support, run the following command: 

# apt-get install php7.4 php7.4-fpm php7.4-cli -y

To install the PHP version 8.0 with PHP-FPM support, run the following command: 

# apt-get install php8.0 php8.0-fpm php8.0-cli -y

At this point, all PHP versions are installed in your system.
Set the Default PHP Version for the Command Line 

First, check the current version of command-line PHP running the following command: 

# php --version 

You should see the following output: 

PHP 8.0.5 (cli) (built: May  3 2021 11:30:57) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.5, Copyright (c) Zend Technologies
   with Zend OPcache v8.0.5, Copyright (c), by Zend Technologies

As you can see, PHP 8.0 is the default PHP command line version. 

Now, set the default command line PHP version to PHP 7.4 using the following command: 

# update-alternatives --config php 

You will be asked to set the default PHP version as shown below:

There are 3 choices for the alternative php (providing /usr/bin/php).

  Selection    Path             Priority   Status
------------------------------------------------------------
* 0            /usr/bin/php8.0   80        auto mode
  1            /usr/bin/php7.2   72        manual mode
  2            /usr/bin/php7.4   74        manual mode
  3            /usr/bin/php8.0   80        manual mode

Press "enter" to keep the current choice[*], or type selection number: 2
update-alternatives: using /usr/bin/php7.4 to provide /usr/bin/php (php) in manual mode

Select your desired PHP version and hit "Enter" to set it to the default version. 

Now, verify your default PHP version using the following command: 

# php --version

You should see the following output:

PHP 7.4.18 (cli) (built: May  3 2021 11:27:06) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.18, Copyright (c), by Zend Technologies
