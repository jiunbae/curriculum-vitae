# Experience 섹션 수정 가이드

빌드 에러 문제로 인해 Experience 섹션은 수동으로 수정이 필요합니다.
아래 가이드를 따라 `styles/sections/experience.tex` 파일을 수정해주세요.

## 수정 위치: styles/sections/experience.tex

### 1. Return Zero 섹션 (9-11줄)

**현재:**
```latex
\entry{\ifen{Developed and improved an end-to-end speech recognition model, enhancing the accuracy and efficiency of voice-based applications and optimizing it for real-time inference and low-latency streaming.}\ifko{음성 기반 애플리케이션의 정확도와 효율성을 향상시키는 end-to-end 음성 인식 모델을 개발 및 개선하고, 실시간 추론 및 저지연 스트리밍을 위해 최적화했습니다.}}
\entry{\ifen{Taking full ownership of developing and proactively testing new features for the application using sLLM.}\ifko{sLLM을 활용한 애플리케이션의 새로운 기능 개발과 적극적인 테스트를 전적으로 담당했습니다.}}
```

**수정 후:**
```latex
\entry{\ifen{Improved end-to-end speech recognition model accuracy by 5+ percentage points in WER and CER metrics while reducing inference latency through model optimization and serving engine improvements.}\ifko{모델 최적화 및 서빙 엔진 개선을 통해 end-to-end 음성 인식 모델의 정확도를 WER 및 CER 지표에서 5%p 이상 향상시키고 추론 지연을 감소시켰습니다.}}
\entry{\ifen{Designed and validated an LLM-based evaluation framework for transcription quality, enabling assessment of readability and semantic coherence. Demonstrated that models preferred by human evaluators could be identified even when traditional WER/CER metrics suggested otherwise.}\ifko{전사 품질 평가를 위한 LLM 기반 평가 프레임워크를 설계하고 검증하여 가독성과 의미적 일관성을 평가할 수 있게 했습니다. 기존 WER/CER 지표와 반대 결과를 보여도 사람이 선호하는 모델을 식별할 수 있음을 입증했습니다.}}
\entry{\ifen{Owned the complete research-to-production pipeline including model fine-tuning, domain research, service integration, prompt engineering, and inference optimization for speech processing and conversational AI features.}\ifko{음성 처리 및 대화형 AI 기능을 위한 모델 파인튜닝, 도메인 리서치, 서비스 통합, 프롬프트 엔지니어링, 추론 최적화를 포함한 전체 연구-프로덕션 파이프라인을 담당했습니다.}}
```

**변경 내용:**
- ✅ WER/CER 5%p 개선 명시
- ✅ LLM 기반 평가 프레임워크 추가
- ✅ 전체 파이프라인 소유권 명확화

---

### 2. NCSOFT 섹션 (17-19줄) - 프로젝트 중심으로 재구성

**현재:**
```latex
\entry{\ifen{Spearheaded the implementation of preprocessing and alignment pipelines for high-fidelity motion and facial capture data, significantly enhancing data quality.}\ifko{고품질 모션 및 얼굴 캡처 데이터를 위한 전처리 및 정렬 파이프라인 구현을 주도하여 데이터 품질을 크게 향상시켰습니다.}}
\entry{\ifen{Pioneered the development of a PyTorch-based framework for deep learning model training and experiment tracking/management, substantially boosting team productivity and streamlining research processes.}\ifko{딥러닝 모델 학습과 실험 추적/관리를 위한 PyTorch 기반 프레임워크 개발을 선도하여 팀 생산성을 크게 향상시키고 연구 프로세스를 간소화했습니다.}}
\entry{\ifen{Led the research on a deep learning model for generating speech-based 3D facial animation, contributing to advancements in digital human technology.}\ifko{음성 기반 3D 얼굴 애니메이션 생성을 위한 딥러닝 모델 연구를 주도하여 디지털 휴먼 기술 발전에 기여했습니다.}}
```

**수정 후:**
```latex
\entry{\ifen{Text-to-Texture Generation System (Dec 2023 - Jun 2024): Developed scalable model serving infrastructure and PoC web application using React.js, three.js, and FastAPI for 3D texture visualization and generation.}\ifko{Text-to-Texture 생성 시스템 (2023년 12월 - 2024년 6월): React.js, three.js, FastAPI를 사용하여 3D 텍스처 시각화 및 생성을 위한 확장 가능한 모델 서빙 인프라와 PoC 웹 애플리케이션을 개발했습니다.}}
\entry{\ifen{Real-time Digital Human Facial Animation (Feb 2022 - Nov 2023): Built production API server generating persona-aware facial expressions for conversational scenarios, enabling real-time responsive digital human interactions.}\ifko{실시간 디지털 휴먼 얼굴 애니메이션 (2022년 2월 - 2023년 11월): 대화 시나리오를 위한 페르소나 인식 얼굴 표정을 생성하는 프로덕션 API 서버를 구축하여 실시간 반응형 디지털 휴먼 상호작용을 가능하게 했습니다.}}
\entry{\ifen{Speech-driven 3D Facial Animation Research (Feb 2021 - Jan 2022): Developed PyTorch-based training framework and preprocessing pipelines for motion capture data, improving team productivity and research workflow.}\ifko{음성 기반 3D 얼굴 애니메이션 연구 (2021년 2월 - 2022년 1월): 모션 캡처 데이터를 위한 PyTorch 기반 학습 프레임워크와 전처리 파이프라인을 개발하여 팀 생산성과 연구 워크플로를 개선했습니다.}}
```

