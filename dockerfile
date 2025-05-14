FROM ubuntu
RUN apt-get update && apt-get install -y tzdata
RUN apt-get -y install apache2
ADD index.html /var/www/html
ADD create_account.html /var/www/html
ADD dashboard.html /var/www/html
ADD donor_data.html /var/www/html
ADD edit_donor.html /var/www/html
ADD login.html /var/www/html
ADD test.html /var/www/html
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
ENV name dheerajtechinsight
