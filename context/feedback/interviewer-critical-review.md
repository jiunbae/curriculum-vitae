# Critical CV Review: Interviewer Perspective

**Candidate:** Jiun Bae
**Review Date:** 2025-11-22
**Reviewer Role:** Senior Technical Interviewer

---

## Executive Summary

This CV demonstrates solid technical background in ML/DL with relevant industry experience at reputable companies. However, it suffers from **excessive use of buzzwords, lack of quantifiable metrics, and unclear role differentiation**. The candidate appears competent but the resume's credibility is undermined by over-inflated language and missing concrete evidence of impact.

**Overall Assessment:** ⚠️ **PROCEED WITH CAUTION** - Strong on paper, but requires thorough behavioral and technical validation during interview.

---

## Critical Issues by Section

### 1. Professional Summary

**Current:**
> "Machine Learning Research and Development Engineer specializing in real-time inference and deep learning model research. Experienced in delivering production-quality prototypes and internal frameworks. Expertise in data pipelines, model training, evaluation, and serving systems."

**Problems:**
- ❌ **Generic and vague** - Could apply to thousands of ML engineers
- ❌ **No differentiation** - What makes you unique?
- ❌ **Missing key metrics** - How many models deployed? What scale?
- ❌ **"Expertise" claim** - Unsubstantiated without proof

**Red Flags for Interviewer:**
- If this is their "expertise," why is the summary so generic?
- What specific technical depth can I expect in the interview?

---

### 2. Experience Section

#### Return Zero (Jul 2024 - Present)

**Critical Issues:**

1. **Vague bullet points with no metrics:**
   ```
   "Developed and improved an end-to-end speech recognition model"
   ```
   - ❓ Improved by what percentage? WER reduction?
   - ❓ What was the baseline? What did YOU specifically do?
   - ❓ "Optimized for real-time" - what latency? What throughput?

2. **Buzzword overload:**
   ```
   "Researched, prototyped, and deployed 5+ ML-powered features"
   ```
   - ❌ "ML-powered features" is meaningless jargon
   - ⚠️ "5+" - Why not exact number? Hiding something?
   - ❓ What features? What was the business impact?

3. **Unclear ownership:**
   ```
   "Independently owned the full research-to-production pipeline"
   ```
   - 🤔 If independent, why mention team collaboration elsewhere?
   - ❓ Does this mean you're a solo contributor? Team player?

**Interview Questions This Raises:**
- What specifically did you contribute vs. what was already there?
- Can you quantify ANY improvement you made?
- Were you really "independent" or just lack collaboration skills?

---

#### NCSOFT (Feb 2021 - Jun 2024)

**Critical Issues:**

1. **Excessive adjectives undermine credibility:**
   ```
   "Implemented preprocessing and alignment pipelines for high-fidelity motion..."
   ```
   - ❌ "high-fidelity" - Compared to what? What's the metric?
   - 🚩 **Pattern of adjective abuse:** "sophisticated," "advanced," "comprehensive," "innovative"
   - **Interviewer reaction:** Either overcompensating or junior writer

2. **Responsibility inflation:**
   ```
   "Led the research on a deep learning model..."
   "Developed a PyTorch-based framework... Improved team productivity"
   ```
   - ❓ "Led" - Team size? Were you a lead or just a contributor?
   - ❓ "Improved team productivity" - By what %? How measured?
   - 🚩 Claims leadership but no evidence of mentoring or team metrics

3. **Technical depth unclear:**
   - No specific architectures mentioned (Transformer? CNN? RNN?)
   - No performance metrics (accuracy, latency, throughput)
   - No dataset scales or training infrastructure details

**Red Flags:**
- 3+ years at NCSOFT but achievements read like intern tasks
- Why leave after 3 years? Career progression issues?
- Published papers? Patents? Where's the research output for a "research" role?

---

#### Naver Clova (2-month intern)

**Issues:**
- ✅ Appropriately scoped for an intern
- ❌ "Contributed to development" - What was YOUR specific contribution?
- ❓ Only 2 months - Why such a short stint?

