# Info

## Request menu

https://search.wb.ru/exactmatch/ru/common/v4/search?
appType=1&curr=rub&dest=-1257786&page={page}
&query={'%20'.join(key_word.split())}&resultset=catalog
&sort=popular&spp=24&suppressSpellcheck=false

[request](https://static-basket-01.wbbasket.ru/vol0/data/main-menu-ru-ru-v3.json)

[response](main-menu-ru-ru-v3.json)

## Request catalog

https://catalog.wb.ru/catalog/{shard}/v2/catalog?appType=1&curr=rub
&dest=-1257786
&locale=ru
&page={page}
&priceU={low_price * 100};{top_price * 100}
&sort=popular&spp=0
&{query}
&discount={discount}'

[request](https://catalog.wb.ru/catalog/electronic36/v2/catalog?appType=1&curr=rub&dest=-1257786&locale=ru&page=1&priceU=0;100000000&sort=popular&spp=0&subject=524)

[response](catalog.json)

## Search

[request](https://u-search.wb.ru/exactmatch/ru/common/v18/search?ab_testing=false&appType=1&curr=rub&dest=-1257786&hide_dtype=11&inheritFilters=false&lang=ru&page=1&query=macbook%20air&resultset=catalog&sort=popular&spp=30&suppressSpellcheck=false)

[response](search.json)
