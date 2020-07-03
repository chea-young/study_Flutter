from rest_framework.response import Response
from rest_framework.decorators import api_view
from .models import Quiz
from .serializers import QuizSerializer
import random

# Create your views here.
# http://localhost:8000/quiz/hello/ 입력시
# "hello world!"를 response로 받는다.(api 개발)
@api_view(['GET'])
def helloAPI(request):
    return Response("hello world!")

@api_view(['GET'])
def randomQuiz(request, id):
    #랜덤하게 개수만큼의 문제를 반환
    totalQuizs = Quiz.objects.all()
    randomQuizs = random.sample(list(totalQuizs), id)
    #many=True 다량의 데이터 직렬화
    serializer = QuizSerializer(randomQuizs, many=True)
    return Response(serializer.data)