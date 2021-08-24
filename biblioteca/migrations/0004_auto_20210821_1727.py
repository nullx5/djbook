# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('biblioteca', '0003_auto_20210821_1518'),
    ]

    operations = [
        migrations.RenameField(
            model_name='autor',
            old_name='apelidos',
            new_name='apellidos',
        ),
        migrations.AlterField(
            model_name='autor',
            name='email',
            field=models.EmailField(blank=True, max_length=254, verbose_name='e-mail'),
        ),
    ]
