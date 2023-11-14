# Generated by Django 3.2.7 on 2021-12-07 16:45

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('learning', '0003_auto_20211207_1645'),
        ('users', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='CompletedTest',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('uuid', models.UUIDField(blank=True, default=uuid.uuid4, editable=False, unique=True)),
                ('completed_at', models.DateTimeField(auto_now_add=True, help_text='DateTime when test was completed')),
                ('test', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='learning.testassignment')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='completed_tests', to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
