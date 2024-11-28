# SQL의 개념

### SQL 기능

1. COLUMN을 구성하여 테이블 생성
2. 테이블 구조의 $\textsf{\color{magenta}{수정 및 삭제}}$
3. 테이블에 데이터를 조회, 추가, 수정, 삭제

### SQL의 정류

-  **데이터 정의어 (DLL)**

   -  DB의 구조를 정의하기 위한 언어
   -  테이블의 생성 및 삭제

-  **데이터 조작어 (DML)**

   -  DB에 저장된 데이터를 조작하기 위한 언어
   -  데이터를 검색, 추가, 수정, 삭제

<!-- |       유형        | 명령문               |
| :---------------: | :------------------- |
| DML (데이터 조작) | SELECT (데이터 검색) | -->

<table>
    <thead style="text-align: center">
        <tr>
            <th>유형</th>
            <th style="width:200px;">명령문</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan="4">
                DML (데이터 조작)
            </td>
            <td >
                SELECT(데이터 검색)
            </td>
        </tr>
        <tr>
            <td>
                INSERT(데이터 입력)
            </td>
        </tr>
        <tr>
            <td>
                UPDATE(데이터 수정)
            </td>
        </tr>
        <tr>
            <td>
                DELETE (데이터 삭제)
            </td>
        </tr>
        <tr>
            <td rowspan="3">
                DDL (테이블 객체 조작)
            </td>
            <td >
                CREATE (DB 생성)
            </td>
        </tr>
        <tr>
            <td>
                ALTER (DB 변경)
            </td>
        </tr>
        <tr>
            <td>
                DROP (DB 삭제)
            </td>
        </tr>
                <tr>
            <td rowspan="2">
                TCL (트랙잭션 처리)
            </td>
            <td >
                COMMIT (트랜잭션의 정상적인 종료처리)
            </td>
        </tr>
        <tr>
            <td>
                ROLLBACK(트랜잭션 취소)
            </td>
        </tr>
    </tbody>
</table>

<!-- <table>
  <tr>
    <th colspan="2">DML (데이터 조작)</th>
  </tr>
  <tr>
    <td>유형</td>
    <td>명령문</td>
  </tr>
  <tr>
    <td>SELECT</td>
    <td>데이터 검색</td>
  </tr>
</table> -->
