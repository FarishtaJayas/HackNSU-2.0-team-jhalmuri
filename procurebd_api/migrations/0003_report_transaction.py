# Generated by Django 2.2 on 2020-09-20 18:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('procurebd_api', '0002_order'),
    ]

    operations = [
        migrations.CreateModel(
            name='Report',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('report_name', models.CharField(max_length=200)),
                ('report_order_quantity', models.CharField(max_length=200)),
                ('report_order_vendor_name', models.CharField(max_length=100)),
                ('report_status', models.CharField(max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='Transaction',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('transaction_name', models.CharField(max_length=200)),
                ('transaction_type', models.CharField(max_length=200)),
                ('transaction_amount', models.CharField(max_length=200)),
                ('transaction_data', models.TextField(max_length=200)),
                ('transaction_vendor_name', models.CharField(max_length=200)),
            ],
        ),
    ]
