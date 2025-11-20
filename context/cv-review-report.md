# 이력서 검토 보고서

**검토 날짜**: 2025-11-21
**검토 대상**: Jiun Bae의 Curriculum Vitae (영문/한글 버전)

---

## 요약

전반적으로 이력서는 잘 구성되어 있으며 이중 언어(영어/한국어) 지원 시스템이 체계적으로 구현되어 있습니다. 하지만 몇 가지 중요한 수정이 필요한 부분과 개선 가능한 영역이 발견되었습니다.

---

## 🔴 심각한 문제 (즉시 수정 필요)

### 1. 날짜 오류 (awards.tex:8)
**위치**: `styles/sections/awards.tex` 8번째 줄
**문제**: ACM-ICPC 수상 날짜가 역순으로 표기됨
```latex
\entry{ACM-ICPC Asia Daejeon Regional Contest 16\textsuperscript{th} place}
\hfill 2016\fillyear{\textendash 2015}
```
**수정 필요**: `2016\fillyear{\textendash 2015}` → `2015\fillyear{\textendash 2016}` 또는 `2015`만 표기

**영향**: 이력서의 신뢰성에 직접적인 영향을 미치는 명백한 오류

---

### 2. LinkedIn 링크 매크로 구현 오류 (define.tex:15)
**위치**: `include/define.tex` 15번째 줄
**문제**: `linkedinLink` 매크로가 잘못 정의됨
```latex
\newcommand{\linkedinLink}[1]{\href{https://www.linkedin.com/in/#1/}{#1}}
```
하지만 실제 사용시 (`cv.tex:39`):
```latex
\linkedinLink{\linkedin}
```
여기서 `\linkedin`은 이미 전체 경로 "linkedin.com/in/jiunbae"를 포함하고 있음

**수정 방안**:
- 옵션 1: `\newcommand{\linkedin}{jiunbae}`로 변경
- 옵션 2: `\linkedinLink` 매크로를 `\websiteLink`처럼 수정

---

## 🟡 중요한 문제 (수정 권장)

### 3. 이력서 요약 문법 오류 (define.tex:18-20)
**위치**: `include/define.tex` 18-20번째 줄

**문제점**:
```
Machine Learning Research and Development Engineer. Built real‑time inference
features and research deep learning models, and delivered production‑quality
prototypes and internal frameworks. Strong at data pipelines, model training
and evaluation, and serving.
```

**구체적 문제**:
- "Built... and research" - 동사 시제 불일치 (Built vs research)
- "Strong at" → "Strong in" 또는 "Expertise in"이 더 적절
- 특수 하이픈 문자(‑) 사용 - 일반 하이픈(-)으로 통일 권장
- 문장이 너무 압축적

**제안 수정**:
```
Machine Learning Research and Development Engineer specializing in real-time
inference and deep learning model research. Experienced in delivering
production-quality prototypes and internal frameworks. Expertise in data
pipelines, model training, evaluation, and serving systems.
```

---

### 4. 한국어 번역 누락
**위치**: `include/define.tex` 18-20번째 줄

**문제**: Resume Description에 한국어 번역이 없음. 다른 모든 섹션은 `\ifen{...}\ifko{...}` 패턴을 사용하는데 이 부분만 영어로만 작성됨

**제안**: 한국어 버전 추가
```latex
\newcommand{\resumeDescription}{
    \ifen{Machine Learning Research and Development Engineer...}
    \ifko{머신러닝 연구 및 개발 엔지니어...}
}
```

---

### 5. Publications 섹션 이중언어 미지원
**위치**: `styles/sections/publications.tex`

**현재 상태**:
```latex
\nocite{*}
\renewcommand*{\bibfont}{\small}
\printbibliography[title=Publications]
```

**문제**: 제목이 영어로 고정되어 있어 한국어 버전에서도 "Publications"로 표시됨

**제안 수정**:
```latex
\nocite{*}
\renewcommand*{\bibfont}{\small}
\ifen{\printbibliography[title=Publications]}
\ifko{\printbibliography[title=논문]}
```

---

## 🟢 개선 제안

### 6. 일관성 문제

#### 6.1 날짜 형식 불일치
일부 날짜는 `{\textendash}`를 사용하고, 다른 곳은 `\textendash`만 사용합니다.
- **예시**: experience.tex에서는 `Jul. 2024 {\textendash} Present`
- **제안**: 모든 날짜 구분자를 동일한 형식으로 통일

