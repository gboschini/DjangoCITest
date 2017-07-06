import os
import subprocess

from django.core.management.base import BaseCommand, CommandError
from django.conf import settings
from django.core.management import call_command

class Command(BaseCommand):
    script_dir = "%s/database" % os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

    def handle(self, *args, **options):
        self.createDb()

    def createDb(self):
        cmd = "psql postgres postgres -h%s -f %s/0_database.sql" % (settings.DATABASES['default']['HOST'], self.script_dir)
        subprocess.call(cmd, shell=True)
