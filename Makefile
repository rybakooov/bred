.PHONY: clean
clear-back-cache:
	@docker-compose exec django bash -c "./manage.py shell -c 'from django.core.cache import cache; cache.clear()'"
