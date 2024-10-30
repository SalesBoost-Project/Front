-- tb_department, tb_customer는 데이터 있으므로 추가x

INSERT INTO tb_user (user_no, email, employee_id, join_date, name, password, role, dept_id, created_at, updated_at)
VALUES
    (4, 'user3@example.com', 'EMP004', '2024-04-10', '최미진', 'password123', 'USER', 4, NOW(), NOW()),
    (5, 'user4@example.com', 'EMP005', '2024-05-15', '정우진', 'password123', 'USER', 5, NOW(), NOW());

INSERT INTO tb_calendar (no, user_no,created_at, updated_at) VALUES (1, 3, now(), now()),(2, 2, now(), now()),(3, 1, now(), now());

INSERT INTO tb_process(process_no, process_name, is_default, DESCRIPTION, created_at, updated_at, expected_duration)
VALUES (1, '기본영업프로세스', 1, '기회인지-상담-제안-협상-계약', CURDATE(), CURDATE(), 45),
       (2, '테스트영업프로세스', 0, '제안-협상-계약', CURDATE(), CURDATE(), 30);

INSERT INTO tb_sub_process(sub_process_no, sub_process_name, progress_step, success_rate, ACTION, expected_duration, created_at, updated_at, process_no)
VALUES (1, '기회인지', '인지', 0, '인지', 5, CURDATE(), CURDATE(), 1),
       (2, '상담', '제안', 10, '제안', 10, CURDATE(), CURDATE(), 1),
       (3, '제안', '제안', 20, '제안', 5, CURDATE(), CURDATE(), 1),
       (4, '협상', '협상', 60, '견적', 5, CURDATE(), CURDATE(), 1),
       (5, '계약', '계약', 100, '계약', 20, CURDATE(), CURDATE(), 1),
       (6, '제안', '제안', 20, '제안', 5, CURDATE(), CURDATE(), 2),
       (7, '협상', '협상', 30, '견적', 5, CURDATE(), CURDATE(), 2),
       (8, '계약', '계약', 100, '계약', 20, CURDATE(), CURDATE(), 2);

INSERT INTO tb_lead (created_at, updated_at, start_date, end_date, exp_margin, exp_profit, exp_sales, name, note, process, status, sub_process, sucess_per, customer_no)
VALUES (CURDATE(), CURDATE(), '2024-10-01', '2024-10-11', 20, 2000, 10000, '고객 A 영업', 'A에 대한 활동 메모', 1, 'SUCCESS', 5, 100, 1),
       (CURDATE(), CURDATE(), '2024-10-15', '2024-10-20', 10, 800, 8000, '고객 B 영업', 'B에 대한 활동 메모', 1, 'SUCCESS', 5, 100,2),
       (CURDATE(), CURDATE(), '2024-10-10', '2024-10-15', 20, 1000, 5000, '고객 C 영업', 'C에 대한 활동 메모', 1, 'SUCCESS', 5, 100, 3),
       (CURDATE(), CURDATE(), '2024-10-01', '2024-10-01', 30, 1800, 6000, '고객 D 영업', 'D에 대한 활동 메모', 1, 'SUCCESS', 5, 100, 4),
       (CURDATE(), CURDATE(), '2024-11-01', '2024-11-03', 30, 1800, 6000, '고객 D 영업', 'D에 대한 활동 메모', 1, 'SUCCESS', 3, 100, 5);

