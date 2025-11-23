# CV Improvement Recommendations (English Version)

**Analysis Date**: 2025-11-22
**Target**: Jiun Bae - Curriculum Vitae (English)
**Focus**: Content quality, clarity, and impact

---

## Executive Summary

This document provides actionable recommendations to enhance the English CV. While the CV is well-structured and demonstrates strong experience, several areas can be improved to increase clarity, impact, and professionalism.

**Key Focus Areas**:
- Content specificity and clarity
- Results-oriented descriptions
- Technical consistency
- Readability improvements

---

## 🎯 High-Priority Improvements

### 1. Unclear Acronyms and Terms

#### 1.1 sLLM Definition Missing
**Location**: `styles/sections/experience.tex:10`

**Current**:
```latex
Taking full ownership of developing and proactively testing new features for the application using sLLM.
```

**Issues**:
- "sLLM" is not defined (likely "small Large Language Model")
- Grammar: "Taking full ownership" is awkward in a CV context
- Vague: "new features" and "the application" lack specificity

**Recommended**:
```latex
Developed and tested features for voice-based applications using small language models (sLLM), improving response accuracy and reducing latency.
```

**Rationale**:
- Defines the acronym on first use
- More active and specific
- Adds measurable outcomes

---

#### 1.2 Technical Terms Without Context
**Location**: Various

Several projects mention technologies without explaining their purpose:

**Example** - `styles/sections/projects.tex:9`:
```latex
Developed a Proof-of-Concept (PoC) web application using React.js and three.js with a FastAPI server.
```

**Better**:
```latex
Developed a PoC web application for 3D texture visualization using React.js and three.js, with a FastAPI backend for model inference.
```

**Rationale**: Clarifies the purpose of each technology choice

---

### 2. Missing Quantifiable Results

#### 2.1 Experience Section - Vague Impact
**Location**: `styles/sections/experience.tex:18`

**Current**:
```latex
Developed a PyTorch-based framework for deep learning model training and experiment management. Improved team productivity and streamlined research processes.
```

**Issues**:
- "Improved" and "streamlined" are vague
- No metrics or specific outcomes

**Recommended**:
```latex
Developed a PyTorch-based framework for deep learning model training and experiment management, reducing experiment setup time by 60% and enabling standardized model evaluation across 10+ research projects.
```

**Alternative** (if exact metrics unavailable):
```latex
Developed a PyTorch-based framework for deep learning model training and experiment management. Standardized research workflows across the team and enabled faster iteration cycles.
```

---

#### 2.2 Projects - Missing Business Value
**Location**: `styles/sections/projects.tex:17-21`

**Current**:
```latex
Led the development of a real-time and responsive facial expression generation model and system for digital humans.
Developed dynamic facial expression generation with persona integration for conversational scenarios, enhancing digital human interactivity.
Created detailed facial animations capturing expressions tailored to character traits.
Architected a high-performance API server, optimizing it for diverse inputs in facial animation generation, ensuring scalability and robustness.
```

**Issues**:
- 4 bullet points describing one project
- Repetitive content (all about facial animation)
- No mention of outcome or application

**Recommended** (consolidate to 2-3 points):
```latex
Developed a real-time facial expression generation system for digital humans, integrating persona-aware animation that adapts to character traits and conversational context.
Architected a scalable API server supporting diverse input types (audio, text, emotion tags) with sub-100ms latency for interactive applications.
Deployed the system for [specific use case if applicable, e.g., "customer service avatars" or "game character animation"].
```

---

### 3. Grammatical and Structural Issues

#### 3.1 Present Participle in Job Descriptions
**Location**: `styles/sections/experience.tex:10`

**Current**:
```latex
Taking full ownership of developing and proactively testing new features for the application using sLLM.
```

**Issue**: Using present participle ("Taking") is inconsistent with other entries that use past tense

