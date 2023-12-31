# Generated by Django 3.2.7 on 2021-12-15 10:23

from django.db import migrations, models


def lower_users_emails(apps, schema_editor):
    User = apps.get_model('users', 'User')
    update_list = []

    for user in User.objects.all():
        user.email = user.email.lower()
        update_list.append(user)

    User.objects.bulk_update(update_list, ['email'])


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0002_completedtest'),
    ]

    operations = [
        migrations.RunPython(lower_users_emails, reverse_code=migrations.RunPython.noop)
    ]