---

#### Naver Webtoon (6-month intern)

**Better than others, but still issues:**
- ✅ More specific: "annotation tool," "Visual QA task"
- ❌ Still missing metrics: How many annotations? Tool adoption rate?
- 🤔 Why not converted to full-time after 6 months of "advanced" work?

---

### 3. Projects Section

**Major Structural Problem:**

❌ **Massive overlap with Experience section**
- Text-to-Texture, Digital Human, 3D Facial Animation - these ARE your job at NCSOFT
- Listing them separately inflates the CV and shows poor judgment
- **Interviewer impression:** Trying to pad the resume

**Recommended Structure:**
- Projects should be OUTSIDE of work or pre-professional
- SW Maestro projects are appropriate
- MariaDB project is appropriate (academic)
- Everything else should be merged into Experience

**Content Issues:**

1. **Continued adjective abuse:**
   ```
   "Architected a high-performance API server"
   "Created detailed facial animations"
   "Engineered advanced annotation tools"
   ```
   - 🚩 Every tool is "advanced," every system is "sophisticated"
   - **Effect:** Loses all meaning, appears unprofessional

2. **Memento and DeepCheck projects (2016-2017):**
   - ⚠️ 8+ years old - Why still prominent on resume?
   - ❓ Technology stack completely outdated
   - 💡 Should be moved to "Early Career" or removed entirely

---

### 4. Skills Section

**CRITICALLY WEAK**

```
Programming: Python, Matlab, C/C++, Java
M. Learning: PyTorch, TensorFlow, Keras, Chainer
Tools/Techs: LaTeX, Git, SQL
Web: HTML/CSS, Jekyll, JavaScript
```

**Problems:**

1. ❌ **No proficiency levels** - Beginner vs. Expert?
2. ❌ **Outdated tools listed:** Chainer (deprecated), Matlab (outdated for ML)
3. ❌ **Missing modern stack:**
   - No Docker, Kubernetes
   - No cloud platforms (AWS, GCP, Azure)
   - No MLOps tools (MLflow, Weights & Biases)
   - No FastAPI (mentioned in projects but not in skills!)
4. ❌ **"Web" section irrelevant** for ML role - Remove or deemphasize
5. ❌ **Missing critical ML skills:**
   - Model optimization (quantization, pruning)
   - Distributed training
   - Production serving (TorchServe, TensorRT)

**Interviewer Perspective:**
- Are you actually proficient in modern ML engineering?
- Can you deploy models at scale?
- Do you understand MLOps?

---

### 5. Education

**Relatively solid, but questions:**

✅ M.S. in Computer Science from reputable university
✅ Advisor link is good

❓ **Missing:**
- Thesis title/topic?
- GPA (if strong)?
- Any notable coursework?
- Publications during M.S.?

🚩 **Commented-out Yonsei withdrawal:**
- If it's commented out, why is it in the source?
- Shows poor CV hygiene
- **Decision:** Either include with explanation or remove completely

---

### 6. Publications

**MAJOR RED FLAG** 🚩

- Section exists but appears empty (just bibliography formatting)
- **For a "Research Engineer" role at NCSOFT for 3+ years?**
- ❌ No conference papers?
- ❌ No workshop papers?
- ❌ No arxiv preprints?
- ❌ No patents?

**Interviewer Concerns:**
- Is this really a "research" role or just development?
- Why no research output after M.S. + 3 years in industry?
- Are you applying for the right type of role?

**Action Required:**
- If you have publications, LIST THEM PROMINENTLY
- If you don't, reconsider calling yourself "Research Engineer"
- Consider targeting "ML Engineer" or "Applied Scientist" roles instead

---

### 7. Awards

**Good section, but dated:**

✅ Google ML Challenge 5th place (2017) - Impressive
✅ SW Maestro Top Team (2017) - Good
✅ ACM-ICPC 16th place (2015) - Relevant for algorithms

⚠️ **All awards 7-9 years old**
- No recent recognition?
- No company awards or performance bonuses?
- No hackathon wins or OSS contributions?

