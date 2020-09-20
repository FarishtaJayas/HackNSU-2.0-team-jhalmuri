from django.db import models


# Create your models here.

class ProfileUser(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField(max_length=100, unique=True)
    ranking = models.CharField(max_length=100)
    
    def __str__(self): 
        return self.name


class Item(models.Model):
    item_name = models.CharField(max_length=100, unique=True)
    item_catagory = models.CharField(max_length=100)
    item_price = models.FloatField(default=0.0)
    item_quantity = models.IntegerField(default=0)

    
    
    def __str__(self):
        return self.item_name
    

    
    
    
    
    

    
    