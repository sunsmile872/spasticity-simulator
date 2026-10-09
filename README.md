# 🧠 Pathophysiology of Spasticity & Normal Motor Control
### Interactive Neuro-Biomechanics Simulation & Clinical PM&R Learning Portal

[![GitHub Pages](https://img.shields.io/badge/Live%20Demo-GitHub%20Pages-teal.svg?style=for-the-badge&logo=github)](https://sunsmile872.github.io/spasticity-simulator/)
[![Status](https://img.shields.io/badge/Status-Active%20Clinical%20Suite-emerald.svg?style=for-the-badge)](#)
[![Field](https://img.shields.io/badge/Specialty-Physical%20Medicine%20%26%20Rehabilitation-0284c7.svg?style=for-the-badge)](#)
[![License](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)](#)

> **Live Interactive Preview**: 🔗 **[https://sunsmile872.github.io/spasticity-simulator/](https://sunsmile872.github.io/spasticity-simulator/)**

---

## 📌 Overview

**Pathophysiology of Spasticity** is an interactive, zero-dependency, 60fps web application designed for physiatrists, neurologists, physical therapists, and medical students. It translates complex neuroanatomical pathways, descending spinal tracts, segmental reflex loops, tissue biomechanics, and clinical tone assessments into real-time interactive simulations.

Based on the clinical curriculum from the **Department of Physical Medicine & Rehabilitation** and peer-reviewed reference textbooks (*Braddom's PM&R 7th Ed.*, *DeLisa's PM&R 5th Ed.*), this simulator bridges basic motor physiology with bedside clinical evaluation.

---

## 🚀 Key Interactive Modules

```
┌───────────────────────────────────────────────────────────────────────────────────────────┐
│                      SPASTICITY INTERACTIVE LEARNING & SIMULATION SUITE                   │
├──────────────┬──────────────┬──────────────┬──────────────┬──────────────┬────────────────┤
│ 📚 Theory &  │ ⚡ Normal    │ 🧠 Neural    │ 🦾 Stretch   │ 🔄 Tissue &  │ 💊 Synaptic    │
│ Pathophysio  │ Motor Control│ Tracts & SCI │ Catch Engine │ Vicious Cycle│ Pharmacology   │
└──────────────┴──────────────┴──────────────┴──────────────┴──────────────┴────────────────┘
```

### 1. 📚 Theory & Pathophysiology Foundations
* **Lance (1980) vs. Li et al. (2021)**: Explores classical velocity-dependent stretch reflex hyper-excitability versus modern definitions incorporating intrinsic motoneuronal excitability and structural tissue adaptations.
* **Upper Motor Neuron Syndrome (UMNS)**:
  * *Positive Symptoms (Muscle Overactivity)*: Spasticity, clonus, hyperreflexia, spastic dystonia, associated reactions.
  * *Negative Symptoms (Deficits)*: Paresis, loss of dexterity, fatigability, selective motor control loss.
* **Sheean's 3 Phenotypes**: Afferent-dependent (reflexes), afferent-independent (dystonia), and voluntary movement coordination failures (co-contraction).

### 2. ⚡ Normal Motor Control & Proprioception Lab
* **Henneman’s Size Principle**: Hierarchical recruitment from Type 1 (slow-twitch oxidative, fatigue-resistant) to Type 2A (fast oxidative-glycolytic) and Type 2B (fast glycolytic power units).
* **Proprioceptive Physics**:
  * **Muscle Spindle (Ia/II)** in parallel with extrafusal fibers vs. **Golgi Tendon Organ (Ib)** in series.
  * **$\alpha$-$\gamma$ Coactivation Engine**: Experience why gamma motor drive prevents spindle "slackening" during voluntary contraction, maintaining continuous sensory proprioception.
  * **Autogenic Inhibition ("Ceiling Effect")**: Excessive tension activates Ib afferents to disynaptically silence homonymous alpha motoneurons.
* **5 Segmental Spinal Circuits Switchboard**:
  1. Monosynaptic Ia Stretch Reflex
  2. Ia Reciprocal Inhibition
  3. Ib Autogenic Inhibition
  4. Renshaw Cell Recurrent Inhibition
  5. Presynaptic Inhibition (GABAergic Primary Afferent Depolarization / PAD)

### 3. 🧠 Neural Tracts & Lesions Simulator
* Animated Central Neuroaxis showing real-time action potentials traveling down descending pathways to anterior horn cells.
* **Supraspinal Balance Model**:
  * **Corticospinal & Corticobulbar Tracts (CST)**: Fine fractionated motor control.
  * **Dorsal Reticulospinal Tract (LRST / Medullary RF)**: The primary *inhibitory brake* on stretch reflexes.
  * **Medial Reticulospinal Tract (MRST / Pontine RF) & Lateral Vestibulospinal Tract (LVST)**: Powerful *excitatory antigravity drivers*.
* **Lesion Simulation Modes**:
  * *Healthy Baseline*: Balanced tonic inhibition.
  * *Cortical / Capsular Stroke*: Loss of corticobulbar drive to MLRF causes loss of LRST inhibitory brake $\rightarrow$ unchecked MRST/LVST tone $\rightarrow$ flexor synergy in upper limbs, extensor in lower limbs.
  * *Incomplete SCI*: Dorsolateral column disruption (CST + LRST damaged; MRST/LVST preserved).
  * *Complete SCI*: Acute spinal shock transitioning to chronic maladaptive sprouting and explosive multi-segmental spasms.

### 4. 🦾 Biomechanical Stretch Reflex & Catch Engine
* Real-time biomechanical passive limb stretch across Tardieu velocity profiles:
  * $V_1$: Very slow passive stretch (below reflex threshold).
  * $V_2$: Natural gravity-induced fall rate.
  * $V_3$: Rapid stretch (exceeding dynamic spindle threshold).
* **Velocity-Dependent Catch & Dynamic Range**:
  $$\Delta R = R_2 - R_1$$
  * Catch occurs at angle $R_1$ under $V_3$.
  * Anatomical passive limit reaches $R_2$ under $V_1$.
  * $\Delta R > 20^\circ \implies$ Confirms dynamic neural spasticity (responsive to neuromodulation / BoNT-A).

### 5. 🔄 Tissue Adaptations & The Vicious Cycle
* Microstructural remodeling timeline (0 to 24 months post-injury).
* Dynamic mathematical modeling of sarcomere shortening (up to $-40\%$ loss in series) and extracellular matrix collagen accumulation (up to $+280\%$ fibrosis).
* Visual demonstration of why pharmacologic muscle relaxants cannot overcome non-neural structural contracture.

### 6. 💊 Synaptic Pharmacology Sandbox
* High-magnification molecular canvas animating the presynaptic terminal, synaptic cleft, and Neuromuscular Junction (NMJ).
* Interactive drug mechanisms:
  * **Baclofen**: Presynaptic $\text{GABA}_B$ agonist $\rightarrow$ inhibits voltage-gated $\text{Ca}^{2+}$ entry $\rightarrow$ dampens glutamate exocytosis.
  * **Tizanidine**: Central $\alpha_2$-adrenergic agonist $\rightarrow$ enhances polysynaptic spinal interneuronal inhibition.
  * **Botulinum Toxin A (BoNT-A)**: Heavy/light chain endocytosis $\rightarrow$ cleaves SNAP-25 $\rightarrow$ prevents ACh vesicle fusion at the motor endplate.
  * **Dantrolene**: Direct Ryanodine receptor 1 (RyR1) inhibitor in sarcoplasmic reticulum $\rightarrow$ blocks excitation-contraction coupling.

### 7. 🩺 Virtual Clinical OSCE (MAS & Tardieu Simulator)
* Real-life clinical vignettes (MCA stroke upper limb, Incomplete SCI lower limb, Chronic TBI rigid contracture).
* Real-time manual limb dragging to test resistance, velocity-dependent catch, and clonus.
* Interactive scoring form comparing the **Modified Ashworth Scale (MAS 0 to 4)** and the **Tardieu Quality of Muscle Reaction (X 0 to 4)** with immediate diagnostic feedback.

---

## 🛠️ Technology Stack

* **Frontend**: Vanilla JavaScript (ES6+), HTML5 Canvas 2D, SVG.
* **Styling**: Tailwind CSS (loaded via secure CDN).
* **Architecture**: 100% self-contained single-page application (zero build step, zero dependencies, runs offline directly from file).
* **Frame Rate**: Smooth 60fps animations utilizing `requestAnimationFrame` lifecycle handlers.

---

## 💻 Running Locally

Simply clone the repository and open `index.html` in any web browser:

```bash
git clone https://github.com/sunsmile872/spasticity-simulator.git
cd spasticity-simulator
open index.html
```

Or run a lightweight local HTTP server:

```bash
python3 -m http.server 8080
# Open http://localhost:8080 in your browser
```

---

## 📖 Key Academic References

1. **Lance JW.** *Symposium synopsis.* In: Feldman RG, Young RR, Koella WP, eds. Spasticity: Disordered Motor Control. Chicago: Year Book Medical Publishers; 1980:485–494.
2. **Li S, Chen YT, Francisco GE, Zhou P, Rymer WZ.** *A Unifying Pathophysiological Framework for Post-Stroke Spastic Hypertonia.* Frontiers in Neurology. 2021;12:671693.
3. **Sheean G.** *The pathophysiology of spasticity.* European Journal of Neurology. 2002;9(s1):3–9.
4. **Cioni B, et al.** *Braddom's Physical Medicine and Rehabilitation.* 7th ed. Elsevier; 2025:485–507.
5. **Frontera WR, DeLisa JA.** *DeLisa's Physical Medicine and Rehabilitation: Principles and Practice.* 5th ed. Lippincott Williams & Wilkins; 2010:1319–1337.
6. **Boyd RN, Graham HK.** *Objective measurement of clinical findings in the use of botulinum toxin type A for the management of children with cerebral palsy.* European Journal of Neurology. 1999;6(s4):s23–s35.

---

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.
