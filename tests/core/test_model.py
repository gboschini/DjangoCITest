from django.test import TestCase
from app.core.models import People


class testPeople(TestCase):

    def testCreatePeople(self):
        p = People()
        p.firstname="scott"
        p.lastname="tiger"
        p.email="scott@tiger.biz"
        p.save()

        self.assertIsNotNone(p.id)
