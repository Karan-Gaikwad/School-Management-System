# Generated by Django 2.2.2 on 2019-06-19 05:41

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0016_auto_20190619_1101'),
    ]

    operations = [
        migrations.AddField(
            model_name='subjects',
            name='department_name',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='users.Department'),
        ),
    ]
