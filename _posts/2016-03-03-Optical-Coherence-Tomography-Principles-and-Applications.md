---
layout: post
title: Optical Coherence Tomography: Principles and Applications
date: 2016-03-03 09:33:56
categories: Thoughts
summary: Optical coherence tomography (OCT) is a non-invasive, high resolution, medical imaging technique has been widely adopted in the biomedical field, that obtains topographical images of human organs, based the coherence of light, from optical tissue interfaces, and uses the principle of optical interferometry 
tags: optics, science, stem, 

---

### 1. Introduction 

### 1.1 Brief history of Optical Coherence Tomography

Optical coherence tomography (OCT) is a non-invasive, high resolution, medical imaging technique has been widely adopted in the biomedical field, that obtains topographical images of human organs, based the coherence of light, from optical tissue interfaces, and uses the principle of optical interferometry [1]. 

During 1990-1991, two Japanese researchers, Naohiro Tanno of Yamagata University, Japan, and James G. Fujimoto, Massachusetts Institute of Technology (MIT) in the United States, independently developed the methods of OCT and submitted patent applications [2]. First performed in vitro observation of the retina and coronary artery were completed in 1991 [3].

OCT imaging has a number of attractive features that have already been used in a range of applications, based on the image resolution that OCT is able to achieve, of 1 to 15 µm, “one or two orders of magnitude higher than conventional ultrasound” [4], at the same time, imaging is possible to be performed both in situ and in real time, which enables guidance of excisional biopsy or interventional procedures.

### 1.2 Optical Coherence Tomography Compared to Ultrasound & MRI

Ultrasound has been a well-established medical imaging technique for the past few decades, it is used in a broad range of applications as it’s high-frequency characteristic allows sound wave to travel into the tissue and backscattered, by forming medical diagnostic images at different resolutions, which is determined by the frequencies of the sound wave. OCT is very similar to ultrasound imaging except in OCT, light beams are used instead of sound waves. The fundamental principal difference between ultrasound and optical imaging is the velocity of transmitted light is a million times faster than the velocity of a sound wave. In OCT imaging, the lights are used, as it is very sensitive to differences in terms of refractive index of optical scattering [4], this characteristic is beneficial in term of the distance within the tissue is measured and determined by the echo time delay of back scattered light waves, which requires fast time resolution. Although OCT has less penetration depth than ultrasound but it has the ability to provide micron level resolution [4]. OCT has great advantage over other medical imaging system, for instance, magnetic resonance imaging (MRI), by having better imaging resolution and execution. As a 3D imaging technology, OCT currently fills the gap in imaging depth and resolution between ultrasound and confocal microscopy, Fig.1 [5]. 

![](/images/oct/p1.png)

Figure 1

### 1.3 Interferometry

Interferometry is the technique that two (or more waves) with the same frequency that have the same phase will add each other to form a wave with larger amplitude, while two waves have opposite phase will subtract one from the other, in order to detect differences, and extract information from them [6]. This phenomenon is known as interference. In OCT, this difference is measured by a photo-detector; the distance travel by light beam is determined by varying the distance to the reference mirror [7]. The simplified diagram of a Michelson interferometer is illustrated in Fig. 2 [8].

OCT technique accomplishes this by shining an optical beam of near-infrared light from a low-coherent, but high spatially coherent light source, i.e. a diode, onto a beam splitter, thus the beam is divided into a reference beam and a sample, Ls and Lr are the corresponding optical path lengths of sample and reference, respectively. Thus, back-scattered light is captured on the photo-detector. A light wave that has two joint parts if the wave has interference is considered as a coherence light wave. [9].

![](/images/oct/p2.png)

Figure 2

### 1.4 The principle of OCT: From Interferometry to Optical Coherence Tomography

![](/images/oct/p3.png)

Figure 3 [10]

The backscattering intensity is measured as a function of depth. In figure 2, Cross-sectional images are therefore generated, by scanning a beam of light across the sample tissue; a false colour image then can be displayed [14]. The basis of OCT, Low Coherence Interferometry (LCI), is achieved by using a light source that has a short coherence length of the order of tens of microns, which is illustrated in Fig.2 and Fig.3, LCI is performed by the comparison of a known reference path-length and time delay with echo time delay and the intensity of backscattered light [4]. 

![](/images/oct/p4.png)

Figure 4[9] Schematic of low coherence interferometry
This interference of the beams is called ‘coherence gating’; as a result, high-resolution of the origin of the interfering beams can be accurately localised, as well as imaging of complex scattering samples [9]. Penetration depth of OCT is determined by wavelength and source power [11].