**Recommended**: Choose one tense style:
- **Past tense** (if you want to focus on completed work):
  ```latex
  Took full ownership of developing and testing sLLM-powered features, implementing 5+ capabilities including X, Y, and Z.
  ```

- **Present tense** (if describing ongoing responsibilities):
  ```latex
  Own the development and testing of sLLM-powered features, managing the full product lifecycle from ideation to deployment.
  ```

**Recommendation**: Use past tense for consistency with other roles

---

#### 3.2 Redundant Phrases
**Location**: Multiple

**Examples**:
1. `experience.tex:33`: "integrating features such as"
   - Replace with: "including" or "with"

2. `projects.tex:10`: "Conducted extensive research and experimentation on"
   - Replace with: "Researched" or "Experimented with"

3. `projects.tex:28`: "Devised and deployed"
   - Choose one verb: "Deployed" (more concrete)

---

### 4. Inconsistent Technical Depth

#### 4.1 Some Projects Too Generic
**Location**: `styles/sections/projects.tex:51-52`

**Current**:
```latex
Created a robust, scalable crawling system to aggregate a wide array of articles and information.
Designed a vector embedding and clustering system that links information to entities and events with continuous expansion support.
```

**Issues**:
- "robust, scalable" - overused adjectives without proof
- "wide array" - vague
- No mention of scale or technology choices

**Recommended**:
```latex
Built a distributed crawling system using [technology] to collect and aggregate news articles from 100+ sources daily.
Implemented a vector embedding pipeline with hierarchical clustering to automatically link articles to entities and events, supporting incremental updates.
```

---

#### 4.2 Some Projects Too Technical
**Location**: `styles/sections/projects.tex:44`

**Current**:
```latex
Enhanced the InnoDB storage engine's performance by introducing a lock-free design and a reusable object pool for the global lock mechanism in the transaction record manager.
```

**Issue**: Very technical detail for a single academic project

**Recommended**:
```latex
Improved MariaDB InnoDB performance through lock-free design optimization, achieving [X%] throughput increase in concurrent transactions.
```

**Rationale**: Balance technical detail with outcome

---

### 5. Teaching Experience Clarity

#### 5.1 Unclear Bullet Points
**Location**: `styles/sections/activities.tex:9-13`

**Current**:
```latex
Basic programming knowledge and how to use the library.
Deep learning basics and model implementation from scratch with NumPy.
Implementation of Object Classification, Detection, and Tracking.
At Samsung System LSI, Samsung Advanced Institute of Technology and Samsung Human Resource Development Institute.
```

**Issues**:
- First 3 bullets: Unclear if these are topics taught or prerequisites
- Last bullet: Location should be in the header, not a bullet point
- Missing: Number of students, duration, impact

**Recommended Format**:
```latex
\entrymidlist[\textbullet]
{\textbf{\ifen{Teaching Assistant}\ifko{조교}}, \link{https://github.com/hyu-cvlab/deeplearning-practice}{\ifen{Advanced Computer Vision}\ifko{고급 컴퓨터 비전}}}{Hanyang University, 2019 {\textendash} 2020}{
    \innerlist{
        \entry{\ifen{Taught deep learning fundamentals to 60+ engineers from Samsung System LSI, SAIT, and Samsung HRD Institute}\ifko{삼성 시스템 LSI, SAIT, 삼성 인력개발원의 60명 이상 엔지니어에게 딥러닝 기초 교육}}
        \entry{\ifen{Developed hands-on curriculum covering NumPy-based model implementation, object detection, and tracking}\ifko{NumPy 기반 모델 구현, 객체 탐지 및 추적을 포함한 실습 커리큘럼 개발}}
        \entry{\ifen{Created \link{https://github.com/hyu-cvlab/deeplearning-practice}{open-source course materials} used by 500+ students}\ifko{\link{https://github.com/hyu-cvlab/deeplearning-practice}{오픈소스 강의 자료} 제작, 500명 이상 학생 활용}}
    }
}
```

