<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
<meta name="theme-color" content="#7D2E5E">
<title>inCruises 멤버십 완전 가이드 | Bella</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;600;700;900&display=swap" rel="stylesheet">
<style>
  :root {
    --navy: #7D2E5E;
    --navy-deep: #5C1A44;
    --navy-soft: #A0446E;
    --gold: #E8799A;
    --gold-light: #F4A7BE;
    --gold-deep: #C45A7A;
    --ivory: #FFF5F8;
    --ivory-dark: #FCDDE8;
    --cream: #FFF0F5;
    --text-dark: #0A1828;
    --text-mid: #4a5568;
    --line: rgba(125,46,94,0.1);
    --shadow-sm: 0 2px 10px rgba(125,46,94,0.08);
    --shadow-md: 0 8px 28px rgba(125,46,94,0.12);
    --shadow-gold: 0 8px 28px rgba(232,121,154,0.25);
  }

- { margin:0; padding:0; box-sizing:border-box; -webkit-tap-highlight-color:transparent; }
  html { scroll-behavior: smooth; }
  body {
  font-family: ‘Noto Sans KR’, sans-serif;
  background: var(–ivory);
  color: var(–text-dark);
  word-break: keep-all;
  overflow-x: hidden;
  -webkit-font-smoothing: antialiased;
  padding-top: env(safe-area-inset-top);
  padding-bottom: env(safe-area-inset-bottom);
  min-height: 100dvh;
  }

.serif {  }

/* ── SAFETY BANNER ── */
.safety-banner {
background: var(–gold);
color: var(–navy-deep);
padding: 13px 20px;
text-align: center;
font-size: 12.5px;
font-weight: 600;
letter-spacing: 0.02em;
}
.safety-banner strong { font-weight: 800; }

/* ── HERO ── */
.hero {
background: linear-gradient(135deg, var(–navy-deep) 0%, var(–navy) 60%, var(–navy-soft) 100%);
padding: 64px 24px 80px;
text-align: center;
position: relative;
overflow: hidden;
}
.hero::before {
content:’’;
position:absolute; top:-40%; right:-15%;
width:480px; height:480px;
background: radial-gradient(circle, rgba(232,121,154,0.14) 0%, transparent 70%);
pointer-events:none;
}
.hero::after {
content:’’;
position:absolute; bottom:-30%; left:-15%;
width:360px; height:360px;
background: radial-gradient(circle, rgba(232,121,154,0.07) 0%, transparent 70%);
pointer-events:none;
}
.hero-inner { position:relative; z-index:1; max-width:520px; margin:0 auto; }
.hero-overline {

```
font-size:13px;
color:var(--gold-light);
letter-spacing:0.18em;
text-transform:uppercase;
display:block;
margin-bottom:20px;
```

}
.hero h1 {

```
font-size: clamp(40px,10vw,62px);
font-weight:500;
color:#fff;
line-height:1.1;
letter-spacing:-0.02em;
margin-bottom:18px;
```

}
.hero h1 em {  color:var(–gold-light); }
.hero-sub {
font-size:15px;
font-weight:300;
color:rgba(255,255,255,0.75);
line-height:1.75;
margin-bottom:36px;
}
.hero-meta {
display:inline-flex;
gap:14px;
padding:12px 22px;
background:rgba(255,255,255,0.07);
border:1px solid rgba(232,121,154,0.3);
border-radius:100px;
backdrop-filter:blur(10px);
font-size:12px;
color:rgba(255,255,255,0.75);
letter-spacing:0.04em;
flex-wrap:wrap;
justify-content:center;
}
.hero-meta .dot {
width:4px; height:4px;
background:var(–gold);
border-radius:50%;
display:inline-block;
margin-right:6px;
vertical-align:middle;
}

