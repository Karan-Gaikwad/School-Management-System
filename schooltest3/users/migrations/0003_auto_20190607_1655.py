# Generated by Django 2.2.2 on 2019-06-07 11:25

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0002_role'),
    ]

    operations = [
        migrations.AlterField(
            model_name='usertype',
            name='role',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='users.Role'),
        ),
    ]
