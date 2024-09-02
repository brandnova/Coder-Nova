from django.core.management.base import BaseCommand
from posts.models import CustomTag, CustomTaggedItem
from django.utils.text import slugify

class Command(BaseCommand):
    help = 'Normalize existing tags to lowercase and remove duplicates'

    def handle(self, *args, **kwargs):
        tags = CustomTag.objects.all()
        tag_map = {}

        for tag in tags:
            normalized_name = tag.name.lower()

            if normalized_name in tag_map:
                # If a normalized tag already exists, merge the tags
                existing_tag = tag_map[normalized_name]

                # Reassign all tagged items to the existing tag
                CustomTaggedItem.objects.filter(tag=tag).update(tag=existing_tag)

                # Delete the duplicate tag
                tag.delete()
            else:
                # Normalize the tag name and slug
                tag.name = normalized_name
                tag.slug = slugify(normalized_name)
                tag.save()

                # Add the tag to the map
                tag_map[normalized_name] = tag

        self.stdout.write(self.style.SUCCESS('Tags normalized and duplicates removed.'))
