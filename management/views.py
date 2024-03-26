from rest_framework import viewsets, permissions, response, status

from management.serializers import ProfileSerializer


class ProfileViewSet(viewsets.ViewSet):
    permission_classes = [permissions.IsAuthenticated]
    serializer_class = ProfileSerializer

    def retrieve(self, request, pk=None):
        if pk != 'me':
            return response.Response(status=status.HTTP_404_NOT_FOUND)
        return response.Response(
            self.serializer_class(request.user).data
        )

    def partial_update(self, request, pk=None):
        if pk != 'me':
            return response.Response(status=status.HTTP_404_NOT_FOUND)
        serializer = self.serializer_class(
            request.user,
            data=request.data,
            partial=True,
        )
        if serializer.is_valid():
            serializer.save()
            return response.Response(serializer.data, status=status.HTTP_202_ACCEPTED)
        return response.Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)