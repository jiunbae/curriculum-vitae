# CV(en) 개선 제안

## 우선순위 개선 포인트
- 경험/프로젝트 bullet에 결과 수치 명시(WER/latency, 데이터 처리량, 프레임워크 도입률 등)로 임팩트 구체화.
- 각 bullet 끝에 사용 기술 스택(PyTorch, CUDA/TensorRT, FastAPI/gRPC, experiment tracking 등) 표기해 ATS 대응.
- Projects와 Experience의 중복 내용을 합치고, 최근 3~4개 핵심 사례만 남겨 “소유권-행동-결과” 구조로 압축.
- `include/define.tex` 요약을 타겟 포지션(실시간 음성/멀티모달 R&D) 중심으로 리포지셔닝하고 키워드 강화.
- Publications는 실제 학회/워크숍 명과 역할(1st author)을 명확히 표기하고, 관련성 높은 2~3편만 “Selected”로 노출.
- Skills/Languages 섹션을 재활성화해 모델 서빙·ML 인프라·분산학습 역량을 한눈에 보이도록 구성.

## 섹션별 메모
- `styles/sections/experience.tex`: Return Zero 2번째 bullet을 “Owned/Delivered/Validated” 식으로 재작성하고, 첫 bullet에 실측 성능(예: streaming latency, WER 개선율) 추가. NCSOFT 항목도 데이터 파이프라인 처리량, 연구 프레임워크 adoption, 실시간 표정 모델 응답속도 등 수치/지표 반영.
- `styles/sections/projects.tex`: 텍스처·디지털 휴먼 항목에서 인프라 구성요소(서빙 스택, 배포 방식, 모니터링)와 사용자/아트팀 피드백 반영 결과를 적고, Experience와 중복되는 설명은 통합. 과장 형용사는 기술/성과로 치환.
- `styles/sections/awards.tex`: 수상 연도/순위 정확도 재확인 후 최근·관련성 높은 것만 유지, 나머지는 Other 섹션이나 포트폴리오 링크로 이전 검토.
- `styles/sections/activities.tex`: TA bullet을 1~2개로 압축하고, 수강생 수·만족도·강의 범위 등 결과/범위를 명시.
- `include/define.tex`: summary에 핵심 역량(실시간 음성 인퍼런스, 얼굴 애니메이션, 모델 서빙/프레임워크 구축)을 짧게 나열하고, 위치/근무 가능 시간대·포트폴리오 데모 링크 추가 고려.
- `styles/sections/publications.tex` + `include/cv.bib`: IPIU 등 정식 표기 사용, first author 강조, arXiv/DOI 링크 형식 통일. 덜 관련된 워크숍 논문은 “Selected Publications” 뒤로 이동하거나 축약.

## 형식 및 가독성
- bullet 길이를 1~2줄로 제한하고 시제는 과거형으로 통일, 불필요한 관형사(advanced, robust 등) 제거.
- 최신순 정렬 유지 여부 점검 후 1페이지 내 압축, 추가 사례는 블로그/깃허브 링크로 연결.
- ATS 키워드로 streaming ASR, RNN-T/Conformer, CUDA/TensorRT, FastAPI/gRPC, PyTorch Lightning, experiment tracking, monitoring/observability 등을 실제 사용 경험에 맞게 삽입.
