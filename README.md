# TEST LARAVEL
## Build, Up and Execute docker
Go to directory
> cd /docker/dev

then  build container of docker php8 y apache
```
sudo docker-compose build
```
Then up container and execute for running command 
```
sudo docker-compose up -d
sudo docker exec -it testlaravel_dev_php sh
```
 Do not forget that you must make a copy of the *.env example* and rename it as **.env** , modify some variables according to your environment

&nbsp;

## Run Laravel Project
1.-  When execute the container, first time install it will process the required files to load the **Laravel v.8.0** in web browser
    
    composer install


2.- To run all of your outstanding migrations, execute the migrate Artisan command:
    
    php artisan migrate

3.- You may execute the db:seed Artisan command to seed your database. By default, the db:seed command runs the `Database\Seeders\DatabaseSeeder` class, which may in turn invoke other seed classes. However, you may use the --class option to specify a specific seeder class to run individually:
    
    php artisan db:seed

*More commands*


Refresh the database and run all database seeds...
    
    php artisan migrate:refresh --seed

&ensp;

Reference:
https://laravel.com/docs/8.x/releases