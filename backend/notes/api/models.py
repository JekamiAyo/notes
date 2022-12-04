from django.db import models

# Create your models here.

class Note(models.Model):
    body = models.TextField() # for the file upload 
    updated = models.DateTimeField(auto_now=True) # the timestamp for every update. it is automatic
    created = models.DateTimeField(auto_now_add= True) # the timestamp once doc is created or added

    def __str__(self):
        return self.body[0:50]# for the first 50 characters

    class Meta:
        ordering = ["-updated"]

        