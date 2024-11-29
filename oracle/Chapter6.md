# Chapter 6

## 목차

### [1. 권한 (DLC)](#1-권한-dlc-목차)

1. CREATE USER ~ IDENTIFIED BY ~
2. ALTER USER ~ IDENTIFIED BY ~
3. DROP USER ~
4. GRANT CONNECT, ~ TO ~

### [2. 트랜잭션 (TCL)](#2-트랜잭션-tcl---transction-control-language-목차)

1. COMMIT
2. ROLLBACK

### [3. 제약조건 (Constraint)](#3-제약조건-constraint-목차)

1. NOT NULL
2. UNIQUE
3. PRIMARY KEY
4. FOREIGN KEY
5. CHECH
6. DEFAULT

### [5. 인덱스](#5-인덱스-목차)

##

## 1. 권한 (DLC) [(목차)](#목차)

##

## 2. 트랜잭션 (TCL - Transction Control Language) [(목차)](#목차)

나눌 수 없는 업무처리의 단위 (여러 액션을 하나로 묶음)

-  COMMIT : 트랜잭션 반영 명령어
-  ROLLBACK : 트랜잭션 취소 명령어

##

## 3. 제약조건 (Constraint) [(목차)](#목차)
선언은 create테이블의 행에 바로 뒤에 붙이거나

**constraint** (작명) **설정 제약조건** (지정할 컬럼명)

1. NOT NULL
2. UNIQUE
3. PRIMARY KEY
4. FOREIGN KEY
5. CHECH
6. DEFAULT


##

## 5. 인덱스 [(목차)](#목차)

oracle은 테이블 생성시 **[primary key, unique 제약조건]**에 한해 자동으로 index를 생성 (SYS_C0001234, SYS_C0001235 ...)

이 두가지 인덱스는 DROP INDEX로 삭제할 수 없음

초기 생성시 인덱스명을 지정하면 다른 인덱스명으로 사용가능

```
CREATE TABLE employees (
    employee_id INT,
    email VARCHAR(100),
    CONSTRAINT pk_employee PRIMARY KEY (employee_id) USING INDEX (CREATE INDEX idx_employee_id ON employees(employee_id))
);
```

-  목적
   -  빠른 검색

<details>
<summary>
인덱스를 코드와 비교하자면?
<p>< 접기 / 펼치기 ></p></summary>

```
const table = [
  { id: 1, name: "Alice", age: 25 },
  { id: 2, name: "Bob", age: 30 },
  { id: 3, name: "Charlie", age: 22 },
];

// 인덱스: 특정 컬럼(id)을 기준으로 정렬된 구조
const indexById = table
  .map(row => ({ id: row.id, position: table.indexOf(row) })) // id와 위치 정보만 추출
  .sort((a, b) => a.id - b.id); // id를 기준으로 정렬
```

#### 결과

```
[
  { id: 1, position: 0 },
  { id: 2, position: 1 },
  { id: 3, position: 2 }
]
```

</details>