INSERT INTO tb_step(step_no, complete_yn, complete_date, LEVEL, lead_no, sub_process_no)
VALUES (1, 'Y', '2024-03-01', 0, 1, 1) ,
       (2, 'Y', '2024-03-11', 1, 1, 2) ,
       (3, 'Y', '2024-03-16', 2, 1, 3) ,
       (4, 'Y', '2024-03-21', 3, 1, 4) ,
       (5, 'Y', '2024-04-11', 4, 1, 5) ,
       (6, 'Y', '2024-04-01', 0, 2, 1) ,
       (7, 'Y', '2024-04-11', 1, 2, 2) ,
       (8, 'Y', '2024-04-16', 2, 2, 3) ,
       (9, 'Y', '2024-04-21', 3, 2, 4) ,
       (10, 'Y', '2024-05-11', 4, 2, 5) ,
       (11, 'Y', '2024-05-01', 0, 3, 1) ,
       (12, 'Y', '2024-05-11', 1, 3, 2) ,
       (13, 'Y', '2024-05-16', 2, 3, 3) ,
       (14, 'Y', '2024-05-21', 3, 3, 4) ,
       (15, 'Y', '2024-06-11', 4, 3, 5) ,
       (16, 'Y', '2024-05-01', 0, 4, 1) ,
       (17, 'Y', '2024-05-11', 1, 4, 2) ,
       (18, 'Y', '2024-05-16', 2, 4, 3) ,
       (19, 'Y', '2024-05-21', 3, 4, 4) ,
       (20, 'Y', '2024-06-11', 4, 4, 5);

INSERT INTO tb_act (created_at, updated_at, no, act_cont, act_date, cls, complete_yn, end_time, name, plan_cont, purpose, start_time, calendar_no, lead_no)
VALUES
    (NOW(), NOW(), 1, '화상 회의 플랫폼 논의', '2024-10-01', 'ONLINE', 'N', '15:00', '프로젝트 회의 준비', '신규 회의 준비', '프로젝트 논의', '13:00', 1, 1),
    (NOW(), NOW(), 2, '거래처 방문', '2024-10-03', 'VISIT', 'Y', '17:00', '거래처 미팅', '계약 관련 회의', '상담 및 계약 체결', '15:00', 1, 2),
    (NOW(), NOW(), 3, '전화 문의 응대', '2024-10-05', 'PHONE', 'N', '11:30', '문의사항 해결', '고객 문의 사항 응대', '고객 응대', '10:00', 1, 3),
    (NOW(), NOW(), 4, '이메일 발송', '2024-10-07', 'EMAIL', 'Y', '14:00', '정보 이메일 발송', '상품 정보 제공', '상품 홍보 및 고객 안내', '13:00', 1, 4),
    (NOW(), NOW(), 5, '온라인 미팅 준비', '2024-11-01', 'OTHER', 'N', '16:00', '프로젝트 미팅', '프로젝트 논의', '프로젝트 진행 상황 점검', '14:00', 1, 5);