/* ── NAV DOTS ── */
.nav-dots {
display:flex;
justify-content:center;
gap:6px;
padding:20px 24px;
background:var(–cream);
border-bottom:1px solid var(–line);
flex-wrap:wrap;
}
.nav-dot {
padding:7px 14px;
border-radius:100px;
font-size:11px;
font-weight:500;
color:var(–text-mid);
background:#fff;
border:1px solid var(–line);
text-decoration:none;
letter-spacing:0.02em;
min-height:34px;
display:flex;
align-items:center;
transition:all 0.2s;
}
.nav-dot:hover, .nav-dot:active { background:var(–navy); color:#fff; border-color:var(–navy); }

/* ── SECTION WRAPPER ── */
.section {
padding: 52px 20px;
max-width: 560px;
margin: 0 auto;
}
.section-label {

```
font-size:12px;
letter-spacing:0.2em;
color:var(--gold-deep);
text-transform:uppercase;
display:block;
margin-bottom:8px;
```

}
.section-title {

```
font-size:clamp(28px,7vw,38px);
font-weight:500;
color:var(--navy);
line-height:1.2;
letter-spacing:-0.02em;
margin-bottom:8px;
```

}
.section-desc {
font-size:14px;
color:var(–text-mid);
line-height:1.7;
margin-bottom:28px;
}

/* ── DIVIDER ── */
.section-divider {
height:1px;
background:linear-gradient(to right, transparent, var(–ivory-dark), transparent);
margin:0;
}
.section-divider-navy {
height:4px;
background:linear-gradient(to right, var(–navy), var(–navy-soft), transparent);
margin:0;
}

/* ── TIER CARDS ── */
.tiers { display:grid; grid-template-columns:1fr 1fr; gap:14px; }
.tier-card {
background:#fff;
border:1px solid var(–line);
border-radius:18px;
padding:24px 16px;
text-align:center;
box-shadow:var(–shadow-sm);
transition:transform 0.25s;
}
.tier-card:active { transform:scale(0.97); }
.tier-card.premium {
background:linear-gradient(155deg, var(–navy) 0%, var(–navy-deep) 100%);
border-color:var(–gold);
box-shadow:var(–shadow-gold);
}
.tier-badge {

```
font-size:13px;
color:var(--gold-deep);
letter-spacing:0.1em;
text-transform:uppercase;
margin-bottom:8px;
```

}
.tier-card.premium .tier-badge { color:var(–gold-light); }
.tier-name {

```
font-size:26px;
color:var(--navy);
margin-bottom:14px;
```

}
.tier-card.premium .tier-name { color:var(–ivory); }
.tier-price {
display:flex; align-items:baseline;
justify-content:center; gap:3px;
margin-bottom:4px;
}
.tier-currency { font-size:18px; color:var(–gold); font-weight:600; }
.tier-amount {

```
font-size:48px; font-weight:600;
color:var(--navy); line-height:1;
```

}
.tier-card.premium .tier-amount { color:var(–gold-light); }
.tier-period { font-size:12px; color:var(–text-mid); }
.tier-card.premium .tier-period { color:rgba(250,247,242,0.55); }
.tier-reward {
margin-top:18px; padding-top:18px;
border-top:1px dashed var(–line);
font-size:12px; color:var(–text-mid);
}
.tier-card.premium .tier-reward { border-color:rgba(232,121,154,0.25); color:rgba(250,247,242,0.7); }
.tier-reward-amount {
display:block;

```
font-size:22px; font-weight:600;
color:var(--gold); margin-top:4px;
```

}
.tier-card.premium .tier-reward-amount { color:var(–gold-light); }

/* ── RULE CARDS (payment timing) ── */
.rule-stack { display:flex; flex-direction:column; gap:12px; }
.rule-card {
background:#fff;
border-radius:14px;
padding:18px 18px;
display:flex;
align-items:flex-start;
gap:14px;
box-shadow:var(–shadow-sm);
border-left:4px solid transparent;
transition:transform 0.2s;
}
.rule-card:active { transform:scale(0.98); }
.rule-card.gold  { border-color:var(–gold); }
.rule-card.green { border-color:#5aaa7e; }
.rule-card.grey  { border-color:#b0b8c4; }
.rule-badge {
min-width:44px; height:44px;
border-radius:10px;
display:flex; align-items:center;
justify-content:center;
font-size:20px; flex-shrink:0;
}
.rule-card.gold  .rule-badge { background:rgba(232,121,154,0.1); }
.rule-card.green .rule-badge { background:rgba(90,170,126,0.1); }
.rule-card.grey  .rule-badge { background:rgba(176,184,196,0.1); }
.rule-info { flex:1; }
.rule-timing { font-size:11.5px; font-weight:500; margin-bottom:4px; }
.rule-card.gold  .rule-timing { color:#C45A7A; }
.rule-card.green .rule-timing { color:#3d8a60; }
.rule-card.grey  .rule-timing { color:#7a8694; }
.rule-result {

```
font-size:20px; font-weight:600;
color:var(--navy); margin-bottom:4px;
```

}
.rule-desc { font-size:12px; color:var(–text-mid); line-height:1.6; }

/* ── TIMELINE ── */
.path-choice {
background:var(–cream);
border:1px solid var(–gold);
border-radius:14px;
padding:20px 18px;
margin-bottom:36px;
text-align:center;
}
.path-choice-label {

```
color:var(--gold-deep);
letter-spacing:0.12em;
text-transform:uppercase;
font-size:11px;
margin-bottom:10px;
```

}
.path-choice h3 {

```
font-size:22px; color:var(--navy);
margin-bottom:14px;
```

}
.path-tabs { display:grid; grid-template-columns:1fr 1fr; gap:8px; }
.path-tab {
background:#fff;
border:1px solid var(–line);
border-radius:10px;
padding:11px 8px;
font-size:11.5px;
}
.path-tab strong {
display:block;

```
font-size:17px; color:var(--navy);
margin-bottom:2px;
```

}
.path-tab-fast { border-color:var(–gold); }
.path-tab-slow { border-color:var(–navy-soft); }

.timeline { position:relative; padding-left:36px; }
.timeline::before {
content:’’;
position:absolute; left:14px;
top:20px; bottom:20px; width:2px;
background:linear-gradient(to bottom, var(–gold) 0%, var(–gold) 20%, var(–navy-soft) 60%, var(–navy) 100%);
}
.milestone { position:relative; padding-bottom:36px; }
.milestone:last-child { padding-bottom:0; }
.milestone-dot {
position:absolute; left:-28px; top:8px;
width:28px; height:28px;
background:var(–ivory);
border:3px solid var(–gold);
border-radius:50%;
display:flex; align-items:center; justify-content:center;
box-shadow:0 0 0 4px var(–ivory), var(–shadow-sm);
z-index:2;
}
.milestone-dot::after {
content:’’; width:9px; height:9px;
background:var(–gold); border-radius:50%;
}
.milestone.major .milestone-dot { border-color:var(–navy); background:var(–navy); }
.milestone.major .milestone-dot::after { background:var(–gold); }
.milestone-month {

```
 font-size:13px;
color:var(--gold-deep);
letter-spacing:0.08em;
text-transform:uppercase;
margin-bottom:5px;
```

}
.milestone-title {

```
font-size:24px; font-weight:500;
color:var(--navy); line-height:1.25;
margin-bottom:9px;
```

}
.milestone-body {
font-size:14px; color:var(–text-dark);
opacity:0.82; line-height:1.75;
}
.milestone-stats {
display:flex; flex-wrap:wrap;
gap:8px; margin-top:14px;
}
.stat-chip {
background:#fff;
border:1px solid var(–line);
border-radius:100px;
padding:7px 13px;
font-size:12px;
display:inline-flex; align-items:center;
gap:5px; box-shadow:var(–shadow-sm);
}
.stat-chip strong {

```
font-size:15px; color:var(--navy);
```

}
.stat-chip .gold {

```
font-weight:600; color:var(--gold-deep);
font-size:15px;
```

}

/* Big number */
.big-number {
background:linear-gradient(140deg, var(–navy-deep) 0%, var(–navy) 100%);
color:var(–ivory);
border-radius:18px;
padding:28px 22px;
margin:14px 0;
position:relative; overflow:hidden;
}
.big-number::before {
content:’’; position:absolute;
top:-40px; right:-40px;
width:180px; height:180px;
background:radial-gradient(circle, rgba(232,121,154,0.15) 0%, transparent 70%);
}
.big-number-label {

```
 color:var(--gold-light);
letter-spacing:0.1em; text-transform:uppercase;
font-size:11px; margin-bottom:8px;
```

}
.big-number-value {

```
font-size:64px; font-weight:600;
color:var(--gold-light); line-height:1;
letter-spacing:-0.03em; position:relative; z-index:1;
```

}
.big-number-value sup { font-size:24px; vertical-align:top; margin-right:3px; }
.big-number-desc { margin-top:10px; font-size:13px; opacity:0.85; position:relative; z-index:1; }

/* Two paths block */
.paths-detail { display:grid; gap:10px; margin-top:14px; }
.path-row {
background:#fff;
border-left:4px solid var(–gold);
border-radius:6px 12px 12px 6px;
padding:14px 16px;
box-shadow:var(–shadow-sm);
}
.path-row.slow { border-left-color:var(–navy-soft); }
.path-row-head { display:flex; align-items:center; gap:8px; margin-bottom:5px; }
.path-tag {

```
 font-size:12px;
color:var(--gold-deep);
letter-spacing:0.08em; text-transform:uppercase;
```

}
.path-row.slow .path-tag { color:var(–navy-soft); }
.path-row h4 {

```
font-size:18px; color:var(--navy); font-weight:600;
```

}
.path-row p { font-size:13px; color:var(–text-dark); opacity:0.78; line-height:1.65; }

/* ── BOOKING TABLE ── */
.booking-table {
width:100%; border-collapse:collapse;
border-radius:14px; overflow:hidden;
box-shadow:var(–shadow-md);
}
.booking-table thead tr { background:var(–navy); color:#fff; }
.booking-table th {
padding:14px 10px; font-size:12px;
font-weight:500; letter-spacing:0.03em;
text-align:center;
}
.booking-table tbody tr {
background:#fff;
border-bottom:1px solid var(–ivory-dark);
}
.booking-table tbody tr:last-child { border-bottom:none; }
.booking-table td {
padding:15px 10px; font-size:13px;
text-align:center; color:var(–text-dark);
line-height:1.5;
}
.booking-table td:first-child {

```
font-size:16px; font-weight:600;
color:var(--navy);
border-right:1px solid var(--ivory-dark);
```

}
.tag {
display:inline-block; padding:3px 9px;
border-radius:20px; font-size:11px;
font-weight:600; margin-top:5px;
}
.tag-gold  { background:rgba(232,121,154,0.15); color:#C45A7A; }
.tag-green { background:rgba(90,170,126,0.15); color:#2d7050; }
.tag-blue  { background:rgba(125,46,94,0.1);    color:var(–navy); }

/* ── FREE MEMBERSHIP ── */
.free-box {
background:linear-gradient(135deg, var(–navy-deep) 0%, var(–navy) 100%);
border-radius:18px; padding:28px 22px;
position:relative; overflow:hidden;
}
.free-box::before {
content:’’;
position:absolute; inset:0;
background:radial-gradient(ellipse at top right, rgba(232,121,154,0.18) 0%, transparent 55%);
pointer-events:none;
}
.free-box-overline {

```
 color:var(--gold-light);
letter-spacing:0.15em; font-size:11px;
text-transform:uppercase; display:block;
margin-bottom:8px; position:relative; z-index:1;
```

}
.free-box h3 {

```
font-size:26px; color:var(--ivory);
margin-bottom:6px; position:relative; z-index:1;
```

}
.free-box-desc {
font-size:13px; color:rgba(250,247,242,0.7);
line-height:1.65; margin-bottom:22px;
position:relative; z-index:1;
}
.formula {
background:rgba(255,255,255,0.07);
border:1px solid rgba(232,121,154,0.25);
border-radius:14px; padding:20px 18px;
position:relative; z-index:1;
}
.formula-row {
display:grid; grid-template-columns:1fr auto 1fr;
gap:10px; align-items:center;
margin-bottom:16px;
}
.formula-row:last-child { margin-bottom:0; }
.formula-box {
background:rgba(255,255,255,0.15);
border:1px solid rgba(255,255,255,0.3);
border-radius:12px; padding:16px 10px;
text-align:center;
}
.formula-box.highlight {
background:linear-gradient(145deg, var(–gold) 0%, var(–gold-deep) 100%);
border-color:var(–gold); color:var(–navy-deep);
}
.formula-label {
font-size:11px; font-weight:700;
letter-spacing:0.12em; text-transform:uppercase;
color:#fff; margin-bottom:5px;
}
.formula-box.highlight .formula-label { color:var(–navy-deep); }
.formula-value {
font-size:20px; font-weight:700;
color:#fff; line-height:1.2;
}
.formula-box.highlight .formula-value { color:var(–navy-deep); font-size:16px; }
.formula-unit { font-size:12px; color:rgba(255,255,255,0.9); margin-top:4px; font-weight:500; }
.formula-op {
font-size:26px; color:#fff; font-weight:700;
}
.formula-note {
margin-top:16px; padding-top:16px;
border-top:1px dashed rgba(255,255,255,0.25);
font-size:12.5px; text-align:center;
color:rgba(255,255,255,0.85); line-height:1.7;
}

/* ── PARTNER CARD ── */
.partner-card {
background:#fff;
border:1px solid var(–line);
border-radius:18px;
padding:26px 20px;
text-align:center;
box-shadow:var(–shadow-sm);
}
.partner-icon {
width:52px; height:52px;
margin:0 auto 14px;
background:linear-gradient(135deg, var(–gold) 0%, var(–gold-deep) 100%);
border-radius:50%;
display:flex; align-items:center; justify-content:center;

```
font-size:22px; color:#fff; font-weight:600;
```

}
.partner-card h3 {

```
font-size:22px; color:var(--navy);
margin-bottom:6px;
```

}
.partner-card .sub { font-size:12px; color:var(–text-mid); margin-bottom:16px; }
.partner-price {

```
font-size:34px; font-weight:600;
color:var(--navy); margin:14px 0 4px;
```

}
.partner-period { font-size:12px; color:var(–text-mid); margin-bottom:14px; }
.partner-body { font-size:13.5px; color:var(–text-dark); opacity:0.82; line-height:1.7; }

/* ── STRATEGY BOX ── */
.strategy-box {
background:var(–navy);
border-radius:18px; padding:28px 22px;
position:relative; overflow:hidden;
}
.strategy-box::after {
content:‘🚢’;
position:absolute; right:16px; bottom:16px;
font-size:60px; opacity:0.06; line-height:1;
}
.strategy-step {
display:flex; align-items:flex-start;
gap:14px; margin-bottom:18px;
}
.strategy-step:last-child { margin-bottom:0; }
.step-num {
min-width:28px; height:28px;
border-radius:50%;
background:var(–gold);
color:var(–navy);
font-size:13px; font-weight:700;
display:flex; align-items:center; justify-content:center;
flex-shrink:0; margin-top:2px;
}
.step-text { color:rgba(255,255,255,0.88); font-size:14px; line-height:1.7; }
.step-text strong { color:var(–gold-light); font-weight:600; }

/* ── POINT BOX ── */
.point-box {
background:#fff;
border-radius:14px; padding:22px 18px;
box-shadow:var(–shadow-sm);
border-top:3px solid var(–gold);
}
.point-row {
display:flex; align-items:flex-start;
gap:12px; padding:12px 0;
border-bottom:1px solid var(–ivory-dark);
}
.point-row:last-child { border-bottom:none; padding-bottom:0; }
.point-icon { font-size:20px; min-width:30px; text-align:center; padding-top:2px; }
.point-label { font-size:13px; color:var(–text-mid); line-height:1.6; }
.point-label strong {
color:var(–navy); display:block;
font-size:14px; margin-bottom:2px;
}

/* ── COMPARE GRID ── */
.compare-grid { display:grid; grid-template-columns:1fr 1fr; gap:12px; }
.compare-card {
border-radius:12px; padding:18px 14px; text-align:center;
}
.compare-card.bad  { background:#f5f5f5; border:1px solid #e0e0e0; }
.compare-card.good { background:var(–navy); border:1px solid var(–navy); }
.compare-card .icon { font-size:26px; margin-bottom:8px; }
.compare-card .label { font-size:12px; font-weight:600; margin-bottom:6px; }
.compare-card.bad  .label { color:#888; }
.compare-card.good .label { color:var(–gold-light); }
.compare-card .desc { font-size:12px; line-height:1.6; }
.compare-card.bad  .desc { color:#999; }
.compare-card.good .desc { color:rgba(255,255,255,0.8); }

/* ── SAFETY CARD ── */
.safety-card {
background:#fff;
border:2px solid var(–gold);
border-radius:18px; padding:32px 22px;
box-shadow:var(–shadow-gold);
position:relative; text-align:center;
}
.safety-card::before {
content:‘⚠’;
position:absolute; top:-22px; left:50%;
transform:translateX(-50%);
width:44px; height:44px;
background:var(–gold); color:#fff;
border-radius:50%;
display:flex; align-items:center; justify-content:center;
font-size:20px; box-shadow:var(–shadow-md);
}
.safety-card h3 {

```
font-size:24px; color:var(--navy);
margin:16px 0 6px;
```

}
.safety-card .sub {

```
 color:var(--gold-deep);
letter-spacing:0.08em; font-size:11px;
text-transform:uppercase; margin-bottom:22px;
```

}
.safety-grid {
display:grid; grid-template-columns:1fr 1fr;
gap:8px; margin-bottom:18px;
}
.safety-item {
background:var(–cream); border-radius:10px;
padding:13px 8px; text-align:center;
font-size:12.5px; color:var(–navy);
border:1px solid var(–line);
}
.safety-item strong {
display:block;

```
font-size:17px; font-weight:600;
margin-bottom:2px; color:var(--navy-deep);
```

}
.safety-bottom {
background:var(–navy-deep); color:var(–ivory);
border-radius:10px; padding:13px 14px;
font-size:13px; line-height:1.65;
}
.safety-bottom strong { color:var(–gold-light); }

/* ── FOOTER ── */
footer {
background:var(–navy-deep);
padding: 44px 24px;
text-align:center;
}
footer .logo {

```
 font-size:22px;
color:var(--gold-light); margin-bottom:8px;
```

}
footer .divider-gold {
width:36px; height:1px;
background:var(–gold); margin:14px auto;
}
footer .small {
font-size:12px; color:rgba(250,247,242,0.5);
line-height:1.75; max-width:400px; margin:0 auto;
}
footer .closing-quote {

```
 font-size:16px;
color:rgba(250,247,242,0.75); line-height:1.8;
margin-bottom:20px;
```

}
footer .closing-quote span { color:var(–gold-light); font-style:normal; font-weight:600; }

/* ── NAVY BG SECTION ── */
.navy-bg { background:linear-gradient(180deg, var(–navy-deep) 0%, var(–navy) 100%); }
.navy-bg .section-title { color:var(–ivory); }
.navy-bg .section-label { color:var(–gold-light); }
.navy-bg .section-desc { color:rgba(250,247,242,0.65); }

/* ── REVEAL ── */
.reveal {
opacity:0; transform:translateY(18px);
transition:opacity 0.7s ease, transform 0.7s ease;
}
.reveal.visible { opacity:1; transform:translateY(0); }

/* ── MOBILE ── */
@media (max-width:520px) {
.section { padding:40px 16px; }
.tiers { grid-template-columns:1fr; }
.tier-amount { font-size:44px; }
.big-number-value { font-size:54px; }
.formula-row { grid-template-columns:1fr; gap:8px; }
.formula-op { transform:rotate(90deg); font-size:20px; }
.compare-grid { grid-template-columns:1fr; }
.safety-grid { grid-template-columns:1fr; }
.path-tabs { grid-template-columns:1fr; }
.timeline { padding-left:28px; }
.milestone-dot { left:-24px; width:24px; height:24px; }
.milestone-title { font-size:21px; }
}
@media (max-width:320px) {
.hero h1 { font-size:34px; }
.section-title { font-size:26px; }
}

/* Touch targets */
a, button { min-height:50px; display:inline-flex; align-items:center; }

/* ─────────────────────────────────────── */
/* ── VIEW SWITCHING (HOME ↔ DETAIL) ── */
/* ─────────────────────────────────────── */
#home-view { display: block; }
#home-view.hidden { display: none; }
#detail-view { display: none; }
#detail-view.active { display: block; }

.detail-section { display: none; }
.detail-section.active {
display: block;
animation: fadeInUp 0.35s ease-out;
}
@keyframes fadeInUp {
from { opacity: 0; transform: translateY(8px); }
to   { opacity: 1; transform: translateY(0); }
}

/* ── NAV BUTTON GRID (home main interaction) ── */
.nav-grid {
display: grid;
grid-template-columns: repeat(2, 1fr);
gap: 12px;
padding: 36px 20px 56px;
max-width: 560px;
margin: 0 auto;
}
.nav-btn-card {
background: #fff;
border: 1px solid var(–line);
border-radius: 18px;
padding: 22px 14px;
box-shadow: var(–shadow-sm);
text-align: center;
cursor: pointer;
font-family: inherit;
transition: all 0.25s ease;
min-height: 120px;
display: flex;
flex-direction: column;
align-items: center;
justify-content: center;
gap: 6px;
-webkit-tap-highlight-color: transparent;
}
.nav-btn-card:hover {
transform: translateY(-3px);
box-shadow: var(–shadow-gold);
border-color: var(–gold);
}
.nav-btn-card:active {
transform: scale(0.97);
box-shadow: var(–shadow-sm);
}
.nav-btn-emoji {
font-size: 30px;
line-height: 1;
margin-bottom: 4px;
}
.nav-btn-en {
font-size: 9.5px;
color: var(–gold-deep);
letter-spacing: 0.16em;
text-transform: uppercase;
font-weight: 600;
}
.nav-btn-label {
font-size: 14px;
font-weight: 600;
color: var(–navy);
letter-spacing: -0.01em;
}
@media (max-width: 360px) {
.nav-btn-card { min-height: 108px; padding: 18px 12px; }
.nav-btn-emoji { font-size: 26px; }
.nav-btn-label { font-size: 13px; }
}

/* ── BACK BAR (sticky top of detail view) ── */
.back-bar {
position: sticky;
top: 0;
z-index: 80;
background: rgba(255, 245, 248, 0.92);
-webkit-backdrop-filter: blur(14px) saturate(140%);
backdrop-filter: blur(14px) saturate(140%);
border-bottom: 1px solid var(–line);
padding: 12px 16px;
padding-top: calc(12px + env(safe-area-inset-top));
}
.back-btn {
display: inline-flex;
align-items: center;
gap: 6px;
padding: 10px 18px;
background: #fff;
border: 1px solid var(–line);
border-radius: 100px;
font-family: inherit;
font-size: 13px;
font-weight: 600;
color: var(–navy);
cursor: pointer;
min-height: 42px;
letter-spacing: -0.01em;
transition: all 0.2s ease;
-webkit-tap-highlight-color: transparent;
}
.back-btn:hover, .back-btn:active {
background: var(–navy);
color: #fff;
border-color: var(–navy);
}
.back-btn .arrow { font-size: 16px; line-height: 1; }

/* ── BOTTOM BACK (large CTA at end of section) ── */
.back-bottom {
padding: 48px 20px 64px;
text-align: center;
background: var(–cream);
border-top: 1px solid var(–line);
}
.back-btn-large {
display: inline-flex;
align-items: center;
gap: 10px;
padding: 16px 32px;
background: var(–navy);
border: none;
border-radius: 100px;
font-family: inherit;
font-size: 14px;
font-weight: 600;
color: #fff;
cursor: pointer;
min-height: 54px;
letter-spacing: 0.02em;
box-shadow: var(–shadow-md);
transition: all 0.2s ease;
-webkit-tap-highlight-color: transparent;
}
.back-btn-large:hover {
background: var(–navy-deep);
transform: translateY(-2px);
box-shadow: var(–shadow-gold);
}
.back-btn-large:active { transform: scale(0.97); }
</style>

</head>
<body>

<!-- ═══════════════════════════════════════ -->

<!-- HOME VIEW                               -->

<!-- ═══════════════════════════════════════ -->

<div id="home-view">

<!-- SAFETY BANNER -->

<div class="safety-banner">
  🔒 <strong>본인 기기 · 본인 카드 · 본인 계정</strong>으로 스스로 관리 &nbsp;·&nbsp; 예약 시에만 문의
</div>

<!-- HERO -->

<div class="hero">
  <div class="hero-inner">
    <span class="hero-overline">inCruises Membership · Complete Guide</span>
    <h1>가입부터<br><em>종료</em>까지<br>완전 가이드</h1>
    <p class="hero-sub">납입 규칙 · 여정 타임라인 · 예약 구조 · 종료 전략까지<br>멤버십의 모든 것을 한 페이지에</p>
    <div class="hero-meta">
      <span><span class="dot"></span>inCruises Membership</span>
      <span><span class="dot"></span>Updated 2026.04</span>
      <span><span class="dot"></span>Cruise Nomad · Bella</span>
    </div>
  </div>
</div>

<!-- NAV BUTTON GRID -->

<div class="nav-grid">
  <button class="nav-btn-card" onclick="showSection('tiers')">
    <span class="nav-btn-emoji">💳</span>
    <span class="nav-btn-en">Membership</span>
    <span class="nav-btn-label">멤버십</span>
  </button>
  <button class="nav-btn-card" onclick="showSection('payment')">
    <span class="nav-btn-emoji">📅</span>
    <span class="nav-btn-en">Payment Rules</span>
    <span class="nav-btn-label">납입 규칙</span>
  </button>
  <button class="nav-btn-card" onclick="showSection('journey')">
    <span class="nav-btn-emoji">🗺️</span>
    <span class="nav-btn-en">Journey</span>
    <span class="nav-btn-label">여정</span>
  </button>
  <button class="nav-btn-card" onclick="showSection('booking')">
    <span class="nav-btn-emoji">🛳️</span>
    <span class="nav-btn-en">Booking</span>
    <span class="nav-btn-label">예약</span>
  </button>
  <button class="nav-btn-card" onclick="showSection('simulation')">
    <span class="nav-btn-emoji">🧮</span>
    <span class="nav-btn-en">Simulation</span>
    <span class="nav-btn-label">시뮬레이션</span>
  </button>
  <button class="nav-btn-card" onclick="showSection('free')">
    <span class="nav-btn-emoji">🎁</span>
    <span class="nav-btn-en">Free Membership</span>
    <span class="nav-btn-label">무료 멤버십</span>
  </button>
  <button class="nav-btn-card" onclick="showSection('exit')">
    <span class="nav-btn-emoji">✈️</span>
    <span class="nav-btn-en">Exit Strategy</span>
    <span class="nav-btn-label">종료 전략</span>
  </button>
  <button class="nav-btn-card" onclick="showSection('case')">
    <span class="nav-btn-emoji">👑</span>
    <span class="nav-btn-en">Success Story</span>
    <span class="nav-btn-label">성공 사례</span>
  </button>
</div>

</div><!-- /home-view -->

<!-- ═══════════════════════════════════════ -->

<!-- DETAIL VIEW                             -->

<!-- ═══════════════════════════════════════ -->

<div id="detail-view">

<!-- BACK BAR (sticky top) -->

<div class="back-bar">
  <button class="back-btn" onclick="showHome()">
    <span class="arrow">←</span>
    <span>뒤로 가기</span>
  </button>
</div>

<!-- ──────────────────────────────────────── -->

<!-- PANEL: TIERS -->

<!-- ──────────────────────────────────────── -->

<div class="detail-section" data-id="tiers">
  <div class="section reveal">
    <span class="section-label">STEP ONE · Your Entry</span>
    <h2 class="section-title">어떤 멤버십으로<br>시작할까요?</h2>
    <p class="section-desc">정시 납부 시, 매월 구독료의 2배가 리워드로 쌓입니다</p>

```
<div class="tiers">
  <div class="tier-card">
    <div class="tier-badge">Classic</div>
    <div class="tier-name">클래식</div>
    <div class="tier-price">
      <span class="tier-currency">$</span>
      <span class="tier-amount">100</span>
    </div>
    <div class="tier-period">per month</div>
    <div class="tier-reward">
      월 적립 리워드
      <span class="tier-reward-amount">$200</span>
    </div>
  </div>
  <div class="tier-card premium">
    <div class="tier-badge">Premium</div>
    <div class="tier-name">프리미엄</div>
    <div class="tier-price">
      <span class="tier-currency">$</span>
      <span class="tier-amount">250</span>
    </div>
    <div class="tier-period">per month</div>
    <div class="tier-reward">
      월 적립 리워드
      <span class="tier-reward-amount">$500</span>
    </div>
  </div>
</div>
```

  </div>
</div>

<!-- ──────────────────────────────────────── -->

<!-- PANEL: PAYMENT TIMING -->

<!-- ──────────────────────────────────────── -->

<div class="detail-section" data-id="payment">
  <div class="section reveal">
    <span class="section-label">PAYMENT RULES</span>
    <h2 class="section-title">납입 타이밍에 따라<br>결과가 달라져요</h2>
    <p class="section-desc">언제 납입하느냐에 따라 리워드 적립량이 달라집니다</p>

```
<div class="rule-stack">
  <div class="rule-card gold">
    <div class="rule-badge">⭐</div>
    <div class="rule-info">
      <div class="rule-timing">정시 + 5일 이내 납입</div>
      <div class="rule-result">리워드 2배 적립</div>
      <div class="rule-desc">납입금의 200%가 리워드로 쌓입니다. 가장 유리한 타이밍!</div>
    </div>
  </div>
  <div class="rule-card green">
    <div class="rule-badge">✅</div>
    <div class="rule-info">
      <div class="rule-timing">6일 ~ 30일 이내 납입</div>
      <div class="rule-result">리워드 1배 적립</div>
      <div class="rule-desc">활성 회원 유지됩니다. 멤버십 혜택은 그대로 유지.</div>
    </div>
  </div>
  <div class="rule-card grey">
    <div class="rule-badge">⚠️</div>
    <div class="rule-info">
      <div class="rule-timing">30일 이후 미납</div>
      <div class="rule-result">비활성화 전환</div>
      <div class="rule-desc">리워드 포인트 0 / 납입 원금만 비활성 계정으로 이동됩니다.</div>
    </div>
  </div>
</div>
```

  </div>
</div>

<!-- ──────────────────────────────────────── -->

<!-- PANEL: JOURNEY TIMELINE -->

<!-- ──────────────────────────────────────── -->

<div class="detail-section" data-id="journey">
  <div class="section reveal">
    <span class="section-label">The Journey</span>
    <h2 class="section-title">나의 여정,<br>두 갈래의 길</h2>
    <p class="section-desc">재정 상황과 라이프스타일에 따라 선택하세요</p>

```
<div class="path-choice">
  <div class="path-choice-label">Choose Your Path</div>
  <h3>빠른 길 또는 안정의 길</h3>
  <div class="path-tabs">
    <div class="path-tab path-tab-fast">
      <strong>Fast Track</strong>
      3개월 이내 예약
    </div>
    <div class="path-tab path-tab-slow">
      <strong>Steady Track</strong>
      9–12개월 유지 후
    </div>
  </div>
</div>

<div class="timeline">
  <div class="milestone major">
    <div class="milestone-dot"></div>
    <div class="milestone-month">Month 00 · Day One</div>
    <h3 class="milestone-title">여정의 시작 — 가입</h3>
    <p class="milestone-body">클래식 또는 프리미엄을 선택해 본인 명의로 가입. 이 순간부터 매월 구독료의 2배가 리워드로 쌓이기 시작합니다.</p>
    <div class="milestone-stats">
      <span class="stat-chip">클래식 <strong>$100</strong>/월</span>
      <span class="stat-chip">리워드 <span class="gold">$200</span>/월</span>
    </div>
  </div>

  <div class="milestone">
    <div class="milestone-dot"></div>
    <div class="milestone-month">Month 01 — 03 · Stabilize</div>
    <h3 class="milestone-title">안정화 구간</h3>
    <p class="milestone-body">매월 정시 납부로 리워드가 꾸준히 적립됩니다. 이 시기에 크루즈 일정을 구체적으로 알아보기 시작하세요.</p>
    <div class="milestone-stats">
      <span class="stat-chip">3개월 누적 <span class="gold">$600+</span></span>
    </div>
  </div>

  <div class="milestone major">
    <div class="milestone-dot"></div>
    <div class="milestone-month">Month 03 · Decision Point</div>
    <h3 class="milestone-title">첫 번째 선택의 순간</h3>
    <p class="milestone-body">두 가지 길 중 나에게 맞는 경로를 선택합니다.</p>
    <div class="paths-detail">
      <div class="path-row">
        <div class="path-row-head"><span class="path-tag">Fast Track</span></div>
        <h4>3개월 안에 크루즈 예약</h4>
        <p>리워드 + 본인 부담 결제를 조합해 빠르게 예약. 기대감과 실행력을 모두 얻는 길.</p>
      </div>
      <div class="path-row slow">
        <div class="path-row-head"><span class="path-tag">Steady Track</span></div>
        <h4>12개월 유지 — 리워드 극대화</h4>
        <p>꾸준한 납부로 리워드를 모아 올 리워드 예약 준비. 재정 부담을 최소화하는 길.</p>
      </div>
    </div>
  </div>

  <div class="milestone major">
    <div class="milestone-dot"></div>
    <div class="milestone-month">Month 09 · Milestone</div>
    <h3 class="milestone-title">9개월 — 예약 자격 오픈</h3>
    <p class="milestone-body">9개월 유지 시, <strong>9개월 이후 출발 상품</strong>을 올 리워드로 예약할 수 있습니다. 리워드는 가입 즉시부터 사용 가능하지만, 올 리워드 크루즈 예약은 이 시점부터입니다.</p>
    <div class="big-number">
      <div class="big-number-label">Classic · 9-Month Accumulated</div>
      <div class="big-number-value"><sup>$</sup>1,800<sup>+</sup></div>
      <div class="big-number-desc">프리미엄은 약 $4,500+ 누적 가능</div>
    </div>
  </div>

  <div class="milestone">
    <div class="milestone-dot"></div>
    <div class="milestone-month">Month 09 — Boarding · Keep Active</div>
    <h3 class="milestone-title">멤버십 유지 의무 구간</h3>
    <p class="milestone-body">올 리워드로 크루즈를 예약한 뒤에도, 승선 시점까지는 멤버십을 유지해야 합니다. 대신 그 기간에도 2배 리워드는 계속 쌓입니다.</p>
    <div class="milestone-stats">
      <span class="stat-chip">클래식 유지 <strong>$100</strong>/월</span>
      <span class="stat-chip">프리미엄 유지 <strong>$250</strong>/월</span>
    </div>
  </div>

  <div class="milestone major">
    <div class="milestone-dot"></div>
    <div class="milestone-month">Month 24 · The Voyage</div>
    <h3 class="milestone-title">승선 — 마침내 떠나는 날</h3>
    <p class="milestone-body">예약 완료 후 승선. <strong>승선 이후에는 자유롭게 멤버십을 종료</strong>할 수 있습니다. 아래 종료 전략을 참고하세요.</p>
  </div>
</div>
```

  </div>
</div>

<!-- ──────────────────────────────────────── -->

<!-- PANEL: BOOKING TABLE -->

<!-- ──────────────────────────────────────── -->

<div class="detail-section" data-id="booking">
  <div class="section reveal">
    <span class="section-label">BOOKING STRUCTURE</span>
    <h2 class="section-title">예약 시점에 따른<br>조건 비교</h2>
    <p class="section-desc">출발까지 남은 기간에 따라 선결제 개월 수와 할인율이 달라집니다</p>

```
<table class="booking-table">
  <thead>
    <tr>
      <th>출발까지 남은 기간</th>
      <th>선결제</th>
      <th>할인</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>30 ~ 59일</td>
      <td>2개월 선결제<br><span class="tag tag-blue">단기 부담 ↑</span></td>
      <td>—</td>
    </tr>
    <tr>
      <td>60 ~ 90일</td>
      <td>1개월 선결제<br><span class="tag tag-green">✓ 종료 추천</span></td>
      <td>—</td>
    </tr>
    <tr>
      <td>90일 이후</td>
      <td>선결제 없음</td>
      <td>최대 50% 할인<br><span class="tag tag-gold">리워드 활용</span></td>
    </tr>
  </tbody>
</table>
```

  </div>
</div>

<!-- ──────────────────────────────────────── -->

<!-- PANEL: 9-MONTH SIMULATION -->

<!-- ──────────────────────────────────────── -->

<div class="detail-section" data-id="simulation">
  <div class="section reveal">
    <span class="section-label">9-MONTH SIMULATION</span>
    <h2 class="section-title">9개월 후<br>올 리워드 예약 시뮬레이션</h2>
    <p class="section-desc">270일 이후 출발 상품은 쌓인 리워드로 100% 결제 가능합니다. 내가 낼 금액을 직접 확인해 보세요.</p>

```
<!-- TIER SELECTOR -->
<div class="sim-tier-row">
  <button class="sim-tier-btn active" onclick="selectTier(this, 100, 200)" data-monthly="100" data-reward="200">
    <span class="sim-tier-name">클래식</span>
    <span class="sim-tier-price">$100 / 월</span>
    <span class="sim-tier-reward">리워드 $200 / 월</span>
  </button>
  <button class="sim-tier-btn" onclick="selectTier(this, 250, 500)" data-monthly="250" data-reward="500">
    <span class="sim-tier-name">프리미엄</span>
    <span class="sim-tier-price">$250 / 월</span>
    <span class="sim-tier-reward">리워드 $500 / 월</span>
  </button>
</div>

<!-- MONTHS SELECTOR -->
<div class="sim-months-row">
  <span class="sim-months-label">유지 기간</span>
  <div class="sim-months-btns">
    <button class="sim-month-btn" onclick="selectMonths(this, 9)">9개월</button>
    <button class="sim-month-btn active" onclick="selectMonths(this, 12)">12개월</button>
    <button class="sim-month-btn" onclick="selectMonths(this, 18)">18개월</button>
    <button class="sim-month-btn" onclick="selectMonths(this, 24)">24개월</button>
  </div>
</div>

<!-- RESULT SUMMARY -->
<div class="sim-summary">
  <div class="sim-summary-row">
    <span class="sim-summary-label">총 납입금액</span>
    <span class="sim-summary-val" id="sim-paid">$1,200</span>
  </div>
  <div class="sim-summary-divider"></div>
  <div class="sim-summary-row highlight">
    <span class="sim-summary-label">🏆 누적 리워드</span>
    <span class="sim-summary-val gold" id="sim-reward">$2,400</span>
  </div>
</div>

<!-- CRUISE PRICE INPUT -->
<div class="sim-input-wrap">
  <label class="sim-input-label">크루즈 상품 가격 입력 <span>(USD)</span></label>
  <div class="sim-input-row">
    <span class="sim-currency">$</span>
    <input type="number" class="sim-input" id="cruise-price" placeholder="예) 2000" min="0" oninput="calculate()" value="2000">
  </div>
  <div class="sim-presets">
    <button class="sim-preset" onclick="setPrice(1200)">$1,200</button>
    <button class="sim-preset" onclick="setPrice(2000)">$2,000</button>
    <button class="sim-preset" onclick="setPrice(3000)">$3,000</button>
    <button class="sim-preset" onclick="setPrice(5000)">$5,000</button>
  </div>
</div>

<!-- RESULT CARD -->
<div class="sim-result-card" id="sim-result">
  <div class="sim-result-header">
    <span class="sim-result-badge" id="sim-badge">✅ 올 리워드로 결제 가능</span>
  </div>

  <div class="sim-bars">
    <div class="sim-bar-wrap">
      <div class="sim-bar-label">
        <span>리워드로 결제</span>
        <span class="sim-bar-val" id="bar-reward-val">$2,000</span>
      </div>
      <div class="sim-bar-bg">
        <div class="sim-bar-fill gold-bar" id="bar-reward" style="width:100%"></div>
      </div>
    </div>
    <div class="sim-bar-wrap" id="bar-cash-wrap">
      <div class="sim-bar-label">
        <span>추가 카드 결제</span>
        <span class="sim-bar-val" id="bar-cash-val">$0</span>
      </div>
      <div class="sim-bar-bg">
        <div class="sim-bar-fill navy-bar" id="bar-cash" style="width:0%"></div>
      </div>
    </div>
  </div>

  <div class="sim-breakdown">
    <div class="sim-breakdown-row">
      <span>크루즈 가격</span>
      <span id="bd-price">$2,000</span>
    </div>
    <div class="sim-breakdown-row">
      <span>리워드 사용</span>
      <span class="gold-text" id="bd-reward">- $2,000</span>
    </div>
    <div class="sim-breakdown-row">
      <span>잔여 리워드</span>
      <span id="bd-leftover">$400 남음</span>
    </div>
    <div class="sim-breakdown-divider"></div>
    <div class="sim-breakdown-row total">
      <span>💳 내가 실제 내는 금액</span>
      <span id="bd-cash">$0</span>
    </div>
  </div>

  <div class="sim-note" id="sim-note">
    리워드가 크루즈 금액을 초과합니다. 잔여 리워드는 다음 예약에 사용 가능합니다.
  </div>
</div>
```

  </div>
</div><!-- /panel: simulation -->

<style>
  /* ── SIMULATION STYLES ── */
  .sim-tier-row { display:grid; grid-template-columns:1fr 1fr; gap:10px; margin-bottom:18px; }
  .sim-tier-btn {
    background:#fff; border:2px solid var(--line);
    border-radius:14px; padding:16px 12px;
    text-align:center; cursor:pointer;
    transition:all 0.2s; min-height:80px;
    display:flex; flex-direction:column;
    align-items:center; justify-content:center; gap:3px;
  }
  .sim-tier-btn.active { border-color:var(--gold); background:rgba(232,121,154,0.06); }
  .sim-tier-name { font-size:15px; font-weight:700; color:var(--navy); }
  .sim-tier-price { font-size:12px; color:var(--text-mid); }
  .sim-tier-reward { font-size:11px; color:var(--gold-deep); font-weight:600; margin-top:2px; }

  .sim-months-row { display:flex; align-items:center; gap:10px; margin-bottom:18px; flex-wrap:wrap; }
  .sim-months-label { font-size:12px; font-weight:600; color:var(--text-mid); white-space:nowrap; }
  .sim-months-btns { display:flex; gap:6px; flex-wrap:wrap; }
  .sim-month-btn {
    padding:7px 14px; border-radius:100px;
    border:1px solid var(--line);
    background:#fff; font-size:12px;
    font-weight:500; color:var(--text-mid);
    cursor:pointer; min-height:34px;
    font-family:'Noto Sans KR',sans-serif;
    transition:all 0.2s;
  }
  .sim-month-btn.active { background:var(--navy); color:#fff; border-color:var(--navy); }

  .sim-summary {
    background:var(--navy);
    border-radius:14px; padding:18px 20px;
    margin-bottom:18px;
  }
  .sim-summary-row {
    display:flex; justify-content:space-between;
    align-items:center; padding:6px 0;
  }
  .sim-summary-row.highlight { padding:10px 0 6px; }
  .sim-summary-label { font-size:13px; color:rgba(255,255,255,0.7); }
  .sim-summary-val { font-size:16px; font-weight:700; color:#fff; }
  .sim-summary-val.gold { font-size:22px; color:var(--gold-light); }
  .sim-summary-divider { height:1px; background:rgba(255,255,255,0.1); margin:4px 0; }

  .sim-input-wrap { margin-bottom:18px; }
  .sim-input-label {
    font-size:12px; font-weight:600;
    color:var(--text-mid); display:block;
    margin-bottom:8px;
  }
  .sim-input-label span { font-weight:400; }
  .sim-input-row {
    display:flex; align-items:center;
    background:#fff; border:2px solid var(--line);
    border-radius:12px; overflow:hidden;
    transition:border-color 0.2s;
  }
  .sim-input-row:focus-within { border-color:var(--gold); }
  .sim-currency {
    padding:0 14px; font-size:18px;
    font-weight:700; color:var(--gold);
    background:rgba(232,121,154,0.07);
    height:52px; display:flex; align-items:center;
  }
  .sim-input {
    flex:1; border:none; outline:none;
    padding:14px 14px; font-size:18px;
    font-weight:600; color:var(--navy);
    font-family:'Noto Sans KR',sans-serif;
    background:transparent;
    -webkit-appearance:none;
  }
  .sim-presets { display:flex; gap:6px; margin-top:8px; flex-wrap:wrap; }
  .sim-preset {
    padding:6px 12px; border-radius:100px;
    border:1px solid var(--line);
    background:#fff; font-size:11.5px;
    color:var(--text-mid); cursor:pointer;
    min-height:30px;
    font-family:'Noto Sans KR',sans-serif;
    transition:all 0.2s;
  }
  .sim-preset:hover { border-color:var(--navy); color:var(--navy); }

  .sim-result-card {
    background:#fff; border-radius:16px;
    padding:22px 18px;
    box-shadow:var(--shadow-md);
    border-top:3px solid var(--gold);
  }
  .sim-result-header { margin-bottom:18px; }
  .sim-result-badge {
    display:inline-block;
    padding:6px 14px; border-radius:100px;
    font-size:12px; font-weight:600;
    background:rgba(90,170,126,0.12);
    color:#2d7050;
  }
  .sim-result-badge.warn {
    background:rgba(232,121,154,0.12);
    color:#C45A7A;
  }
  .sim-result-badge.over {
    background:rgba(125,46,94,0.08);
    color:var(--navy);
  }

  .sim-bars { display:flex; flex-direction:column; gap:12px; margin-bottom:20px; }
  .sim-bar-wrap {}
  .sim-bar-label {
    display:flex; justify-content:space-between;
    font-size:12px; color:var(--text-mid);
    margin-bottom:5px;
  }
  .sim-bar-val { font-weight:700; color:var(--text-dark); }
  .sim-bar-bg {
    height:10px; background:var(--ivory-dark);
    border-radius:100px; overflow:hidden;
  }
  .sim-bar-fill {
    height:100%; border-radius:100px;
    transition:width 0.5s ease;
  }
  .gold-bar { background:linear-gradient(to right, #E8799A, #F4A7BE); }
  .navy-bar { background:linear-gradient(to right, var(--navy), var(--navy-soft)); }

  .sim-breakdown {
    background:var(--cream);
    border-radius:10px; padding:16px 14px;
    display:flex; flex-direction:column; gap:0;
  }
  .sim-breakdown-row {
    display:flex; justify-content:space-between;
    align-items:center;
    padding:7px 0;
    font-size:13px; color:var(--text-mid);
    border-bottom:1px solid var(--ivory-dark);
  }
  .sim-breakdown-row:last-child { border-bottom:none; }
  .sim-breakdown-row.total {
    font-size:14px; font-weight:700;
    color:var(--navy); padding-top:12px;
  }
  .sim-breakdown-divider { height:1px; background:var(--navy); margin:4px 0; opacity:0.1; }
  .gold-text { color:var(--gold-deep); font-weight:600; }

  .sim-note {
    margin-top:14px; padding:12px 14px;
    background:rgba(125,46,94,0.04);
    border-radius:8px;
    font-size:12px; color:var(--text-mid);
    line-height:1.65;
  }
</style>

<script>
  let currentMonthly = 100;
  let currentRewardPerMonth = 200;
  let currentMonths = 12;

  function selectTier(btn, monthly, reward) {
    document.querySelectorAll('.sim-tier-btn').forEach(b => b.classList.remove('active'));
    btn.classList.add('active');
    currentMonthly = monthly;
    currentRewardPerMonth = reward;
    calculate();
  }

  function selectMonths(btn, months) {
    document.querySelectorAll('.sim-month-btn').forEach(b => b.classList.remove('active'));
    btn.classList.add('active');
    currentMonths = months;
    calculate();
  }

  function setPrice(val) {
    document.getElementById('cruise-price').value = val;
    calculate();
  }

  function fmt(n) {
    return '$' + Math.round(n).toLocaleString();
  }

  function calculate() {
    const totalPaid = currentMonthly * currentMonths;
    const totalReward = currentRewardPerMonth * currentMonths;
    const cruisePrice = parseFloat(document.getElementById('cruise-price').value) || 0;

    document.getElementById('sim-paid').textContent = fmt(totalPaid);
    document.getElementById('sim-reward').textContent = fmt(totalReward);

    const rewardUsed = Math.min(totalReward, cruisePrice);
    const cashNeeded = Math.max(0, cruisePrice - totalReward);
    const rewardLeft = Math.max(0, totalReward - cruisePrice);

    // bars
    const rewardPct = cruisePrice > 0 ? Math.min(100, (rewardUsed / cruisePrice) * 100) : 100;
    const cashPct   = cruisePrice > 0 ? Math.min(100, (cashNeeded  / cruisePrice) * 100) : 0;
    document.getElementById('bar-reward').style.width = rewardPct + '%';
    document.getElementById('bar-cash').style.width   = cashPct + '%';
    document.getElementById('bar-reward-val').textContent = fmt(rewardUsed);
    document.getElementById('bar-cash-val').textContent   = fmt(cashNeeded);

    // breakdown
    document.getElementById('bd-price').textContent   = fmt(cruisePrice);
    document.getElementById('bd-reward').textContent  = '- ' + fmt(rewardUsed);
    document.getElementById('bd-cash').textContent    = fmt(cashNeeded);
    document.getElementById('bd-leftover').textContent = rewardLeft > 0 ? fmt(rewardLeft) + ' 남음' : '0';

    // badge + note
    const badge = document.getElementById('sim-badge');
    const note  = document.getElementById('sim-note');

    if (cruisePrice === 0) {
      badge.textContent = '금액을 입력해 주세요';
      badge.className = 'sim-result-badge over';
      note.textContent = '크루즈 상품 가격을 위에 입력하시면 시뮬레이션 결과를 확인할 수 있습니다.';
    } else if (cashNeeded === 0) {
      badge.textContent = '✅ 올 리워드로 결제 가능!';
      badge.className = 'sim-result-badge';
      note.textContent = rewardLeft > 0
        ? `리워드가 ${fmt(rewardLeft)} 남습니다. 잔여 리워드는 다음 예약에 사용 가능합니다.`
        : `리워드로 크루즈 금액이 딱 맞게 커버됩니다. 실제 카드 결제 없이 탑승 가능!`;
    } else {
      badge.textContent = `⚠️ 추가 $${Math.round(cashNeeded).toLocaleString()} 카드 결제 필요`;
      badge.className = 'sim-result-badge warn';
      note.textContent = `리워드가 ${Math.round(rewardPct)}% 커버합니다. 나머지 ${fmt(cashNeeded)}는 카드로 결제하거나, 더 오래 적립 후 예약하면 추가 부담 없이 탑승 가능합니다.`;
    }
  }

  // 초기 실행
  calculate();
</script>

<!-- ──────────────────────────────────────── -->

<!-- PANEL: FREE MEMBERSHIP -->

<!-- ──────────────────────────────────────── -->

<div class="detail-section" data-id="free">
  <div class="section reveal">
    <span class="section-label">Unlock Free Membership</span>
    <h2 class="section-title">무료 멤버십으로<br>가는 길</h2>
    <p class="section-desc">파트너 자격 + 직추 1명 — 나의 멤버십 비용이 0원이 되는 구조</p>

```
<div class="free-box">
  <span class="free-box-overline">The Formula</span>
  <h3>두 조건이 만나면</h3>
  <p class="free-box-desc">파트너 활성화 + 월 $500 이상 직추 1명 = 내 구독료 면제</p>
  <div class="formula">
    <div class="formula-row">
      <div class="formula-box">
        <div class="formula-label">Step 1</div>
        <div class="formula-value">파트너 자격</div>
        <div class="formula-unit">$95 / 6개월</div>
      </div>
      <div class="formula-op">+</div>
      <div class="formula-box">
        <div class="formula-label">Step 2</div>
        <div class="formula-value">$500 직추</div>
        <div class="formula-unit">월 $500+ 구독자 1명</div>
      </div>
    </div>
    <div class="formula-row">
      <div class="formula-box highlight" style="grid-column:1/-1;">
        <div class="formula-label">Result</div>
        <div class="formula-value">나의 $100 면제 + $200 리워드 계속 적립</div>
      </div>
    </div>
    <p class="formula-note">파트너 자격은 멤버십과 별개로 $95 / 6개월마다 갱신합니다.<br>이 자격이 있어야 직추로 인한 인센티브를 받을 수 있습니다.</p>
  </div>
</div>
```

  </div>

  <!-- Partner Card -->

  <div class="section" style="padding-top:0;" id="partner">
    <div class="reveal">
      <span class="section-label" style="display:block;margin-bottom:8px;">The Partner Tier</span>
      <div class="partner-card">
        <div class="partner-icon">P</div>
        <h3>Partner Activation</h3>
        <div class="sub">보너스 수령을 위한 별도 자격</div>
        <div class="partner-price">$95</div>
        <div class="partner-period">매 6개월 갱신</div>
        <p class="partner-body">
          멤버십 구독료와 <strong>별개</strong>로 납부합니다.<br>
          직추 인센티브, 팀 보너스 등을 받으려면 이 자격이 활성 상태여야 합니다.<br>
          무료 멤버십을 목표로 한다면 꼭 유지하세요.
        </p>
      </div>
    </div>
  </div>
</div>

<!-- ──────────────────────────────────────── -->

<!-- PANEL: EXIT STRATEGY (exit + inactive + comparison) -->

<!-- ──────────────────────────────────────── -->

<div class="detail-section" data-id="exit">
  <div class="section reveal">
    <span class="section-label">EXIT STRATEGY</span>
    <h2 class="section-title">손해 없이<br>현명하게 종료하는 법</h2>
    <p class="section-desc">멤버십을 마무리하고 싶다면 — 이 순서대로</p>

```
<div class="strategy-box">
  <div class="strategy-step">
    <div class="step-num">1</div>
    <div class="step-text"><strong>60~90일 이내 출발 상품</strong>을 선택하세요.<br>선결제 1개월만 추가됩니다.</div>
  </div>
  <div class="strategy-step">
    <div class="step-num">2</div>
    <div class="step-text">쌓인 <strong>리워드를 최대한 활용</strong>해 예약합니다.<br>최대 50%까지 리워드로 결제 가능.</div>
  </div>
  <div class="strategy-step">
    <div class="step-num">3</div>
    <div class="step-text"><strong>탑승 완료까지</strong> 멤버십을 유지합니다.<br>(탑승 전 종료 시 예약 취소될 수 있음)</div>
  </div>
  <div class="strategy-step">
    <div class="step-num">4</div>
    <div class="step-text">탑승 후 <strong>납입 중단 → 비활성화 전환</strong><br>남은 원금 포인트는 평생 사용 가능!</div>
  </div>
</div>
```

  </div>
</div>

<div class="section-divider"></div>

<!-- ──────────────────────────────────────── -->

<!-- SECTION 7: INACTIVE ACCOUNT -->

<!-- ──────────────────────────────────────── -->

<div class="section reveal">
  <span class="section-label">INACTIVE ACCOUNT</span>
  <h2 class="section-title">비활성화 되어도<br>내 돈은 사라지지 않아요</h2>
  <p class="section-desc">탈퇴하지 않으면 원금은 평생 내 것입니다</p>

  <div class="point-box">
    <div class="point-row">
      <div class="point-icon">💰</div>
      <div class="point-label">
        <strong>납입 원금 100% 보존</strong>
        탈퇴하지 않으면 비활성 계정에 원금 그대로 남아있습니다.
      </div>
    </div>
    <div class="point-row">
      <div class="point-icon">♾️</div>
      <div class="point-label">
        <strong>평생 사용 가능</strong>
        유효기간 없이 언제든 사용할 수 있습니다.
      </div>
    </div>
    <div class="point-row">
      <div class="point-icon">🛳️</div>
      <div class="point-label">
        <strong>크루즈 예약 시 17% 할인</strong>
        비활성 상태에서도 크루즈 예약 시 적용됩니다.
      </div>
    </div>
    <div class="point-row">
      <div class="point-icon">🏨</div>
      <div class="point-label">
        <strong>호텔 예약도 17% 할인</strong>
        크루즈를 타지 않아도 호텔 예약 시 동일하게 사용 가능!
      </div>
    </div>
  </div>
</div>

<div class="section-divider"></div>

<!-- ──────────────────────────────────────── -->

<!-- SECTION 8: COMPARISON -->

<!-- ──────────────────────────────────────── -->

<div class="section reveal">
  <span class="section-label">WHY IT'S DIFFERENT</span>
  <h2 class="section-title">헬스장·넷플릭스와<br>결정적으로 다른 점</h2>
  <p class="section-desc">해지해도 손해가 아닌 이유</p>

  <div class="compare-grid">
    <div class="compare-card bad">
      <div class="icon">🏋️</div>
      <div class="label">헬스장 / 넷플릭스</div>
      <div class="desc">안 가면 그냥 사라짐.<br>해지하면 남은 것 없음.</div>
    </div>
    <div class="compare-card good">
      <div class="icon">🛳️</div>
      <div class="label">크루즈 멤버십</div>
      <div class="desc">비활성화 되어도 원금이 포인트로 남아 평생 17% 할인 활용 가능.</div>
    </div>
  </div>
</div>

<!-- ──────────────────────────────────────── -->

<!-- PANEL: CASE STUDY -->

<!-- ──────────────────────────────────────── -->

<div class="detail-section" data-id="case">
  <div style="background:linear-gradient(180deg,var(--navy-deep) 0%,var(--navy) 100%); padding:52px 20px;">
  <div style="max-width:560px;margin:0 auto;">

```
<div class="reveal">
  <span style="font-size:11px;letter-spacing:2.5px;color:var(--gold-light);text-transform:uppercase;display:block;margin-bottom:8px;">REAL MEMBER STORY</span>
  <h2 style="font-size:clamp(26px,7vw,36px);font-weight:700;color:#fff;line-height:1.25;margin-bottom:10px;">나현명 씨의<br>1년 여정</h2>
  <p style="font-size:14px;color:rgba(255,255,255,0.6);line-height:1.7;margin-bottom:32px;">크루즈 멤버십 가입 후 1년, 그녀의 삶이 어떻게 달라졌는지 숫자로 보여드립니다.</p>
</div>

<!-- STORY TIMELINE -->
<div style="position:relative;padding-left:32px;" class="reveal">
  <div style="position:absolute;left:12px;top:16px;bottom:16px;width:2px;background:linear-gradient(to bottom,var(--gold),rgba(232,121,154,0.2));"></div>

  <!-- Month 0 -->
  <div style="position:relative;margin-bottom:28px;">
    <div style="position:absolute;left:-26px;top:6px;width:24px;height:24px;background:var(--gold);border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:10px;font-weight:700;color:var(--navy);">0</div>
    <div style="background:rgba(255,255,255,0.06);border:1px solid rgba(232,121,154,0.2);border-radius:14px;padding:18px 16px;">
      <div style="font-size:11px;color:var(--gold-light);letter-spacing:0.15em;text-transform:uppercase;margin-bottom:6px;">Month 0 · 시작</div>
      <div style="font-size:16px;font-weight:700;color:#fff;margin-bottom:6px;">클래식 멤버십 가입</div>
      <p style="font-size:13px;color:rgba(255,255,255,0.65);line-height:1.65;">월 $100 납입 시작. 정시 납부로 매월 <span style="color:var(--gold-light);font-weight:600;">$200 리워드</span> 적립.</p>
    </div>
  </div>

  <!-- Month 1 -->
  <div style="position:relative;margin-bottom:28px;">
    <div style="position:absolute;left:-26px;top:6px;width:24px;height:24px;background:rgba(232,121,154,0.2);border:2px solid var(--gold);border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:10px;font-weight:700;color:var(--gold-light);">1</div>
    <div style="background:rgba(255,255,255,0.06);border:1px solid rgba(255,255,255,0.08);border-radius:14px;padding:18px 16px;">
      <div style="font-size:11px;color:rgba(255,255,255,0.4);letter-spacing:0.15em;text-transform:uppercase;margin-bottom:6px;">Month 1 · 파트너 활동</div>
      <div style="font-size:16px;font-weight:700;color:#fff;margin-bottom:6px;">파트너 자격 활성화</div>
      <p style="font-size:13px;color:rgba(255,255,255,0.65);line-height:1.65;">$95 파트너 자격 등록. 직추 활동을 시작하며 <span style="color:var(--gold-light);font-weight:600;">팀 빌딩</span> 준비.</p>
    </div>
  </div>

  <!-- Month 3-9 -->
  <div style="position:relative;margin-bottom:28px;">
    <div style="position:absolute;left:-26px;top:6px;width:24px;height:24px;background:rgba(232,121,154,0.2);border:2px solid var(--gold);border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:10px;font-weight:700;color:var(--gold-light);">∞</div>
    <div style="background:rgba(255,255,255,0.06);border:1px solid rgba(255,255,255,0.08);border-radius:14px;padding:18px 16px;">
      <div style="font-size:11px;color:rgba(255,255,255,0.4);letter-spacing:0.15em;text-transform:uppercase;margin-bottom:6px;">Month 3–9 · 무료 멤버십</div>
      <div style="font-size:16px;font-weight:700;color:#fff;margin-bottom:6px;">9개월 연속 무료 멤버십 적립</div>
      <p style="font-size:13px;color:rgba(255,255,255,0.65);line-height:1.65;">직추 팀원의 구독료로 <span style="color:var(--gold-light);font-weight:600;">본인 $100 면제</span>. 리워드는 그대로 쌓이면서 실질 비용 $0.</p>
      <div style="margin-top:12px;padding:10px 12px;background:rgba(232,121,154,0.1);border-radius:8px;font-size:12px;color:var(--gold-light);font-weight:500;">
        💡 9개월 동안 절약한 금액 <strong>$900</strong> · 누적 리워드 <strong>$1,800+</strong>
      </div>
    </div>
  </div>

  <!-- Month 9: First Cruise -->
  <div style="position:relative;margin-bottom:28px;">
    <div style="position:absolute;left:-30px;top:6px;width:32px;height:32px;background:var(--gold);border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:16px;box-shadow:0 0 0 4px rgba(232,121,154,0.25);">🛳️</div>
    <div style="background:linear-gradient(135deg,rgba(232,121,154,0.15),rgba(212,169,74,0.05));border:1px solid rgba(232,121,154,0.4);border-radius:14px;padding:18px 16px;">
      <div style="font-size:11px;color:var(--gold-light);letter-spacing:0.15em;text-transform:uppercase;margin-bottom:6px;">Month 9 · 첫 번째 탑승 🎉</div>
      <div style="font-size:16px;font-weight:700;color:#fff;margin-bottom:6px;">9개월 후 상품 — 올 리워드 예약</div>
      <p style="font-size:13px;color:rgba(255,255,255,0.65);line-height:1.65;">누적 리워드 $1,800으로 크루즈 전액 결제. <span style="color:var(--gold-light);font-weight:600;">카드 결제 0원</span>으로 첫 탑승 완료.</p>
      <div style="display:flex;gap:8px;margin-top:12px;flex-wrap:wrap;">
        <span style="padding:5px 11px;background:rgba(255,255,255,0.1);border-radius:100px;font-size:11px;color:rgba(255,255,255,0.8);">크루즈 $1,800</span>
        <span style="padding:5px 11px;background:rgba(232,121,154,0.2);border-radius:100px;font-size:11px;color:var(--gold-light);font-weight:600;">리워드 100% 커버</span>
        <span style="padding:5px 11px;background:rgba(90,170,126,0.15);border-radius:100px;font-size:11px;color:#7dd4a8;font-weight:600;">추가 결제 $0</span>
      </div>
    </div>
  </div>

  <!-- Month 12: Second Cruise -->
  <div style="position:relative;margin-bottom:28px;">
    <div style="position:absolute;left:-30px;top:6px;width:32px;height:32px;background:var(--gold);border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:16px;box-shadow:0 0 0 4px rgba(232,121,154,0.25);">🚢</div>
    <div style="background:linear-gradient(135deg,rgba(232,121,154,0.15),rgba(212,169,74,0.05));border:1px solid rgba(232,121,154,0.4);border-radius:14px;padding:18px 16px;">
      <div style="font-size:11px;color:var(--gold-light);letter-spacing:0.15em;text-transform:uppercase;margin-bottom:6px;">Month 12 · 두 번째 탑승 🎉</div>
      <div style="font-size:16px;font-weight:700;color:#fff;margin-bottom:6px;">1년 만에 두 번째 크루즈</div>
      <p style="font-size:13px;color:rgba(255,255,255,0.65);line-height:1.65;">계속 쌓인 리워드로 두 번째 크루즈도 예약. 1년 안에 두 번 탑승하는 <span style="color:var(--gold-light);font-weight:600;">이례적인 여정</span> 완성.</p>
    </div>
  </div>

  <!-- SMD -->
  <div style="position:relative;">
    <div style="position:absolute;left:-30px;top:6px;width:32px;height:32px;background:linear-gradient(135deg,var(--gold),var(--gold-deep));border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:15px;box-shadow:0 0 0 4px rgba(232,121,154,0.3);">👑</div>
    <div style="background:rgba(255,255,255,0.08);border:2px solid var(--gold);border-radius:14px;padding:20px 16px;">
      <div style="font-size:11px;color:var(--gold-light);letter-spacing:0.15em;text-transform:uppercase;margin-bottom:6px;">현재 · SMD 달성</div>
      <div style="font-size:16px;font-weight:700;color:#fff;margin-bottom:10px;">Senior MD — 리더십 보너스 수령</div>
      <p style="font-size:13px;color:rgba(255,255,255,0.65);line-height:1.65;margin-bottom:14px;">3명의 MD를 팀으로 두고 SMD로 승격. 매월 안정적인 수입 발생.</p>
      <div style="display:grid;grid-template-columns:1fr 1fr;gap:8px;">
        <div style="background:rgba(232,121,154,0.12);border:1px solid rgba(232,121,154,0.3);border-radius:10px;padding:14px 12px;text-align:center;">
          <div style="font-size:11px;color:rgba(255,255,255,0.5);margin-bottom:4px;">리더십 보너스</div>
          <div style="font-size:24px;font-weight:700;color:var(--gold-light);">$1,000</div>
          <div style="font-size:11px;color:rgba(255,255,255,0.4);">/ 월</div>
        </div>
        <div style="background:rgba(232,121,154,0.12);border:1px solid rgba(232,121,154,0.3);border-radius:10px;padding:14px 12px;text-align:center;">
          <div style="font-size:11px;color:rgba(255,255,255,0.5);margin-bottom:4px;">리커링 보너스</div>
          <div style="font-size:24px;font-weight:700;color:var(--gold-light);">$500</div>
          <div style="font-size:11px;color:rgba(255,255,255,0.4);">/ 월</div>
        </div>
      </div>
      <div style="margin-top:12px;padding:12px 14px;background:rgba(232,121,154,0.15);border-radius:10px;text-align:center;">
        <div style="font-size:12px;color:rgba(255,255,255,0.6);margin-bottom:4px;">월 총 수입</div>
        <div style="font-size:28px;font-weight:700;color:var(--gold-light);">$1,500 <span style="font-size:14px;font-weight:400;">/ 월</span></div>
      </div>
    </div>
  </div>

</div><!-- end timeline -->

<!-- SUMMARY CHIPS -->
<div style="margin-top:32px;display:grid;grid-template-columns:1fr 1fr;gap:10px;" class="reveal">
  <div style="background:rgba(255,255,255,0.06);border:1px solid rgba(255,255,255,0.1);border-radius:12px;padding:16px;text-align:center;">
    <div style="font-size:11px;color:rgba(255,255,255,0.45);margin-bottom:6px;">절약한 멤버십 비용</div>
    <div style="font-size:22px;font-weight:700;color:var(--gold-light);">$900</div>
    <div style="font-size:11px;color:rgba(255,255,255,0.4);">9개월 무료 적립</div>
  </div>
  <div style="background:rgba(255,255,255,0.06);border:1px solid rgba(255,255,255,0.1);border-radius:12px;padding:16px;text-align:center;">
    <div style="font-size:11px;color:rgba(255,255,255,0.45);margin-bottom:6px;">크루즈 탑승 횟수</div>
    <div style="font-size:22px;font-weight:700;color:var(--gold-light);">2회</div>
    <div style="font-size:11px;color:rgba(255,255,255,0.4);">1년 이내</div>
  </div>
  <div style="background:rgba(255,255,255,0.06);border:1px solid rgba(255,255,255,0.1);border-radius:12px;padding:16px;text-align:center;">
    <div style="font-size:11px;color:rgba(255,255,255,0.45);margin-bottom:6px;">팀 규모</div>
    <div style="font-size:22px;font-weight:700;color:var(--gold-light);">3명 MD</div>
    <div style="font-size:11px;color:rgba(255,255,255,0.4);">SMD 달성</div>
  </div>
  <div style="background:rgba(232,121,154,0.12);border:1px solid rgba(232,121,154,0.35);border-radius:12px;padding:16px;text-align:center;">
    <div style="font-size:11px;color:rgba(255,255,255,0.45);margin-bottom:6px;">월 리더십 수입</div>
    <div style="font-size:22px;font-weight:700;color:var(--gold-light);">$1,500</div>
    <div style="font-size:11px;color:rgba(255,255,255,0.4);">리더십 + 리커링</div>
  </div>
</div>

<div style="margin-top:24px;padding:18px 16px;background:rgba(255,255,255,0.05);border-left:3px solid var(--gold);border-radius:0 12px 12px 0;" class="reveal">
  <p style="font-size:14px;color:rgba(255,255,255,0.75);line-height:1.8;font-style:italic;">"멤버십 비용은 한 푼도 내지 않았는데, 크루즈는 두 번 탔고, 매달 월급처럼 들어오는 보너스가 생겼어요."</p>
  <p style="font-size:12px;color:var(--gold-light);margin-top:8px;font-weight:500;">— 나현명, SMD 파트너</p>
</div>
```

  </div>
  </div>
</div><!-- /panel: case -->

<style>
  @media (max-width:360px) {
    #detail-view [style*="grid-template-columns:1fr 1fr"] { grid-template-columns:1fr !important; }
  }
</style>

<!-- ── BOTTOM BACK CTA ── -->

<div class="back-bottom">
  <button class="back-btn-large" onclick="showHome()">
    <span style="font-size:16px;">←</span>
    <span>메인으로 돌아가기</span>
  </button>
</div>

</div><!-- /detail-view -->

<!-- ═══════════════════════════════════════ -->

<!-- HOME-ONLY FOOTER AREA                   -->

<!-- ═══════════════════════════════════════ -->

<div id="home-footer-area">

<!-- SAFETY (global principle, always shown on home) -->

<div class="section reveal">
  <div class="safety-card">
    <div class="sub" style="margin-top:24px;">Non-Negotiable Rules</div>
    <h3>반드시 지켜야 할 원칙</h3>
    <div class="safety-grid">
      <div class="safety-item"><strong>본인</strong>기기</div>
      <div class="safety-item"><strong>본인</strong>카드</div>
      <div class="safety-item"><strong>본인</strong>계정</div>
      <div class="safety-item"><strong>본인</strong>관리</div>
    </div>
    <div class="safety-bottom">
      <strong>스스로 관리하는 것이 원칙입니다.</strong><br>
      가입·결제·계정 조작은 본인이 직접. 리더는 오직 <strong>예약 시 문의</strong>에만 도움을 드립니다.
    </div>
  </div>
</div>

<!-- FOOTER -->

<footer>
  <div class="logo">Cruise Nomad · Bella</div>
  <div class="divider-gold"></div>
  <p class="closing-quote">"종료가 아닌 <span>전략적 전환</span>입니다.<br>내 돈은 여전히 나를 위해 일하고 있어요."</p>
  <p class="small">
    이 가이드는 inCruises 멤버십의 일반적 구조를 기반으로 하며,<br>
    실제 혜택과 규정은 시점에 따라 변동될 수 있습니다.<br>
    가입 전 공식 약관을 반드시 확인하세요.
  </p>
</footer>

</div><!-- /home-footer-area -->

<script>
  // ─────────────────────────────────────────
  // VIEW SWITCHING (HOME ↔ DETAIL)
  // ─────────────────────────────────────────
  const homeView   = document.getElementById('home-view');
  const detailView = document.getElementById('detail-view');
  const homeFooter = document.getElementById('home-footer-area');

  function showSection(id) {
    homeView.classList.add('hidden');
    homeFooter.style.display = 'none';
    detailView.classList.add('active');
    document.querySelectorAll('.detail-section').forEach(s => s.classList.remove('active'));
    const target = document.querySelector('.detail-section[data-id="' + id + '"]');
    if (target) {
      target.classList.add('active');
      // re-trigger reveal animations inside this panel
      target.querySelectorAll('.reveal').forEach(el => {
        el.classList.remove('visible');
        // eslint-disable-next-line no-unused-expressions
        el.offsetHeight;
        el.classList.add('visible');
      });
    }
    window.scrollTo({ top: 0, behavior: 'instant' });
    history.pushState({ section: id }, '', '#' + id);
  }

  function showHome() {
    homeView.classList.remove('hidden');
    homeFooter.style.display = '';
    detailView.classList.remove('active');
    document.querySelectorAll('.detail-section').forEach(s => s.classList.remove('active'));
    window.scrollTo({ top: 0, behavior: 'instant' });
    if (history.state && history.state.section) {
      history.pushState({ section: null }, '', window.location.pathname);
    }
  }

  // Browser back/forward button support
  window.addEventListener('popstate', (e) => {
    const id = e.state && e.state.section;
    if (id) {
      homeView.classList.add('hidden');
      homeFooter.style.display = 'none';
      detailView.classList.add('active');
      document.querySelectorAll('.detail-section').forEach(s => s.classList.remove('active'));
      const target = document.querySelector('.detail-section[data-id="' + id + '"]');
      if (target) target.classList.add('active');
      window.scrollTo({ top: 0, behavior: 'instant' });
    } else {
      homeView.classList.remove('hidden');
      homeFooter.style.display = '';
      detailView.classList.remove('active');
      document.querySelectorAll('.detail-section').forEach(s => s.classList.remove('active'));
    }
  });

  // Initial hash (e.g. landing on #exit directly)
  window.addEventListener('DOMContentLoaded', () => {
    const hash = window.location.hash.replace('#', '');
    if (hash && document.querySelector('.detail-section[data-id="' + hash + '"]')) {
      showSection(hash);
    }
  });

  // ─────────────────────────────────────────
  // REVEAL ANIMATIONS (existing behavior)
  // ─────────────────────────────────────────
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) entry.target.classList.add('visible');
    });
  }, { threshold: 0.08, rootMargin: '0px 0px -40px 0px' });
  document.querySelectorAll('.reveal').forEach(el => observer.observe(el));
</script>

</body>
</html>
