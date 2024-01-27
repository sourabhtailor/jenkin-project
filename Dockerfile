from redhat/ubi9
run yum install httpd unzip -y
workdir /var/www/html
add https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip .
run unzip neogym.zip && mv neogym-html/* . && rm -rf *.zip neogym.zip
expose 80
cmd ["httpd","-D","FOREGROUND"]                       
