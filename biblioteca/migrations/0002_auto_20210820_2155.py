# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('biblioteca', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='autor',
            options={'verbose_name_plural': 'Autores', 'ordering': ['nombre']},
        ),
        migrations.AlterModelOptions(
            name='editor',
            options={'verbose_name_plural': 'Editores', 'ordering': ['nombre']},
        ),
        migrations.AlterModelOptions(
            name='libro',
            options={'ordering': ['titulo']},
        ),
        migrations.AlterField(
            model_name='autor',
            name='email',
            field=models.EmailField(blank=True, max_length=254),
        ),
    ]