#### 6.2 프로젝트 bullet 스타일 불일치
- projects.tex에서 `\entrymidlist[\textbullet]`와 `\entrymidlist`가 혼용됨
- **제안**: 일관된 스타일 사용

---

### 7. 내용 개선 제안

#### 7.1 Return Zero 경력 설명 (experience.tex:9-10)
**현재**:
```
Developed and improved an end-to-end speech recognition model, enhancing
the accuracy and efficiency of voice-based applications and optimizing
it for real-time inference and low-latency streaming.
```

**문제**: 문장이 너무 길고 "and"가 반복됨

**제안**:
```
Developed and improved an end-to-end speech recognition model for voice-based
applications. Optimized for real-time inference and low-latency streaming,
enhancing both accuracy and efficiency.
```

#### 7.2 과도한 형용사 사용
많은 설명에서 "advanced", "sophisticated", "innovative" 등의 과장된 형용사가 과도하게 사용됨

**예시** (projects.tex:33):
```
Developed an advanced annotation tool...
```

**제안**: 구체적인 기술이나 성과로 대체
```
Developed an annotation tool for 2D bounding boxes with live model inference...
```

---

### 8. Git 저장소 상태

**문제**: git status에 정리되지 않은 파일들이 있음

```
삭제된 파일: cv.bbl, cv.pdf, cv.synctex.gz, indent.log
추적되지 않는 파일: .gitignore, Makefile, cv_en.tex, cv_ko.tex
```

**제안**:
1. 삭제된 파일들을 git에서 제거: `git rm cv.bbl cv.pdf cv.synctex.gz indent.log`
2. 새 파일들을 추가: `git add .gitignore Makefile cv_en.tex cv_ko.tex`
3. .gitignore 파일에 빌드 산출물 패턴 추가 확인

---

### 9. 주석 처리된 섹션들

**위치**: `cv.tex:53-58`

```latex
% \pagebreak
% % Page Two
% \sidebyside
%     {\import{styles/sections/}{skills.tex}}
%     {\import{styles/sections/}{languages.tex}}
```

**확인 필요**:
- skills.tex와 languages.tex 파일이 존재하지만 사용되지 않음
- 의도적으로 제외한 것인지, 아니면 추가할 계획인지 확인 필요

---

## 📊 통계

- **총 경력 기간**: 5개 회사/조직 (2016-현재)
- **프로젝트**: 7개 주요 프로젝트
- **수상**: 3개 주요 수상
- **논문**: 3개 (+ 1개 주석 처리된 석사 논문)
- **학력**: 석사 (2019-2021), 학사 (2015-2019)

---

## 긍정적인 점

1. ✅ **체계적인 이중언어 지원**: 조건부 컴파일을 통한 영어/한국어 버전 관리가 우수함
2. ✅ **명확한 구조**: 섹션별로 파일이 잘 분리되어 유지보수가 용이함
3. ✅ **자동화된 빌드**: Makefile을 통한 빌드 프로세스 자동화
4. ✅ **풍부한 경험**: ML/DL 분야의 다양하고 실질적인 경험이 잘 정리됨
5. ✅ **구체적인 성과**: 대부분의 경력 사항이 구체적인 기술과 성과를 포함

---

## 우선순위별 조치 사항

### 즉시 수정 (P0)
1. [ ] awards.tex의 ACM-ICPC 날짜 수정 (2016-2015 → 2015)
2. [ ] define.tex의 LinkedIn 링크 매크로 수정

### 조속히 수정 (P1)
3. [ ] resumeDescription 문법 및 내용 개선
4. [ ] resumeDescription 한국어 번역 추가
5. [ ] publications.tex 이중언어 지원 추가

### 개선 권장 (P2)
6. [ ] 과도한 형용사 사용 줄이기
7. [ ] 날짜 형식 일관성 확보
8. [ ] 문장 구조 개선 (긴 문장 분리)
9. [ ] Git 저장소 정리

### 검토 필요 (P3)
10. [ ] skills.tex, languages.tex 섹션 추가 여부 결정
11. [ ] 석사 논문 bibliography 추가 여부 결정

---

## 결론

전반적으로 잘 작성된 이력서이지만, 몇 가지 명확한 오류와 개선 가능한 영역이 있습니다. 특히 날짜 오류와 링크 매크로 문제는 즉시 수정이 필요하며, 문법과 내용 개선을 통해 전문성을 더욱 높일 수 있습니다.

**검토자 메모**: 이 보고서는 기술적 정확성과 내용의 질에 중점을 두었으며, 디자인이나 레이아웃 측면은 다루지 않았습니다.
