from django.contrib import admin

from restaurant.models import Restaurant, RestaurantImage


class RestaurantImageInline(admin.StackedInline):
    model = RestaurantImage


@admin.register(Restaurant)
class RestaurantAdmin(admin.ModelAdmin):
    search_fields = ("name", "slug", )
    list_filter = ("cuisines", )
    inlines = (RestaurantImageInline, )


admin.site.register(RestaurantImage)
