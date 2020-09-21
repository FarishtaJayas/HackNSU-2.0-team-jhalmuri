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
        
    
class Vendor(models.Model):
    vendor_name = models.CharField(max_length=100)
    vendor_email = models.EmailField(max_length=100, unique=True)
    vendor_phone = models.CharField(max_length=200, unique=True)
    vendor_address = models.CharField(max_length=200)


    def __str__(self):
        return self.vendor_name
    
class Order(models.Model):
    order_name = models.CharField(max_length=200)
    order_due_date = models.CharField(max_length=200)
    order_deliver_data = models.CharField(max_length=200)
    order_address = models.CharField(max_length=200)
    order_item_name = models.CharField(max_length=200)
    order_item_quantity = models.CharField(max_length=200)
    
    def __str__(self):
        return self.order_name
    

class Report(models.Model):
    report_name = models.CharField(max_length=200)
    report_order_quantity = models.CharField(max_length=200)
    report_order_quantity = models.CharField(max_length=200)
    report_order_vendor_name = models.CharField(max_length=100)
    report_status = models.CharField(max_length=200)
    
    
    def __str__(self):
        return self.report_name
    

class Transaction(models.Model):

    transaction_name = models.CharField(max_length=200)
    transaction_type = models.CharField(max_length=200)
    transaction_amount =models.CharField(max_length=200)
    transaction_data = models.TextField(max_length=200)
    transaction_vendor_name = models.CharField(max_length=200)
    
    def __str__(self):
        return self.transaction_name


    
    