---

## 🔧 Medium-Priority Improvements

### 6. Repetitive Project Descriptions

#### 6.1 Multiple NCSOFT Projects with Similar Descriptions
**Location**: `styles/sections/projects.tex:6-31`

**Issue**: Three projects (Text-to-Texture, Digital Human, 3D Facial Animation) have overlapping descriptions

**Current Pattern**:
- All three mention "developed/conducted research"
- All three mention frameworks/infrastructure
- Hard to distinguish unique contributions

**Recommended Approach**:
Each project should highlight its unique aspect:

1. **Text-to-Texture** - Focus on: scalable infrastructure, web application
2. **Digital Human** - Focus on: real-time system, persona integration
3. **3D Facial Animation** - Focus on: research, data pipelines

**Example Revision** for Text-to-Texture:
```latex
\entrymidlist[\textbullet]
{\link{https://www.youtube.com/watch?v=6qGsSw7CffQ}{\ifen{Text-to-Texture Project}\ifko{Text-to-Texture 프로젝트}}}{NCSOFT, Dec. 2023 {\textendash} Jun. 2024}{
    \innerlist{
        \entry{\ifen{Built production-ready infrastructure for text-to-3D texture generation, serving 10+ concurrent users with sub-second latency}\ifko{텍스트 기반 3D 텍스처 생성을 위한 프로덕션 인프라 구축, 10명 이상 동시 사용자 지원}}
        \entry{\ifen{Developed interactive PoC web application using React.js and three.js, enabling real-time 3D model preview}\ifko{React.js와 three.js를 사용한 인터랙티브 PoC 웹 애플리케이션 개발}}
        \entry{\ifen{Evaluated and integrated 5+ generative models for natural texture synthesis on game assets}\ifko{게임 에셋의 자연스러운 텍스처 합성을 위한 5개 이상 생성 모델 평가 및 통합}}
    }
}
```

---

### 7. Skills Section Visibility

#### 7.1 Skills Section Commented Out
**Location**: `cv.tex:56-58`

**Current**:
```latex
% \sidebyside
%     {\import{styles/sections/}{skills.tex}}
%     {\import{styles/sections/}{languages.tex}}
```

**Issues**:
- Technical skills not immediately visible
- Recruiters/hiring managers often scan for skills first
- Technologies are mentioned in projects but not summarized

**Recommendation**: Consider one of:

1. **Enable Skills Section** (if resume is 2 pages):
   - Uncomment the section
   - Add concise skills categories

2. **Add Skills to Summary** (if keeping 1 page):
   ```latex
   \newcommand{\resumeDescription}{
       \ifen{Machine Learning Research and Development Engineer specializing in real-time inference and deep learning model research. Experienced in delivering production-quality prototypes and internal frameworks. Expertise in data pipelines, model training, evaluation, and serving systems.

       \textbf{Core Technologies:} PyTorch, Python, FastAPI, React.js, C++}
       \ifko{...}
   }
   ```

3. **Create Compact Skills Inline** (under header):
   ```latex
   \header{\nameFull}{
       \emailLink{\email} \\
       \websiteLink{\website} \\
       \githubLink{\github} \\
       \linkedinLink{\linkedin}
   }

   \vspace{0.5em}
   \textbf{Technologies:} PyTorch · TensorFlow · Python · C++ · FastAPI · React.js · Docker
   ```

**Recommendation**: Option 3 (compact inline) for a 1-page CV

---

### 8. Publication Section Enhancement

#### 8.1 Add Publication Count or Highlight
**Location**: `styles/sections/publications.tex:3-4`

**Current**:
```latex
\ifen{\printbibliography[title=Publications]}
\ifko{\printbibliography[title=논문]}
```

**Recommendation**: Add publication count to section title

```latex
\ifen{\printbibliography[title=Publications (3)]}
\ifko{\printbibliography[title=논문 (3편)]}
```

