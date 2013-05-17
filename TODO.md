# To do

## Ubuntu 13/04
- Add PHP Xdebug installation
- Add PHP Code Sniffer installation + PSR standards
- Add Sphinx 0.22 optional installation
- Add Smarty 2 optional installation
- Add webgrind optional installation
- Doxygen optional installation
- Add Zend Framework 2 optional installation
- Add make rules
  - make download
  - make update
  - make production
- Split off locales from webserver make
  - Store a backup of the locales file using some file rotation mechanism
  - Create a clean locales file with the new locales
  - Combine the locales in a single string
