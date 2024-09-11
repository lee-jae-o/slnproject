<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.9/index.global.min.js'></script>
    <style>
        /* 모달 스타일 */
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            z-index: 1000;
        }
        .modal-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<!-- 모달 창 - 일정 추가 -->
<div id="eventModal" class="modal">
    <div class="modal-content">
        <h2>일정 추가</h2>
        <form id="eventForm">
            <label for="eventName">일정명:</label>
            <input type="text" id="eventName" name="eventName"><br>
            <label for="eventDate">일정 시작 날짜:</label>
            <input type="date" id="eventDate" name="eventDate"><br>
            <label for="eventEndDate">일정 종료 날짜:</label>
            <input type="date" id="eventEndDate" name="eventEndDate"><br>
            <label for="eventDescription">일정 설명:</label>
            <textarea id="eventDescription" name="eventDescription"></textarea><br>
            <button type="submit">저장</button>
            <button id="closeModal" type="button">닫기</button>
        </form>
    </div>
</div>

<!-- 모달 창 - 일정 상세 정보 및 수정 -->
<div id="eventDetailModal" class="modal">
    <div class="modal-content">
        <h2>일정 상세 정보 및 수정</h2>
        <p><strong>일정 제목:</strong> <span id="eventDetailTitle"></span></p>
        <p><strong>시작 일자:</strong> <span id="eventDetailStart"></span></p>
        <p><strong>끝 일자:</strong> <span id="eventDetailEnd"></span></p>
        <p><strong>일정 설명:</strong> <span id="eventDetailDescription"></span></p>
        <button id="editEvent" class="btn btn-primary">수정</button>
        <button id="deleteEvent" class="btn btn-danger">삭제</button>
        <button id="closeDetailModal" type="button">닫기</button>
    </div>
</div>

<div id="calendar"></div>

<script>
    var calendar = new FullCalendar.Calendar(document.getElementById('calendar'), {
        initialView: 'dayGridMonth',
        events: [], // 초기 이벤트 목록은 빈 배열로 시작
        dateClick: function(info) {
            openModal('eventModal');
            document.getElementById('eventDate').value = info.dateStr;
        },
        eventClick: function(info) {
            openModal('eventDetailModal');
            var event = info.event;
            document.getElementById('eventDetailTitle').textContent = event.title;
            document.getElementById('eventDetailStart').textContent = event.startStr;
            document.getElementById('eventDetailEnd').textContent = event.endStr;
            document.getElementById('eventDetailDescription').textContent = event.extendedProps.description;

            // 수정 및 삭제 기능을 위해 현재 이벤트를 전역 변수에 저장
            currentEvent = event;
        }
    });

    calendar.render();

    var currentModal = null;
    var currentEvent = null;

    function openModal(modalId) {
        var modal = document.getElementById(modalId);
        if (currentModal) {
            currentModal.style.display = 'none';
        }
        modal.style.display = 'block';
        currentModal = modal;
    }

    var closeModalButton = document.getElementById('closeModal');
    var editEventButton = document.getElementById('editEvent');
    var deleteEventButton = document.getElementById('deleteEvent');

    // "닫기" 버튼 클릭 이벤트 처리
    closeModalButton.addEventListener('click', function() {
        if (currentModal) {
            currentModal.style.display = 'none';
        }
        document.getElementById('eventForm').reset();
    });

    // 모달 창 외부를 클릭했을 때 모달 닫기
    window.addEventListener('click', function(event) {
        if (event.target === currentModal) {
            currentModal.style.display = 'none';
            document.getElementById('eventForm').reset();
        }
    });

    // "수정" 버튼 클릭 이벤트 처리
    editEventButton.addEventListener('click', function() {
        if (currentEvent) {
            // 수정 모달 창 열기
            openModal('eventModal');

            // 기존 일정 정보로 입력 필드 채우기
            document.getElementById('eventName').value = currentEvent.title;
            document.getElementById('eventDate').value = currentEvent.startStr;
            document.getElementById('eventEndDate').value = currentEvent.endStr;
            document.getElementById('eventDescription').value = currentEvent.extendedProps.description;
        }
    });

    // "삭제" 버튼 클릭 이벤트 처리
    deleteEventButton.addEventListener('click', function() {
        if (currentEvent) {
            // 삭제 로직을 여기에 추가
            // 일정을 삭제한 후 모달 창 닫기
            currentEvent.remove();
            currentModal.style.display = 'none';
        }
    });

    // 폼 제출 시 캘린더에 일정 추가 또는 수정
    document.getElementById('eventForm').addEventListener('submit', function(event) {
        event.preventDefault();
        var eventName = document.getElementById('eventName').value;
        var eventDate = document.getElementById('eventDate').value;
        var eventEndDate = document.getElementById('eventEndDate').value;
        var eventDescription = document.getElementById('eventDescription').value;

        if (currentEvent) {
            // 일정 수정
            currentEvent.setProp('title', eventName);
            currentEvent.setStart(eventDate);
            currentEvent.setEnd(eventEndDate);
            currentEvent.setExtendedProp('description', eventDescription);
        } else {
            // 일정 추가
            calendar.addEvent({
                title: eventName,
                start: eventDate,
                end: eventEndDate,
                extendedProps: {
                    description: eventDescription
                }
            });
        }

        // 수정 또는 추가 후 모달 닫기 및 폼 초기화
        if (currentModal) {
            currentModal.style.display = 'none';
        }
        document.getElementById('eventForm').reset();
    });
</script>
</body>
</html>
