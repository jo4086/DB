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

### [3. 제약조건](#3-제약조건-목차)

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


- COMMIT : 트랜잭션 반영 명령어
- ROLLBACK : 트랜잭션 취소 명령어



##

## 3. 제약조건 [(목차)](#목차)

##

## 5. 인덱스 [(목차)](#목차)


<!-- #### 인덱스를 코드와 비교하자면? -->

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
````
</details>
