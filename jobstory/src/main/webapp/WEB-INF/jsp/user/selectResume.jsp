<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <!-- 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300" rel="stylesheet">
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            overflow: hidden;
        }
        form {
            position: absolute;
            top: 20px;
        }
        ul {
            position: relative;
            left: 190px;
            list-style: none;
        }
        #page1, #page2 {
            /* border: 1px solid black; */
        }
        .pagination {
            position: relative;
            /* border: 1px solid black; */
            left: 200px;
        }
        h4 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form>
        <h4>이력서 선택</h4>
        <hr>
        <div>
            <ul>
                <li>
                    <input type="radio" name="" id="">
                    <label for="">이력서 제목 1</label>
                </li>
                <li>
                    <input type="radio" name="" id="">
                    <label for="">이력서 제목 2</label>
                </li>
                <li>
                    <input type="radio" name="" id="">
                    <label for="">이력서 제목 3</label>
                </li>
                <li>
                    <input type="radio" name="" id="">
                    <label for="">이력서 제목 4</label>
                </li>
                <li>
                    <input type="radio" name="" id="">
                    <label for="">이력서 제목 5</label>
                </li>
            </ul>
        </div>
        <nav aria-label="Page navigation example" id="page1">
            <ul class="pagination">
                <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                </a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
                </li>
            </ul>
        </nav>
        <h4>첨부 파일 선택</h4>
        <hr>
        <div>
            <ul>
                <li>
                    <input type="radio" name="" id="">
                    <label for="">첨부파일 제목 1</label>
                </li>
                <li>
                    <input type="radio" name="" id="">
                    <label for="">첨부파일 제목 2</label>
                </li>
                <li>
                    <input type="radio" name="" id="">
                    <label for="">첨부파일 제목 3</label>
                </li>
                <li>
                    <input type="radio" name="" id="">
                    <label for="">첨부파일 제목 4</label>
                </li>
                <li>
                    <input type="radio" name="" id="">
                    <label for="">첨부파일 제목 5</label>
                </li>
            </ul>
        </div>
        <nav aria-label="Page navigation example" id="page2">
            <ul class="pagination">
                <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                </a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
                </li>
            </ul>
        </nav>
        <button id="submit-btn">제출</button>
        <button id="cancel-btn">취소</button>
    </form>

    <script>
        $("#submit-btn").click(function () {
            window.close();
        });
    </script>
</body>
</html>