INSERT INTO tb_act (created_at, updated_at, act_cont, act_date, cls, complete_yn, end_time, name, plan_cont, purpose, start_time, calendar_no, lead_no)
VALUES (NOW(), NOW(),'고객 상담', '2024-01-15', 'VISIT', 'Y', '12:30', '방문 상담', '계획된 고객 방문', '고객 요구 분석', '10:00', 1, 1),
       (NOW(), NOW(),'전화 문의 응대', '2024-01-20', 'PHONE', 'N', '16:00', '전화 상담', '문의 응대 준비', '상품 설명', '15:00', 1, 2),
       (NOW(), NOW(),'이메일 전송', '2024-03-05', 'EMAIL', 'Y', '11:30', '이메일 발송', '상품 정보 전송', '세부 정보 제공', '11:00', 1, 3),
       (NOW(), NOW(),'온라인 미팅', '2024-04-12', 'ONLINE', 'Y', '14:00', '온라인 회의', '클라이언트 요구 분석', '서비스 논의', '13:00', 1, 4),
       (NOW(), NOW(),'온라인 미팅', '2024-04-15', 'ONLINE', 'Y', '14:00', '온라인 회의', '클라이언트 요구 분석', '서비스 논의', '13:00', 1, 4),
       (NOW(), NOW(),'온라인 미팅', '2024-04-16', 'ONLINE', 'Y', '14:00', '온라인 회의', '클라이언트 요구 분석', '서비스 논의', '13:00', 1, 4),
       (NOW(), NOW(),'온라인 미팅', '2024-04-17', 'ONLINE', 'Y', '14:00', '온라인 회의', '클라이언트 요구 분석', '서비스 논의', '13:00', 1, 4),
       (NOW(), NOW(),'현장 방문', '2024-07-18', 'VISIT', 'N', '13:00', '현장 점검', '시설 점검 및 회의', '프로젝트 관리', '10:30', 1, 5),
       (NOW(), NOW(),'고객 방문', '2024-07-22', 'VISIT', 'Y', '17:00', '고객 미팅', '계약 논의', '제품 설명', '15:00', 1, 1),
       (NOW(), NOW(),'전화 상담', '2024-07-10', 'PHONE', 'Y', '11:00', '전화 응대', '고객 불만 처리', '해결 방안 제시', '10:30', 1, 2),
       (NOW(), NOW(),'이메일 회신', '2024-09-19', 'EMAIL', 'Y', '15:30', '이메일 답변', '기술 지원 제공', '제품 사용법 안내', '15:00', 1, 3),
       (NOW(), NOW(),'온라인 회의', '2024-09-03', 'ONLINE', 'N', '16:00', '줌 미팅', '프로젝트 진행 상황 점검', '향후 일정 논의', '15:00', 1, 4),
       (NOW(), NOW(),'고객 방문', '2024-10-11', 'VISIT', 'Y', '12:30', '고객 상담', '서비스 업그레이드 제안', '상세 요구 분석', '10:30', 1, 5),
       (NOW(), NOW(),'고객 방문', '2024-10-12', 'VISIT', 'Y', '12:30', '고객 상담', '서비스 업그레이드 제안', '상세 요구 분석', '10:30', 1, 5),
       (NOW(), NOW(),'전화 응대', '2024-11-23', 'PHONE', 'N', '10:00', '고객 전화 응대', '문제 해결 방안 제공', '이슈 처리', '09:30', 1, 1),
       (NOW(), NOW(),'이메일 발송', '2024-12-30', 'EMAIL', 'Y', '13:00', '프로모션 이메일', '할인 행사 안내', '홍보 전략 수립', '12:30', 1, 2),
       (NOW(), NOW(),'온라인 상담', '2022-01-18', 'ONLINE', 'Y', '17:30', '온라인 고객 상담', '기술 지원', '제품 문제 해결', '16:30', 1, 3),
       (NOW(), NOW(),'고객 미팅', '2022-02-27', 'VISIT', 'N', '11:00', '고객 방문 회의', '계약 협상', '비용 산정', '10:00', 1, 4),
       (NOW(), NOW(),'전화 상담', '2022-03-15', 'PHONE', 'Y', '15:30', '전화 고객 상담', '서비스 안내', '상품 설명', '15:00', 1, 5),
       (NOW(), NOW(),'전화 응대', '2024-11-23', 'PHONE', 'N', '10:00', '고객 전화 응대', '문제 해결 방안 제공', '이슈 처리', '09:30', 2, 1),
       (NOW(), NOW(),'이메일 발송', '2024-12-30', 'EMAIL', 'Y', '13:00', '프로모션 이메일', '할인 행사 안내', '홍보 전략 수립', '12:30', 2, 2),
       (NOW(), NOW(),'온라인 상담', '2022-01-18', 'ONLINE', 'Y', '17:30', '온라인 고객 상담', '기술 지원', '제품 문제 해결', '16:30', 2, 3),
       (NOW(), NOW(),'고객 미팅', '2022-02-27', 'VISIT', 'N', '11:00', '고객 방문 회의', '계약 협상', '비용 산정', '10:00', 2, 4),
       (NOW(), NOW(),'전화 상담', '2022-03-15', 'PHONE', 'Y', '15:30', '전화 고객 상담', '서비스 안내', '상품 설명', '15:00', 2, 5),
       (NOW(), NOW(),'이메일 발송', '2024-12-30', 'EMAIL', 'Y', '13:00', '프로모션 이메일', '할인 행사 안내', '홍보 전략 수립', '12:30', 3, 2),
       (NOW(), NOW(),'온라인 상담', '2022-01-18', 'ONLINE', 'Y', '17:30', '온라인 고객 상담', '기술 지원', '제품 문제 해결', '16:30', 3, 3),
       (NOW(), NOW(),'고객 미팅', '2022-02-27', 'VISIT', 'N', '11:00', '고객 방문 회의', '계약 협상', '비용 산정', '10:00', 3, 4),
       (NOW(), NOW(),'전화 상담', '2022-03-15', 'PHONE', 'Y', '15:30', '전화 고객 상담', '서비스 안내', '상품 설명', '15:00', 3, 5),
       (NOW(), NOW(),'전화 상담', '2022-03-15', 'PHONE', 'Y', '15:30', '전화 고객 상담', '서비스 안내', '상품 설명', '15:00', 3, 5);

