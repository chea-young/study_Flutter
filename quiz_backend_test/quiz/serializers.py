#django 모델 데이터를 json으로 직렬화를 시켜주는 것이다.
#그래서 api로 통신이 되는 것
from rest_framework import serializers
from .models import Quiz

class QuizSerializer(serializers.ModelSerializer):
    # Quiz모델을 title, body, answer를 담고 있는 json 타입으로 변환해 주는 것
    class Meta:
        model = Quiz
        fields = ('title', 'body', 'answer')