Although interferometry is the basis of OCT, it also has the limitation of only being one-dimensional. Two-dimensional cross sectional OCT images (lateral coordinate, axial coordinate) of target tissue are formed by placing a series of LCI scans measured at different transverse positions together, the data later constructed is a two-dimensional sequence that represents the cross sectional slice of the target tissue. At the same time, stacking the two-dimensional images at different transverse positions can be used to improve the resolution and contrast of the three-dimensional imagery [12]. The general strategy is removing the unfocused light based on analysis of adjacent images within the stack [14].

### 2. Principles of operation of Optical Coherence Tomography

There are two major methods used in OCT, Time-Domain OCT (TD-OCT) and Frequency-Domain OCT (FD-OCT), latter is also referred as Fourier-Domain OCT or Spectral-Domain OCT. The first OCT was performed in 1991 for cross-sectional imaging of retina, and the first in vivo OCT was performed two years later in 1993. During the past years, OCT techniques have improved and developed rapidly.  FD-OCT is very popular among professionals as it eliminates the need of depth scanning. However, each method has its own advantages and deficiencies [15].

### 2.1 Time Domain OCT (TD-OCT)

During the period of 1991 and 2003, most of the OCT systems demonstrated are based on the time-domain system. The method name indicated that the measurement is performed in time, usually by mechanical means; the range of depth is sampled one point at a time by moving the reference mirror to produce scans. The measurement is by applying the same imaging technique in interferometry. The axial optical sectioning ability of the technique is inversely proportional to its optical bandwidth. As an early version of this technology, this procedure is relatively slow, mechanical measurements limit the amount of data can be captured; also the imaging quality is compromised. TD-OCT is able to capture approximately 400 axial scans, per second [16]. The principle of TD-OCT operation is based on partial coherence interferometry, where the variations in the interference is sensed by the photo detector, and the optical path difference (OPD) is defined as:
 
OPD = |object path length – reference path length| [17]. 

At the same time, the variation is being detected as long as the optical path difference is less than the coherence length.

### 2.2 Frequency Domain OCT (FD-OCT)

Frequency Domain- also referred as Spectral (or Fourier Domain), OCT is a more advanced technique compare to Time-Domain OCT, as TD-OCT has the limitation of the acquisition rate – a reference mirror is moved at each depth position for scanning in the pixel [2]. At the same time, the source of noise involved affects the phase stability in measurements. FD-OCT offers a much faster solution to acquiring depth-resolved signals. This advancement is achieved and limitation in TD-OCT is overcome by having the reference mirror position as fixed, and measuring interferometry data as a function of optical wavelength and time, not only just time alone, which is performed in TD-OCT. FD-OCT enables high sensitivity and high speed imaging at the same time. FD-OCT applies the technique that analysing frequencies of backscattered light from sample tissue. 

Within FD-OCT, there are two methods, Spectral-Domain OCT (SD-OCT) and Swept-Source OCT (SS-OCT) respectively [5]. 

### 2.21 Spectral-Domain OCT

SD-OCT has the same principle as LCI, a low coherence light source and a spectrometer is used, frequencies are analysed on a CCD array. This method allows a high image processing speed with the advantage of giving a high signal-to-noise ratio [18].

### 2.22 Swept-Source OCT
With SS-OCT, a continuous and swept light source is used, frequency components are analysed with a single photo detector. At different wavelength, depth information is given. By producing lateral scanning of laser beam, cross section images are constructed. In SS-OCT, Fourier transform (FT) is followed. The ideal state that can be achieved when the sweep is linear in k space, k= 2π/λ. However, the ideal state is not always achievable, therefore, a non-linear sweep curve is produced when the actual sweeping take place. Based on this, most SS-OCT systems have a built-in system with either another set of interferometer and detector, or processing functionality after the signals are produced, in order to mitigate the blurred resolution signal that is produced with basic FT mechanism, which also involves power decays [5]. The first demonstration of SS-OCT was performed in 1997, however it was limited by available laser technologies existed [19]. 


### 2.3 Comparison of TD-OCT and FD-OCT


![](/images/oct/p5.png)

Figure 5[2]

The difference between TD-OCT and FD-OCT is significant.  A comparison of TD-OCT and FD-OCT system is shown in Fig.5. The setting up is majorly similar, however in TD-OCT a moving reference mirror is used whereas in FD-OCT this feature is fixed. In addition to that, in TD-OCT, reflections at different depths generate interference signals at different times, but in FD-OCT system, reflections at different frequencies are generated [2].

### 2.4 important parameters of OCT

### 2.41 Depth resolution

Depth resolution in both TD-OCT and FD-OCT is determined by the bandwidth of the source of both methods; there is a directly proportional relationship between the bandwidth and the depth resolution [15].

### 2.42 Penetration depth

As mentioned in section 1.4, Penetration depth of OCT is determined by wavelength and source power [11]. OCT technique requires a stable phase relationship between the two waves that will interfere. During the procedure of interference operation, due to the scattering and possible absorption, there are less photons being back scattered therefore detected, as a result, the reduction in depth is predicted. Thus, the penetration depth is determined by where the object wave achieves interference with its sufficient strength [15].