**Suggests:** Peak performance was in school, plateau since then?

---

## Language and Tone Issues

### Overused Weak Words (Must Remove)

| Word | Count | Problem |
|------|-------|---------|
| "advanced" | 5+ | Meaningless without context |
| "sophisticated" | 3+ | Subjective and vague |
| "comprehensive" | 2+ | Unquantified claim |
| "innovative" | 2+ | Everyone claims this |
| "extensive" | 2+ | How extensive? |
| "Led/Leading" | 6+ | Overclaimed without evidence |

### Writing Quality Issues

❌ **Inconsistent tense usage**
❌ **Passive voice overuse** ("was developed" instead of "developed")
❌ **Redundant phrases** ("researched, prototyped, and deployed" - pick one or be specific)
❌ **Bullet points too long** - Should be max 2 lines

---

## Missing Critical Information

### 1. Quantifiable Achievements

**Currently ZERO of these:**
- Model performance improvements (% accuracy gain, WER reduction)
- Inference speed optimizations (ms latency, throughput)
- Cost savings (compute reduction, infrastructure optimization)
- User impact (DAU, engagement metrics)
- Team impact (number mentored, onboarding time reduction)
- Code impact (LOC, repository ownership, PR reviews)

### 2. Technical Depth Indicators

**Missing:**
- Specific model architectures (Transformer, U-Net, GAN, etc.)
- Dataset scales (1M samples, 1TB data, etc.)
- Training infrastructure (8xA100 GPUs, distributed training)
- Production scale (QPS, concurrent users, data throughput)

### 3. Soft Skills Evidence

**No evidence of:**
- Cross-functional collaboration
- Stakeholder management
- Technical leadership or mentorship
- Communication skills (presentations, documentation)
- Project management or planning

---

## Comparison with Industry Standards

### What a STRONG ML Engineer CV should have:

1. ✅ **Quantified impact:**
   - "Reduced inference latency from 500ms to 50ms (10x improvement)"
   - "Improved model accuracy from 85% to 92% on production dataset"

2. ✅ **Technical specificity:**
   - "Fine-tuned Whisper-large model using LoRA with 4-bit quantization"
   - "Deployed TorchServe endpoint handling 1000 QPS with <100ms p99 latency"

3. ✅ **Business context:**
   - "Enabled real-time transcription for 100k daily active users"
   - "Reduced cloud inference costs by $50k/month through optimization"

### What THIS CV has:

❌ Vague descriptions with excessive adjectives
❌ No quantified metrics
❌ Unclear individual contributions
❌ Missing modern technical stack

---

## Interview Strategy Based on CV

### Red Flags to Probe:

1. **Overinflated Language:**
   - Ask for specific examples when they claim "led" or "architected"
   - Request metrics for ANY claimed improvement
   - Probe on team size and actual responsibilities

2. **Technical Depth:**
   - Deep dive on one project - architecture, challenges, trade-offs
   - Ask about model selection rationale
   - Question about production issues and debugging

3. **Career Progression:**
   - Why leave NCSOFT after 3 years?
   - What's the career goal? Research vs. Engineering?
   - Why only 6 months at current company?

4. **Research vs. Engineering:**
   - Ask about publications (or lack thereof)
   - Probe on research methodology vs. application focus
   - Clarify what type of role they're actually seeking

### Positive Signals to Explore:

1. ✅ Diverse experience across companies (Naver, NCSOFT, startup)
2. ✅ End-to-end ownership claims (if validated)
3. ✅ SW Maestro top team (strong early signal)
4. ✅ Academic background with research advisor

---

## Specific Recommendations for Candidate

### CRITICAL - Fix Immediately:

1. **Remove 80% of adjectives**
   - "sophisticated" → DELETE
   - "advanced" → DELETE or replace with specific technical term
   - "comprehensive" → Replace with scope (e.g., "across 3 microservices")

2. **Add metrics to EVERY achievement**
   - Minimum: 2 quantified achievements per role
   - Format: "Achieved X by doing Y, resulting in Z impact"

