# GitHub Actions 워크플로우

## 자동 빌드 및 릴리스

이 저장소는 GitHub Actions를 사용하여 이력서를 자동으로 빌드하고 릴리스합니다.

### 워크플로우 트리거

1. **main 브랜치 푸시**: 빌드만 실행, 릴리스 생성 안 함
2. **Pull Request**: 빌드 검증만 실행
3. **태그 푸시 (`v*`)**: 빌드 + 자동 릴리스 생성

### 릴리스 생성 방법

새 버전을 릴리스하려면 Git 태그를 생성하고 푸시하세요:

```bash
# 현재 변경사항 커밋
git add .
git commit -m "Update CV content"

# 태그 생성 (버전 번호 변경)
git tag v1.0.0

# 태그 푸시 (자동으로 릴리스 생성)
git push origin v1.0.0
```

또는 GitHub UI에서:
1. **Releases** 탭으로 이동
2. **Create a new release** 클릭
3. **Choose a tag** → 새 태그 생성 (예: v1.0.1)
4. **Publish release** 클릭

### 생성되는 파일

각 릴리스에는 다음 파일이 포함됩니다:
- `cv_en.pdf` - 영어 버전
- `cv_ko.pdf` - 한국어 버전

### Artifacts

모든 빌드(main 브랜치, PR, 태그)에서 생성된 PDF는 GitHub Actions의 Artifacts로 90일간 보관됩니다.

**Artifacts 다운로드 방법:**
1. **Actions** 탭으로 이동
2. 워크플로우 실행 클릭
3. **Artifacts** 섹션에서 `cv-pdfs` 다운로드

### 빌드 상태 확인

빌드가 실패한 경우:
1. **Actions** 탭에서 실패한 워크플로우 클릭
2. 로그를 확인하여 오류 파악
3. LaTeX 문법 오류나 누락된 패키지 확인

### 로컬 빌드

로컬에서 빌드를 테스트하려면:

```bash
make all
```

빌드된 PDF는 `build/` 디렉토리에 생성됩니다.
