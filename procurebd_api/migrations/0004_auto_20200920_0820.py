# Generated by Django 2.2 on 2020-09-20 08:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('procurebd_api', '0003_item_item_quantity'),
    ]

    operations = [
        migrations.AlterField(
            model_name='item',
            name='item_name',
            field=models.CharField(max_length=100, unique=True),
        ),
    ]