3. **Separate work from projects**
   - Remove all NCSOFT work from Projects section
   - Keep only academic and extracurricular projects

4. **Fix Skills section**
   - Add proficiency levels (Expert/Advanced/Intermediate)
   - Remove deprecated tools (Chainer)
   - Add modern ML stack (Docker, cloud platforms, MLOps)

### IMPORTANT - Address Before Applying:

1. **Publications section:**
   - Add publications OR remove the section entirely
   - If no publications, rebrand as "ML Engineer" not "Research Engineer"

2. **Career narrative:**
   - Add brief context for each transition
   - Explain what you're looking for in next role
   - Show progression and growth

3. **Recent achievements:**
   - Add 2024-2025 accomplishments
   - Show continued learning and growth

### OPTIONAL - Nice to Have:

1. Add GitHub portfolio with pinned projects
2. Include technical blog posts or talks
3. Add certifications (AWS, GCP, etc.)
4. Include relevant coursework or continued education

---

## Final Verdict

### Strengths:
- ✅ Strong educational background (M.S. from good school)
- ✅ Relevant industry experience (3+ years)
- ✅ Diverse technical exposure
- ✅ Early career achievements (SW Maestro, Google Challenge)

### Critical Weaknesses:
- ❌ Zero quantifiable metrics across entire CV
- ❌ Excessive buzzwords undermine credibility
- ❌ Unclear individual contributions
- ❌ Missing research output despite "research" title
- ❌ Outdated skills section

### Hiring Recommendation:

**PHONE SCREEN APPROVED** - But with specific validation required:

1. ✅ Proceed to phone screen
2. ⚠️ Focus on behavioral validation (STAR format)
3. ⚠️ Technical depth assessment on ONE recent project
4. ⚠️ Probe on quantifiable impact and individual contribution
5. ❌ Do NOT proceed to onsite without clear evidence of:
   - Measurable impact
   - Technical depth in modern ML stack
   - Clear role differentiation (research vs. engineering)

### Estimated Seniority Level:
- **CV Claims:** Senior ML Research Engineer
- **CV Evidence:** Mid-level ML Engineer
- **Recommend Screening For:** Mid to Senior ML Engineer (pending validation)

---

## Key Questions for Interview

### Technical Validation:
1. "You mentioned improving an ASR model. What was the exact WER before and after? How did you measure this?"
2. "Walk me through the architecture of your speech recognition pipeline. What were the key technical challenges?"
3. "You claim to have deployed 5+ ML features at Return Zero. Pick one - what was the full stack from data to deployment?"
4. "What's your experience with model optimization? Quantization, pruning, distillation?"
5. "Describe your MLOps workflow. What tools do you use for experiment tracking, model versioning, deployment?"

### Behavioral Validation:
1. "You say you 'led' research at NCSOFT. What was your team size? Did you have direct reports?"
2. "Why did you leave NCSOFT after 3 years?"
3. "You've been at Return Zero for 6 months. What specific impact have you made so far?"
4. "Tell me about a time when a project failed. What happened?"
5. "How do you balance research exploration vs. production requirements?"

### Career Fit:
1. "Are you looking for a research role or an engineering role? What's the difference to you?"
2. "Where do you see your career in 3 years? Research, engineering, or management?"
3. "What motivates you more: publishing papers or shipping products?"

---

## Conclusion

This CV represents a **mid-level ML engineer with potential** but suffers from **credibility issues due to over-inflated language and lack of concrete evidence**. The candidate likely has solid technical skills but has poorly communicated their actual impact.

**Risk Level:** MEDIUM-HIGH
- **High risk:** CV credibility issues, unclear differentiation
- **Medium potential:** Good background, relevant experience

**Recommendation:** Proceed with structured interview focusing on validation, not exploration. Require concrete examples and metrics for all claimed achievements.

---

**Document Version:** 1.0
**Next Review:** After phone screen
**Interviewer Notes:** [To be added after interview]