**변경 내용:**
- ✅ 3개의 프로젝트로 명확히 분리
- ✅ 각 프로젝트에 기간 명시
- ✅ Projects 섹션에서 삭제된 내용 복원
- ✅ 과도한 형용사 제거 (Spearheaded, Pioneered, significantly, substantially → Developed, Built)
- ✅ 기술 스택 명시 (React.js, three.js, FastAPI)

---

### 3. Naver Clova 섹션 (26줄) - 형용사 제거

**현재:**
```latex
\entry{\ifen{Contributed to the development of a sophisticated depth estimation network for 3D map reconstruction.}\ifko{3D 지도 재구성을 위한 정교한 깊이 추정 네트워크 개발에 기여했습니다.}}
```

**수정 후:**
```latex
\entry{\ifen{Contributed to the development of a multi-scale depth estimation network for 3D map reconstruction.}\ifko{3D 지도 재구성을 위한 멀티스케일 깊이 추정 네트워크 개발에 기여했습니다.}}
```

**변경 내용:**
- ✅ sophisticated → multi-scale (구체적인 기술 용어로 교체)

---

### 4. Naver Webtoon 섹션 (33-34줄) - 형용사 제거 및 간결화

**현재:**
```latex
\entry{\ifen{Developed an advanced annotation tool for 2D bounding box support, integrating features such as live data model inference, dataset management with custom query types, and various tagging options.}\ifko{2D 바운딩 박스 지원을 위한 고급 어노테이션 도구를 개발하고, 실시간 데이터 모델 추론, 커스텀 쿼리 타입을 이용한 데이터셋 관리, 다양한 태깅 옵션과 같은 기능을 통합했습니다.}}
\entry{\ifen{Designed a Visual QA task for an internal workshop, developing a multi-modal network and dataset for its validation.}\ifko{내부 워크숍을 위한 Visual QA 작업을 설계하고, 검증을 위한 멀티모달 네트워크와 데이터셋을 개발했습니다.}}
```

**수정 후:**
```latex
\entry{\ifen{Built an annotation tool for 2D bounding boxes with real-time model inference, query-based dataset management, and flexible tagging capabilities.}\ifko{2D 바운딩 박스를 위한 어노테이션 도구를 구축하고, 실시간 모델 추론, 쿼리 기반 데이터셋 관리, 유연한 태깅 기능을 구현했습니다.}}
\entry{\ifen{Designed a Visual QA task for an internal workshop, including a multi-modal network and validation dataset.}\ifko{내부 워크숍을 위한 Visual QA 작업을 설계하고, 멀티모달 네트워크와 검증 데이터셋을 개발했습니다.}}
```

**변경 내용:**
- ✅ advanced → 제거
- ✅ Developed → Built
- ✅ 문장 간결화

---

### 5. SW Maestro 섹션 (41줄) - 과도한 수식어 제거

**현재:**
```latex
\entry{\ifen{Garnered acclaim as a top team, showcased at the "100+ Conference" by the Ministry of Science and ICT, highlighting exceptional project development and execution.}\ifko{최우수팀으로 선정되어 과학기술정보통신부 주최 "100+ 컨퍼런스"에 전시되었으며, 뛰어난 프로젝트 개발 및 실행 능력을 인정받았습니다.}}
```

**수정 후:**
```latex
\entry{\ifen{Selected as a top team and showcased at the "100+ Conference" by the Ministry of Science and ICT.}\ifko{최우수팀으로 선정되어 과학기술정보통신부 주최 "100+ 컨퍼런스"에 전시되었습니다.}}
```

**변경 내용:**
- ✅ Garnered acclaim → Selected
- ✅ highlighting exceptional... 부분 제거 (불필요한 자화자찬)

---

## 수정 완료 후 확인 사항

1. **빌드 테스트:**
   ```bash
   make clean && make
   ```

2. **PDF 확인:**
   ```bash
   open build/cv_en.pdf
   ```

3. **변경 사항 확인:**
   - Return Zero: 3개 bullet points with specific metrics
   - NCSOFT: 3개 프로젝트 (기간 명시, 기술 스택 포함)
   - 전체: 과도한 형용사 제거

## 왜 이렇게 수정하나요?

### Before (문제점)
- ❌ 측정 가능한 성과 없음
- ❌ NCSOFT 프로젝트 세부사항 누락 (Projects에서 삭제됨)
- ❌ 과도한 형용사 (Spearheaded, Pioneered, sophisticated, advanced, exceptional)
- ❌ 모호한 표현 (enhancing, boosting, contributing)

### After (개선)
- ✅ 구체적인 성과 지표 (WER/CER 5%p)
- ✅ 프로젝트 세부사항 복원 및 기간 명시
- ✅ 간결하고 구체적인 동사 (Improved, Developed, Built)
- ✅ 기술 스택 명시 (React.js, PyTorch, FastAPI)

---

## 참고: Projects 섹션에서 복원된 내용

다음 내용이 Projects에서 삭제되었고, NCSOFT Experience에 통합되어야 합니다:

1. **Text-to-Texture (Dec 2023 - Jun 2024)**
   - Scalable infrastructure, model serving
   - PoC web app (React.js, three.js, FastAPI)
   - 3D texture generation research

2. **Digital Human (Feb 2022 - Nov 2023)**
   - Real-time facial expression generation
   - Persona-aware expressions
   - Production API server

3. **3D Facial Animation (Feb 2021 - Jan 2022)**
   - Preprocessing pipelines
   - PyTorch training framework
   - Team productivity improvements

이 내용들이 Experience 섹션에 통합되어 중복이 제거되고 프로젝트 단위로 명확히 정리되었습니다.