### 2.43 Amplification effect

During the standard procedure of OCT, a reference beam of light is used thus a reference path length is determined, however, the signal of a reference can act as a noise that interferes the signal that comes from the object, therefore a larger wave is produced. This effect allows greater penetration depth with the same wavelength band [15].

### 2.5 Doppler OCT
Doppler OCT (D-OCT) is one of the most important extension functions of OCT [21]. The principle of Doppler is that the variation of received frequency of a moving source to differ from the sent frequency between a source and a stationary observer.
Therefore, in D-OCT, the frequency of light scattered from a moving object is shifted, D-OCT can be used to monitor the flows of biologic fluids [15]. This method is mainly used in measuring the flow velocity in the blood vessel, where the resolution is determined by the coherence length of the source [15].

In a D-OCT system, the Doppler frequency detected is determined by the resolvable phase difference, the resolvable phase difference is in relation with phase stability of the system, and is predominately affected by facts as mechanical stability. Where the resolvable phase difference is usually measured based on the phase difference of a static mirror [15]. D-OCT imaging obtains high-resolution tomography scans of tissue structure and blood flow simultaneously [22]. At the same time, D-OCT can also be used to detect the deformation of the tissue in embryonic heart [15].

### 3. Clinical applications of Optical Coherence Tomography

Optical coherence tomography technique and clinical applications have advance significantly in the past ten years. As an established medical imaging technique, OCT is widely used in many medical fields  - Cardiology, oncology, and ophthalmology. There are many features of OCT allow it to become one of the most popular and powerful imaging technology.
•	Axial resolutions of 1 – 10 μm can be achieved, higher than the ultrasound.
•	Imaging can be performed in situ, which allows better specimen area coverage and less error obtained. 
•	Real-time imaging, therefore real-time diagnosis is given without further delay.
•	The OCT system is compact, therefore portable, which is easy to gain access to as a medical device. 

### 3.1 Cardiology

As an analog of intravascular ultrasound, optical coherence tomography (OCT) can be used to examine coronary arteries and has higher resolution than intravascular ultrasound. The first use of OCT in coronary artery observations was in 1991, as a non-invasive imaging technique, OCT is widely accepted and has maintained a strong presence in the field, for identifying vulnerable plaques. Recent development of computational techniques including algorithms for tissue characterization with £D and 4D Doppler OCT advance the imaging process in order to achieve a more objective interpretation of results. The involvement of the OCT technique not only improved our understanding of vascular morphology and patho-physiology, but also in long-term vascular assessments [20]. 

### 3.2 Ophthalmology

As a non-contact, non-invasive method, OCT technique is used by projecting a near-infrared (NIR) light beam with the bandwidth of 820nm onto the retina [5]. OCT allows both quantitative and qualitative analysis of the retina. By qualitative analysis, the description by location, a description of form and structure, identification of anomalous structures, and observation of the reflective qualities of the retina can be determined [17]. In terms of quantitative analysis, the measurement of the retina, nerve fiber layer thickness and volume can be measured specifically.

### 3.3 Other applications

There are many other biomedical areas such as endoscopic imaging of gastro-intestinal, where the application of OCT imaging is currently an active field of research. 

### 3.4 Limitations

### 3.41 Resolution limits
Although OCT has been largely used in biomedical engineering field, there is still difficulty in accurately localising the cross-sectional image and correct them with a conventional en face view of the fundus in the field of ophthalmology. 

### 3.42 Sensitivity limits

The main limitation of OCT is the poor penetration power and inability to measure “plaque burden where thickness exceeds 1.5 mm”. This is due to the fact that a limit on the smallest signals isn’t well established by the OCT detection, even with the amplification effect, OCT could penetrate more than 1mm in skin but can hardly go further than 1.5mm. 

### 3.43 Doppler shifted

In addition to the sensitivity and resolution limits, when the light is backscattered, or back-reflected from a moving source, the backscattered or back-reflected light with be Doppler shifted, therefore a shift of the frequency will occur.

### 3.5 Recent developments & advancements

Although the principle of FD-OCT was introduced and known since 1995, due to the lack of advancement of the technology, the first in vivo retinal experiment using FD-OCT was performed in 2002, since then FD-OCT has been rapidly developed [19]. The first 19kHz A-scan was demonstrated in 2003, later with 115kHz was achieved in 2005. Later on, with the advanced laser technology, high speed SS-OCT was developed, approximately 100 times faster than the early on TD-OCT technology, imaging speed of 370kHz is reached. The advancement in imaging speed greatly helped medical professionals with 3D OCT of highly scattered tissue imaging, therefore has an important impact on diagnosis [19].

With the rapid development of technology, especially medical imaging technology, OCT is expected evolve in terms of resolution and acquisition speed are to be developed, and improved. 
