---
permalink: /
title: ""
excerpt: ""
author_profile: false
hide_masthead: true
body_class: minimal-profile-page
redirect_from:
  - /about/
  - /about.html
---

<div class="reference-wrapper">
  <header class="profile-header" aria-label="Profile">
    <a class="profile-avatar" href="#about-me" aria-label="Go to About Me">
      <img src="{{ '/images/profile.jpg' | relative_url }}" alt="Portrait of Kyeongyoon Lee">
    </a>

    <h1>Kyeongyoon Lee</h1>
    <p class="profile-position">M.S. Student</p>
    <p class="profile-affiliation">AIM Lab, SKKU</p>
    <p class="profile-location">Seoul, South Korea</p>
    <a class="profile-email" href="mailto:lky3685@skku.edu">lky3685@skku.edu</a>

    <nav class="profile-socials" aria-label="Contact links">
      <a href="mailto:lky3685@skku.edu" aria-label="Email Kyeongyoon Lee"><i class="fas fa-envelope" aria-hidden="true"></i></a>
      <a href="https://github.com/Yooonlee" target="_blank" rel="noopener noreferrer" aria-label="Kyeongyoon Lee on GitHub"><i class="fab fa-github" aria-hidden="true"></i></a>
    </nav>
  </header>

  <div class="profile-content">
    <section class="about-card" id="about-me">
      <h2>About Me</h2>
      <p>I am <strong>Kyeongyoon Lee</strong>, an M.S. student at <strong>AIM Lab, Sungkyunkwan University (SKKU)</strong>. I received my bachelor’s degrees in Statistics and Computer Science from the University of Seoul. My research explores how multimodal AI systems can listen, see, and reason more efficiently.</p>
    </section>

    <hr>

    <section id="research">
      <h2>Research Direction</h2>
      <p>I am interested in capable and efficient multimodal models that understand long and dynamic real-world contexts.</p>
      <p>My research interests include:</p>
      <ul class="research-list">
        <li><span class="text-highlight"><strong>Multimodal Models</strong></span> for joint reasoning across audio, vision, and language.</li>
        <li><span class="text-highlight"><strong>Token Compression</strong></span> for reducing computation and memory while preserving useful evidence.</li>
        <li><span class="text-highlight"><strong>Video Understanding</strong></span> through temporal representations and memory mechanisms.</li>
      </ul>
    </section>

    <hr>

    <section id="news">
      <h2>News</h2>
      <div class="news-timeline">
        <div class="timeline-year"><span>2026</span></div>
        <div class="news-item"><span class="news-month">Aug</span> <strong>Spatio-Temporal Audio Language Modeling for Dynamic Sound Sources</strong> is accepted to <span class="text-accent">EMNLP 2026 Main Conference</span>.</div>
        <div class="news-item"><span class="news-month">Jun</span> <strong>Hierarchical Multimodal Memory for Training-Free Video Moment Retrieval</strong> will appear at <span class="text-accent">RespMultimodal’26, a KDD 2026 Workshop</span>.</div>
      </div>
    </section>

    <hr>

    <section id="publications">
      <h2 class="publications-heading">Publications</h2>

      <div class="publications">
        <ol class="bibliography">
          <li class="publication-entry">
            <div class="tagline-row"><span class="pub-tagline">🔎 How can language models understand moving sound sources across space and time?</span></div>
            <div class="publication-row">
              <div class="publication-media">
                <a class="publication-image-link" href="https://openreview.net/forum?id=zUbZRx1YeP" target="_blank" rel="noopener noreferrer" aria-label="Open Spatio-Temporal Audio Language Modeling for Dynamic Sound Sources on OpenReview">
                  <img src="{{ '/images/publications/st-audiolm-figure1.png' | relative_url }}" alt="Figure 1 overview of the ST-Audio Encoder and ST-AudioLM">
                </a>
                <span class="venue-badge">EMNLP</span>
              </div>
              <div class="publication-details">
                <h3 class="paper-title"><a href="https://openreview.net/forum?id=zUbZRx1YeP" target="_blank" rel="noopener noreferrer">Spatio-Temporal Audio Language Modeling for Dynamic Sound Sources</a></h3>
                <p class="paper-authors">Oh Hyun-Bin, Kazuki Shimada, Yuhta Takida, Kim Sung-Bin, Toshimitsu Uesaka, Takashi Shibuya, <span class="author-highlight"><strong>Kyeongyoon Lee</strong></span>, Tae-Hyun Oh, Yuki Mitsufuji</p>
                <p class="paper-venue"><em>Empirical Methods in Natural Language Processing <strong>(EMNLP)</strong>, 2026. Main Conference.</em></p>
                <div class="paper-links">
                  <a href="https://openreview.net/forum?id=zUbZRx1YeP" target="_blank" rel="noopener noreferrer">OpenReview</a>
                </div>
              </div>
            </div>
          </li>

          <li class="publication-entry">
            <div class="tagline-row"><span class="pub-tagline">🔎 Can audio-visual dynamics identify the tokens an Omni-LLM should preserve?</span></div>
            <div class="publication-row">
              <div class="publication-media">
                <a class="publication-image-link" href="https://arxiv.org/abs/2608.08794" target="_blank" rel="noopener noreferrer" aria-label="Open Deferred Audio Pruning with Local Audio-Visual Dynamics for Omni-LLMs on arXiv">
                  <img src="{{ '/images/publications/a-pack-teaser.png' | relative_url }}" alt="A-PACK deferred audio pruning and local audio-visual dynamics overview" loading="lazy">
                </a>
                <span class="venue-badge">arXiv</span>
              </div>
              <div class="publication-details">
                <h3 class="paper-title"><a href="https://arxiv.org/abs/2608.08794" target="_blank" rel="noopener noreferrer">Deferred Audio Pruning with Local Audio-Visual Dynamics for Omni-LLMs</a></h3>
                <p class="paper-authors"><span class="author-highlight"><strong>Kyeongyoon Lee</strong></span>, Hongyeob Kim, Youngeun Kim, Sungeun Hong</p>
                <p class="paper-venue"><em>arXiv preprint, 2026.</em></p>
                <p class="paper-summary"><strong>TL;DR</strong> A two-stage, training-free framework that preserves information-dense audio before the LLM, compresses video with local audio-visual dynamics, and prunes low-relevance multimodal tokens after query-conditioned interactions emerge.</p>
                <div class="paper-links">
                  <a href="https://arxiv.org/abs/2608.08794" target="_blank" rel="noopener noreferrer">PDF</a>
                </div>
              </div>
            </div>
          </li>

          <li class="publication-entry">
            <div class="tagline-row"><span class="pub-tagline">🔎 Can reusable multimodal memory retrieve precise moments without training?</span></div>
            <div class="publication-row">
              <div class="publication-media">
                <a class="publication-image-link" href="{{ '/files/publications/hierarchical-multimodal-memory-kdd2026.pdf' | relative_url }}" aria-label="Open Hierarchical Multimodal Memory for Training-Free Video Moment Retrieval PDF">
                  <img src="{{ '/images/hmma-kdd2026-workshop.png' | relative_url }}" alt="Hierarchical Multimodal Memory architecture overview" loading="lazy">
                </a>
                <span class="venue-badge">KDD Workshop</span>
              </div>
              <div class="publication-details">
                <h3 class="paper-title"><a href="{{ '/files/publications/hierarchical-multimodal-memory-kdd2026.pdf' | relative_url }}">Hierarchical Multimodal Memory for Training-Free Video Moment Retrieval</a></h3>
                <p class="paper-authors"><span class="author-highlight"><strong>Kyeongyoon Lee</strong></span>, Hongyeob Kim, Sungeun Hong</p>
                <p class="paper-venue"><em>RespMultimodal’26: Responsible Multimodal Foundation Models for Knowledge Discovery, <strong>KDD 2026 Workshop</strong>.</em></p>
                <p class="paper-summary"><strong>TL;DR</strong> Builds reusable hierarchical memory from visual captions and ASR, then uses query-aware proposals and multimodal re-ranking to retrieve precise video moments without training.</p>
                <div class="paper-links">
                  <a href="{{ '/files/publications/hierarchical-multimodal-memory-kdd2026.pdf' | relative_url }}">PDF</a>
                </div>
              </div>
            </div>
          </li>
        </ol>
      </div>

      <div class="domestic-publication">
        <h3>Domestic</h3>
        <p><strong>GPT and Stable Diffusion-based Reading Activity Service</strong><br>
        SeYun Bae*, <span class="author-highlight"><strong>Kyeongyoon Lee*</strong></span>, JinSu Lee, Hogyun Jeon, Hyunggu Jung<br>
        <em>KSC 2023 Undergraduate Division</em> · *equal contribution</p>
      </div>
    </section>

    <hr>

    <section id="background">
      <h2>Background</h2>

      <h3>Education</h3>
      <ul class="detail-list">
        <li><span>2026.02 — Present</span><strong>M.S. in Immersive Media Engineering</strong>, AIM Lab, Sungkyunkwan University (SKKU)</li>
        <li><span>2018.03 — 2024.08</span><strong>B.S. in Statistics &amp; B.E. in Computer Science</strong>, University of Seoul (UOS)</li>
      </ul>

      <h3>Experience</h3>
      <ul class="detail-list">
        <li><span>2025.09 — 2026.02</span><strong>Lab Intern</strong>, Department of Immersive Media Engineering, SKKU</li>
        <li><span>2025.03 — 2025.06</span><strong>Undergraduate Research Program</strong>, KAIST School of Computing · Prof. Oh Tae-Hyun</li>
        <li><span>2024.01 — 2025.03</span><strong>Loan Comparison Platform Team</strong>, Nonghyup Bank</li>
        <li><span>2023.06 — 2023.12</span><strong>Undergraduate Research Intern</strong>, Time-series TFT ML, Department of Statistics, UOS</li>
        <li><span>2023.01 — 2023.04</span><strong>DataHub Intern</strong>, Humax Mobility</li>
      </ul>
    </section>

    <hr>

    <section id="honors">
      <h2>Honors &amp; Awards</h2>
      <ul class="awards-list">
        <li>AWS Certified Solutions Architect – Associate (C03)</li>
        <li>Shinhan Big Data Hackathon Award</li>
        <li>Hanium Contest ICT Company and Media CEO Award</li>
        <li>KSC 2023 Undergraduate Division Encouragement Award</li>
      </ul>
    </section>

    <footer class="profile-footer">
      <p>Powered by Jekyll. Design adapted from the Minimal Light academic portfolio style.</p>
    </footer>
  </div>
</div>
