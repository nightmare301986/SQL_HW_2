SELECT bucket,
    IF(bucket = 'less then equal to 100', 'Маленький заказ',
        IF(bucket = '101 to 300',
            'Средний заказ', 'Большой заказ')) AS category
    FROM hw2.sales