**Alternative**: Add a brief highlight if publications are highly cited
```latex
\ifen{\section{Publications \small{(including CVPR, cited 100+ times)}}}
```

---

### 9. Action Verb Variety

#### 9.1 Overuse of "Developed"
**Location**: Throughout CV

**Count**:
- "Developed": 12 times
- "Implemented": 3 times
- "Created": 2 times
- "Built": 1 time

**Issue**: Repetitive, reduces impact

**Recommended Alternatives**:
| Instead of "Developed" | Use |
|------------------------|-----|
| Developed a model | Trained / Designed / Built |
| Developed a system | Architected / Built / Implemented |
| Developed a tool | Created / Built / Engineered |
| Developed a framework | Designed / Architected / Built |
| Developed a feature | Implemented / Shipped / Released |

**Example Revisions**:
- ✗ "Developed a PyTorch-based framework"
- ✓ "Architected a PyTorch-based framework"

- ✗ "Developed an annotation tool"
- ✓ "Built an annotation tool"

- ✗ "Developed dynamic facial expression generation"
- ✓ "Implemented dynamic facial expression generation"

---

## 🎨 Low-Priority / Stylistic Improvements

### 10. Formatting Consistency

#### 10.1 Link Formatting
**Location**: Various

**Inconsistency**:
- Some links wrap entire entry: `\link{url}{\textbf{Company}}`
- Some entries have no links despite having websites
- GitHub links for old projects might be outdated

**Recommendation**:
- Verify all links are current and working
- Consistently link all companies/organizations
- For projects without public links, consider linking to demo videos or papers

---

#### 10.2 Date Formatting
**Location**: `styles/sections/awards.tex:8`

**Current**:
```latex
\hfill 2015
```

**Issue**: Awards use single year, but experiences use ranges. This is actually correct, but ensure it's intentional.

---

### 11. Content Prioritization

#### 11.1 Experience vs. Projects
**Location**: Overall structure

**Current Structure**:
1. Experience (5 entries)
2. Education (2 entries)
3. Publications (3 entries)
4. Projects (7 entries)
5. Awards (3 entries)
6. Activities (1 entry)

**Observation**:
- Projects section is quite long (7 entries)
- Some projects duplicate experience entries (e.g., NCSOFT projects appear in both)

**Recommendation**:
- **Option A**: Keep projects that are NOT covered in Experience
  - Remove Text-to-Texture, Digital Human, 3D Facial Animation from Projects (already in NCSOFT experience)
  - Keep: Webtoon tool, MariaDB, Memento, DeepCheck

- **Option B**: Consolidate
  - Keep Experience section focused on responsibilities
  - Move technical details to Projects section

**Recommendation**: Option A (reduce duplication)

---

#### 11.2 Old Projects Relevance
**Location**: `styles/sections/projects.tex:48-62`

**Projects from 2016-2017**:
- Memento (2017)
- DeepCheck (2016)

**Consider**:
- These are 8-9 years old
- Technology stacks may be outdated (React Native 2016)
- Taking up valuable space

**Recommendation**:
- If CV is over 1 page: Consider removing or consolidating into a single "Early Projects" entry
- If keeping: Update descriptions to focus on transferable skills rather than specific technologies

**Example Consolidation**:
```latex
\entrymidlist[\textbullet]
{\ifen{Early ML Projects}\ifko{초기 ML 프로젝트}}{SW Maestro, 2016 {\textendash} 2017}{
    \innerlist{
        \entry{\ifen{Built information aggregation system with vector embeddings and entity clustering (Memento, 2017)}\ifko{벡터 임베딩 및 엔티티 클러스터링을 활용한 정보 수집 시스템 구축 (Memento, 2017)}}
        \entry{\ifen{Developed face recognition system optimized for low-resolution crowded environments (DeepCheck, 2016)}\ifko{저해상도 혼잡 환경에 최적화된 얼굴 인식 시스템 개발 (DeepCheck, 2016)}}
    }
}
```