INSERT INTO tb_plan (no, created_at, updated_at, content, end_time, personal_yn, plan_cls, plan_date, start_time, title, calendar_no)
VALUES
    (1, NOW(), NOW(), '팀원 전체 회의', '10:00', 'N', 'COMPANY', '2024-11-02', '09:00', '회의 일정', 1),
    (2, NOW(), NOW(), '신규 계약 검토', '15:00', 'Y', 'CONTRACT', '2024-10-04', '13:00', '계약 검토', 1),
    (3, NOW(), NOW(), '개인 개발 공부', '22:00', 'Y', 'PERSONAL', '2024-10-21', '20:00', '개인 학습', 1),
    (4, NOW(), NOW(), '견적서 작성', '17:00', 'N', 'ESTIMATE', '2024-10-11', '15:00', '견적서 작업', 1),
    (5, NOW(), NOW(), '영업 전략 회의', '16:00', 'N', 'SALES', '2024-10-3', '14:00', '영업 전략 논의', 1),
    (6, NOW(), NOW(), '제안서 서식 정리', '22:00', 'Y', 'PROPOSAL', '2024-10-14', '10:00', '제안서 서식', 1),
    (7, NOW(), NOW(), 'OJT', '17:00', 'N', 'COMPANY', '2024-10-17', '15:00', '신입사원 OJT', 1);

INSERT INTO tb_todo (todo_no, created_at, updated_at, content, due_date, priority, private_yn, status, title, todo_cls, calendar_no)
VALUES
    (1, NOW(), NOW(), '고객사 자료 준비', '2024-10-10', 'HIGH', 'N', 'TODO', '자료 준비', 'SALES', 1),
    (2, NOW(), NOW(), '팀 회의 참석', '2024-10-27', 'MEDIUM', 'N', 'INPROGRESS', '회의 참여', 'COMPANY', 1),
    (3, NOW(), NOW(), '개인 일정 조율', '2024-09-29', 'LOW', 'Y', 'DONE', '일정 조율', 'PERSONAL', 1),
    (4, NOW(), NOW(), '계약서 내용 확인', '2024-11-05', 'HIGH', 'N', 'TODO', '계약서 검토', 'CONTRACT', 1),
    (5, NOW(), NOW(), '이메일 답변 작성', '2024-09-30', 'MEDIUM', 'N', 'TODO', '이메일 답변', 'EMAIL', 1);

INSERT INTO tb_poetntial_customer (p_cust_no, created_at, updated_at, addr, cls, company, dept, email, fax, grade, modify_date, name, note, phone, position, register_date,tel,user_no,contact_status)
VALUES
    (1, NOW(), NOW(), '서울시 강남구', 'B2B', 'POC 회사', '영업부', 'poc1@poc.com', '02-111-2222', 'A', NOW(), '홍길동', '잠재 고객 관리 필요', '010-8888-9999', '과장', NOW(), '02-999-8888',1,'TRY_CONTACT'),
    (2, NOW(), NOW(), '서울시 서초구', 'B2C', 'POC2 회사', '개발부', 'poc2@poc.com', '02-222-3333', 'B', NOW(), '이순신', '기술 문의 진행 중', '010-7777-6666', '팀장', NOW(),'02-888-7777',1,'CONTACTING'),
    (3, NOW(), NOW(), '서울시 종로구', 'B2B', 'POC3 회사', '기획부', 'poc3@poc.com', '02-333-4444', 'C', NOW(), '박문수', '견적서 요청 예정', '010-5555-4444', '대리', NOW(),  '02-777-6666',1,'CONTACTING'),
    (4, NOW(), NOW(), '서울시 중구', 'B2C', 'POC4 회사', '인사부', 'poc4@poc.com', '02-444-5555', 'A', NOW(), '최영', '고객사 미팅 예정', '010-3333-2222', '사원', NOW(),'02-666-5555',1,'NO_CONTACT'),
    (5, NOW(), NOW(), '서울시 용산구', 'B2B', 'POC5 회사', '총무부', 'poc5@poc.com', '02-555-6666', 'S', NOW(), '정몽주', '계약 준비 중', '010-1111-0000', '부장', NOW(), '02-555-4444',1,'TRY_CONTACT');

