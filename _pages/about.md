---
permalink: /
title: ""
excerpt: ""
author_profile: false
redirect_from:
  - /about/
  - /about.html
---

<div class="research-home">
  <section class="hero-panel" id="about-me">
    <div class="hero-copy">
      <p class="eyebrow">MULTIMODAL AI · EFFICIENT INFERENCE</p>
      <h1>Kyeongyoon<br><span>Lee.</span></h1>
      <p class="hero-role">M.S. Student at AIM Lab, SKKU</p>
      <p class="hero-lead">I research multimodal models, video understanding, and token compression. My work explores how AI systems can listen, see, and reason more efficiently.</p>
      <div class="hero-actions">
        <a class="primary-action" href="#publications">View publications <span aria-hidden="true">↓</span></a>
        <a class="secondary-action" href="mailto:lky3685@skku.edu">Email <span aria-hidden="true">↗</span></a>
        <a class="secondary-action" href="https://github.com/Yooonlee" target="_blank" rel="noopener noreferrer">GitHub <span aria-hidden="true">↗</span></a>
      </div>
    </div>
    <div class="hero-visual profile-visual">
      <div class="profile-orbit profile-orbit-one"></div>
      <div class="profile-orbit profile-orbit-two"></div>
      <div class="profile-photo-frame">
        <img src="{{ '/images/profile.jpg' | relative_url }}" alt="Portrait of Kyeongyoon Lee">
      </div>
      <div class="profile-label profile-label-top"><span></span> Multimodal AI</div>
      <div class="profile-label profile-label-bottom"><span></span> Token Compression</div>
    </div>
  </section>

  <section class="content-section" id="research">
    <div class="section-heading">
      <p class="section-number">01</p>
      <div>
        <p class="eyebrow">RESEARCH</p>
        <h2>Making multimodal models<br>more capable and efficient.</h2>
      </div>
    </div>
    <div class="research-grid">
      <article class="research-card">
        <span class="card-index">01</span>
        <h3>Multimodal Models</h3>
        <p>Joint reasoning across audio, vision, and language in long-form multimodal contexts.</p>
      </article>
      <article class="research-card featured">
        <span class="card-index">02</span>
        <h3>Token Compression</h3>
        <p>Reducing computation and memory while preserving the evidence needed for accurate reasoning.</p>
      </article>
      <article class="research-card">
        <span class="card-index">03</span>
        <h3>Video Understanding</h3>
        <p>Temporal representations and memory mechanisms for understanding long videos.</p>
      </article>
    </div>
  </section>

  <section class="content-section news-section" id="news">
    <div class="section-heading compact-heading">
      <p class="section-number">02</p>
      <div>
        <p class="eyebrow">LATEST NEWS</p>
        <h2>What’s new.</h2>
      </div>
    </div>
    <div class="news-card">
      <time datetime="2026-06">JUN 2026</time>
      <p>Our paper <strong>“Hierarchical Multimodal Memory for Training-Free Video Moment Retrieval”</strong> will appear at <strong>RespMultimodal’26</strong>, a KDD 2026 Workshop.</p>
    </div>
  </section>

  <section class="content-section publications-section" id="publications">
    <div class="section-heading">
      <p class="section-number">03</p>
      <div>
        <p class="eyebrow">PUBLICATIONS</p>
        <h2>Selected work.</h2>
      </div>
    </div>

    <div class="publication-list">
      <article class="publication-card">
        <div class="publication-image">
          <img src="{{ '/images/publications/a-pack-teaser.png' | relative_url }}" alt="Three vertically stacked teaser panels explaining A-PACK's deferred audio pruning and local audio-visual dynamics">
        </div>
        <div class="publication-copy">
          <div class="publication-meta">
            <span class="venue-badge">arXiv</span>
          </div>
          <h3>Deferred Audio Pruning with Local Audio-Visual Dynamics for Omni-LLMs</h3>
          <p class="paper-authors"><strong>Kyeongyoon Lee</strong>, Hongyeob Kim, Youngeun Kim, Sungeun Hong</p>
          <p class="paper-tldr"><strong>TL;DR</strong> A two-stage, training-free framework that preserves information-dense audio before the LLM, compresses video with local audio-visual dynamics, and prunes low-relevance multimodal tokens after query-conditioned interactions emerge.</p>
          <div class="paper-highlights">
            <span>Up to 78% fewer prefill FLOPs</span>
            <span>Up to 2.21× decoding throughput</span>
          </div>
        </div>
      </article>

      <article class="publication-card publication-card-secondary">
        <div class="publication-image">
          <img src="{{ '/images/hmma-kdd2026-workshop.png' | relative_url }}" alt="Architecture overview for Hierarchical Multimodal Memory for Training-Free Video Moment Retrieval">
        </div>
        <div class="publication-copy">
          <div class="publication-meta">
            <span class="venue-badge">KDD 2026 Workshop</span>
          </div>
          <h3>Hierarchical Multimodal Memory for Training-Free Video Moment Retrieval</h3>
          <p class="paper-authors"><strong>Kyeongyoon Lee</strong>, Hongyeob Kim, Sungeun Hong</p>
          <p class="paper-tldr"><strong>TL;DR</strong> Builds reusable hierarchical memory from visual captions and ASR, then uses query-aware proposals and multimodal re-ranking to retrieve precise video moments without training.</p>
          <a class="paper-link" href="{{ '/files/publications/hierarchical-multimodal-memory-kdd2026.pdf' | relative_url }}">Read paper <span aria-hidden="true">↗</span></a>
        </div>
      </article>
    </div>

    <div class="domestic-publication">
      <span>DOMESTIC · KSC 2023</span>
      <div>
        <h3>GPT and Stable Diffusion-based Reading Activity Service</h3>
        <p>SeYun Bae*, Kyeongyoon Lee*, JinSu Lee, Hogyun Jeon, Hyunggu Jung <small>(*equal contribution)</small></p>
      </div>
    </div>
  </section>

  <section class="content-section background-section" id="background">
    <div class="section-heading">
      <p class="section-number">04</p>
      <div>
        <p class="eyebrow">BACKGROUND</p>
        <h2>Education, experience<br>and recognition.</h2>
      </div>
    </div>

    <div class="background-grid">
      <div class="background-column">
        <h3>Education</h3>
        <article class="timeline-item">
          <span>2026.02 — PRESENT</span>
          <h4>M.S. in Immersive Media Engineering</h4>
          <p>AIM Lab, Sungkyunkwan University (SKKU)</p>
        </article>
        <article class="timeline-item">
          <span>2018.03 — 2024.08</span>
          <h4>B.S. in Statistics &amp; B.E. in Computer Science</h4>
          <p>University of Seoul (UOS)</p>
        </article>
      </div>

      <div class="background-column">
        <h3>Experience</h3>
        <article class="timeline-item">
          <span>2025.09 — 2026.02</span>
          <h4>Lab Intern</h4>
          <p>Department of Immersive Media Engineering, SKKU</p>
        </article>
        <article class="timeline-item">
          <span>2025.03 — 2025.06</span>
          <h4>Undergraduate Research Program</h4>
          <p>KAIST School of Computing · Prof. Oh-Tae Hyun</p>
        </article>
        <article class="timeline-item">
          <span>2024.01 — 2025.03</span>
          <h4>Loan Comparison Platform Team</h4>
          <p>Nonghyup Bank</p>
        </article>
        <article class="timeline-item">
          <span>2023.06 — 2023.12</span>
          <h4>Undergraduate Research Intern</h4>
          <p>Time-series TFT ML, Department of Statistics, UOS</p>
        </article>
        <article class="timeline-item">
          <span>2023.01 — 2023.04</span>
          <h4>DataHub Intern</h4>
          <p>Humax Mobility</p>
        </article>
      </div>
    </div>

    <div class="awards-panel">
      <p class="eyebrow">HONORS &amp; AWARDS</p>
      <div class="awards-grid">
        <span>AWS Certified Solutions Architect – Associate (C03)</span>
        <span>Shinhan Big Data Hackathon Award</span>
        <span>Hanium Contest ICT Company and Media CEO Award</span>
        <span>KSC 2023 Undergraduate Division Encouragement Award</span>
      </div>
    </div>
  </section>

  <footer class="site-footer">
    <p>Researching efficient ways for AI to listen, see, and reason.</p>
    <a href="#about-me" aria-label="Back to top">Back to top ↑</a>
  </footer>
</div>