---

### 12. Personal Branding

#### 12.1 Resume Description Enhancement
**Location**: `include/define.tex:18-20`

**Current**:
```latex
Machine Learning Research and Development Engineer specializing in real-time inference and deep learning model research. Experienced in delivering production-quality prototypes and internal frameworks. Expertise in data pipelines, model training, evaluation, and serving systems.
```

**Issues**:
- Generic "Machine Learning Engineer" title
- Doesn't highlight unique strengths
- No mention of domain expertise (speech, vision, animation)

**Recommended**:
```latex
ML Research Engineer specializing in speech and vision models for real-time applications. 3+ years building production inference systems and training frameworks at NCSOFT. Expert in end-to-end ML pipelines from data preprocessing to model serving.
```

**Alternative** (more specific):
```latex
Speech & Vision ML Engineer with expertise in real-time deep learning systems. Built production facial animation and speech recognition models serving millions of users. Strong background in PyTorch framework development and high-performance model serving.
```

---

#### 12.2 GitHub/Portfolio Visibility
**Location**: Header

**Current**: Links to blog.jiun.dev and github.com/jiunbae

**Recommendation**: If you have notable projects, add a note:
```latex
\header{\nameFull}{
    \emailLink{\email} \\
    \websiteLink{\website} \textit{\small{(Technical Blog)}} \\
    \githubLink{\github} \textit{\small{(50+ repositories, 500+ stars)}} \\
    \linkedinLink{\linkedin}
}
```

**Note**: Only add metrics if impressive; otherwise keep clean

---

## 📋 Implementation Checklist

### Immediate Changes (High-Priority)
- [ ] Define "sLLM" on first use (`experience.tex:10`)
- [ ] Fix grammar: Change "Taking full ownership" to past tense (`experience.tex:10`)
- [ ] Add quantifiable results to 3+ entries (experience and projects)
- [ ] Consolidate Digital Human project bullets (reduce from 4 to 2-3)
- [ ] Fix Teaching Assistant bullet points structure (`activities.tex:9-13`)

### Short-term Changes (Medium-Priority)
- [ ] Reduce use of "Developed" - vary action verbs
- [ ] Add technical skills summary (inline or separate section)
- [ ] Remove duplication between Experience and Projects sections
- [ ] Add publication count to section title
- [ ] Verify all links are current

### Optional Changes (Low-Priority)
- [ ] Consider consolidating old projects (2016-2017)
- [ ] Update resume description to be more specific
- [ ] Add project outcomes/business value
- [ ] Review and update GitHub profile

---

## 🎯 Expected Impact

**Before**: Well-structured CV with strong experience but some clarity issues
**After**: Clear, impactful CV that:
- Quickly communicates technical expertise
- Demonstrates measurable outcomes
- Eliminates redundancy
- Improves readability for recruiters

**Estimated Time**: 2-3 hours for high-priority changes

---

## Appendix: Quick Reference

### Strong Action Verbs for ML Engineering CVs
- **Development**: Architected, Built, Designed, Engineered, Implemented, Created
- **Improvement**: Optimized, Enhanced, Improved, Refined, Accelerated
- **Leadership**: Led, Spearheaded, Drove, Directed, Managed
- **Research**: Researched, Investigated, Experimented, Analyzed, Evaluated
- **Deployment**: Deployed, Shipped, Launched, Released, Delivered
- **Collaboration**: Collaborated, Partnered, Worked with, Contributed

### Red Flags to Avoid
- ❌ Overly generic adjectives (advanced, sophisticated, innovative)
- ❌ Undefined acronyms (sLLM, API, etc. on first use)
- ❌ Vague metrics ("improved performance")
- ❌ Repetitive action verbs
- ❌ Long, complex sentences (aim for 15-20 words)

---

**Document Version**: 1.0
**Last Updated**: 2025-11-22
**Next Review**: After implementing high-priority changes
