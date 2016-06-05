FROM python:3.5.1

# OS level requirements
RUN apt-get update && apt-get install -y nginx

# File copying
ADD / /var/www
WORKDIR /var/www

# Installing Python requirements
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Setting up the uwsgi ini script
RUN mv configs/uwsgi.ini .

# Set up Nginx
RUN rm /etc/nginx/sites-enabled/default
RUN mv configs/nginxproject.conf /etc/nginx/sites-available/nginxproject.conf
RUN ln -s /etc/nginx/sites-available/nginxproject.conf /etc/nginx/sites-enabled/nginxproject.conf

CMD bash /var/www/cli/container/start.sh
