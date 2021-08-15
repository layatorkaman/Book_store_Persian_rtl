# Generated by Django 3.2.6 on 2021-08-15 16:41

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100, verbose_name='نام دسته')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='زمان ایجاد')),
                ('updated_at', models.DateTimeField(auto_now=True, verbose_name='زمان بروزرسانی')),
                ('slug', models.SlugField(max_length=60)),
                ('creator', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='catObj_registrar', to=settings.AUTH_USER_MODEL, verbose_name='ایجادکننده')),
                ('last_edit_by', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='catObj_editor', to=settings.AUTH_USER_MODEL, verbose_name='آخرین ویرایش توسط')),
            ],
            options={
                'verbose_name': 'دسته بندی',
                'verbose_name_plural': 'دسته بندی ها',
            },
        ),
        migrations.CreateModel(
            name='Book',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=150, verbose_name='عنوان')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='زمان ایجاد')),
                ('updated_at', models.DateTimeField(auto_now=True, verbose_name='زمان بروزرسانی')),
                ('authors', models.CharField(max_length=200, verbose_name='نویسنده')),
                ('description', models.TextField(blank=True, max_length=700, null=True, verbose_name='درباره کتاب')),
                ('quantity', models.IntegerField(verbose_name='تعداد')),
                ('price', models.FloatField(verbose_name='قیمت')),
                ('image', models.ImageField(blank=True, null=True, upload_to='./images/books', verbose_name='عکس')),
                ('slug', models.SlugField(max_length=100)),
                ('categories', models.ManyToManyField(related_name='book_categories', to='books.Category', verbose_name='دسته ها')),
                ('creator', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='bookObj_registrar', to=settings.AUTH_USER_MODEL, verbose_name='ایجادکننده')),
                ('last_edit_by', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='bookObj_editor', to=settings.AUTH_USER_MODEL, verbose_name='آخرین ویرایش توسط')),
            ],
            options={
                'verbose_name': 'کتاب',
                'verbose_name_plural': 'کتاب ها',
                'ordering': ['title'],
            },
        ),
    ]
