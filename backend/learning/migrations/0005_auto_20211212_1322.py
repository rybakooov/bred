# Generated by Django 3.2.7 on 2021-12-12 13:22

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('files', '0001_initial'),
        ('learning', '0004_subject_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='lesson',
            name='document',
            field=models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='files.documentfile'),
        ),
        migrations.AlterField(
            model_name='lesson',
            name='image',
            field=models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='files.imagefile'),
        ),
        migrations.AlterField(
            model_name='lesson',
            name='subject',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='lessons', to='learning.subject'),
        ),
        migrations.AlterField(
            model_name='lesson',
            name='test',
            field=models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='learning.testassignment'),
        ),
        migrations.AlterField(
            model_name='lesson',
            name='video',
            field=models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='files.videofile'),
        ),
        migrations.AlterField(
            model_name='subject',
            name='image',
            field=models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='files.imagefile'),
        ),
        migrations.AlterField(
            model_name='subject',
            name='test',
            field=models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='learning.testassignment'),
        ),
    ]