INSERT INTO tb_contact_history (contact_history_no, created_at, updated_at, cls, contact_date, content, p_cust_no, user_no)
VALUES
    (1, NOW(), NOW(), 'CALL', '2024-07-01', '고객사 문의 전화 응대', 1, 1),
    (2, NOW(), NOW(), 'EMAIL', '2024-07-02', '계약 관련 이메일 발송', 2, 2),
    (3, NOW(), NOW(), 'VISIT', '2024-07-03', '거래처 방문 상담', 3, 3),
    (4, NOW(), NOW(), 'ONLINE_MEET', '2024-07-04', '온라인 미팅 진행', 4, 4),
    (5, NOW(), NOW(), 'CHANNEL_TALK', '2024-07-05', '고객 상담 채팅', 5, 5);

INSERT INTO tb_proposal (prop_no, created_at, updated_at, cont, end_date, name, note, pr_date, req_date, start_date, submit_date, lead_no)
VALUES
    (1, NOW(), NOW(), '제품 A 제안 내용', '2024-12-31', '제품 A 제안서', '제안서 작성 필요', '2024-07-01', '2024-06-25', '2024-06-01', '2024-06-30', 1),
    (2, NOW(), NOW(), '제품 B 제안 내용', '2024-11-30', '제품 B 제안서', '기술 지원 필요', '2024-08-01', '2024-07-20', '2024-07-01', '2024-07-31', 2),
    (3, NOW(), NOW(), '제품 C 제안 내용', '2024-10-31', '제품 C 제안서', '추가 설명 요청', '2024-09-01', '2024-08-25', '2024-08-01', '2024-08-31', 3),
    (4, NOW(), NOW(), '제품 D 제안 내용', '2024-09-30', '제품 D 제안서', '가격 협상 필요', '2024-10-01', '2024-09-20', '2024-09-01', '2024-09-30', 4),
    (5, NOW(), NOW(), '제품 E 제안 내용', '2024-08-31', '제품 E 제안서', '배송 관련 협의 필요', '2024-11-01', '2024-10-25', '2024-10-01', '2024-10-31', 5);


INSERT INTO tb_estimate (est_no, created_at, updated_at, est_date, name, note, prod_cnt, supply_price, surtax_yn, tax, tax_cls, total_price, prop_no)
VALUES
    (1, NOW(), NOW(), '2024-06-01', '견적서 A', '제품 A에 대한 견적', 10, 10000, 'Y', 1000, '10%', 11000, 1),
    (2, NOW(), NOW(), '2024-07-10', '견적서 B', '제품 B에 대한 견적', 5, 20000, 'N', 0, '0%', 20000, 2),
    (3, NOW(), NOW(), '2024-08-15', '견적서 C', '제품 C에 대한 견적', 8, 15000, 'Y', 1500, '10%', 16500, 3),
    (4, NOW(), NOW(), '2024-09-05', '견적서 D', '제품 D에 대한 견적', 12, 12000, 'N', 0, '0%', 12000, 4),
    (5, NOW(), NOW(), '2024-10-20', '견적서 E', '제품 E에 대한 견적', 6, 25000, 'Y', 2500, '10%', 27500, 5);

