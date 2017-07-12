FROM wordpress:fpm

RUN chmod -R 777 /usr/src/wordpress

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["php-fpm"]
