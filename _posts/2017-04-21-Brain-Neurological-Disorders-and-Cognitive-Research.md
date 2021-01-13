###Brain Neurological Disorders and Cognitive Research

####Abstract####

In this Medical Imaging Modalities Report for Brain Neurological Disorders, the discussion of pathologies for Drug Abuse, Epilepsy, Dementia, Alzheimer&#39;s disease and Parkinson&#39;s Disease, and their respective imaging modalities will be looked at.

Based on the range of different modalities, research on each chosen disorder and available modalities will be compared, a demonstration of image processing using 3D slicer and Matlab will be carried out, using DICOM volumes and available resources.


# Introduction
The human brain is the most complex organ in the body – regulating basic functions, responding and shaping the thoughts, emotions and behaviours[1]. Neurological disorders are diseases of the brain, spine and the nerves that connect them. There are more than 600 diseases of the nervous system, such as Epilepsy, Parkinson's disease, and Dementia.

This report will include:

- the specific characteristics of pathologies related to these disorders and how current medical imaging modalities can help to correctly diagnose these disorders
- why each individual imaging modalities are used for evaluation of the conditions along with a brief description of the principle &amp; theory behind each modality
- the advantages and disadvantages of the modality when applied to a specific problem along with various factors such as the duration of conducting the imaging examinations
- different methods that can be used to process images acquired, for instance through enhancement, registration or 3D reconstruction

1.
# Problem Domain

## 2.1 Physiology

![](RackMultipart20210113-4-1id6ssm_html_b57900ab0e96dc83.jpg) [CITATION Bra171 \l 2057]

_Figure 1 Brain Physiology_

The brain is known to be the most complex organ in the human body and is usually referred to as the body&#39;s &#39;control centre&#39;, as it is responsible for a variety of different processes such as movement, speech, emotions and consciousness. On average the human brain makes up 2% of the body&#39;s overall weight, weighing 1.4kg. It is often described as a &quot;spongy&quot; organ which is comprised of nerve and support tissues and typically made up of three main parts; cerebrum, cerebellum and brain stem. Owing to the brains high fragility it is made up of three major lines of defence. The first line comprises of the hair and skull, preventing excessive heat loss and protecting the brain from any external impact that may occur. The second line of defence is the meninges, this is a set of thin membranes which serve to protect the integrity of the brain and its physical structure, it also provides shock absorption Lastly the cerebrospinal fluid makes up the third line of defence. This is a fluid found in the ventricles of the brain; it acts as a cushion and provides a transportation path for material. The lower part of the brain is connected to the spinal cord and the combination of these two regions forms the central nervous system.

## 2.2 Brain neurological Pathologies

### 2.21 Drug Abuse

Drug abuse, Cocaine for example, can have a variety of effects on the human brain, especially in vasoconstriction, the lesions may cause acute haemorrhages and infraction in the brain[CITATION Pat17 \l 2057].

![](RackMultipart20210113-4-1id6ssm_html_46c51612ed0f5999.png)

[CITATION Sta17 \l 2057]

_Figure 2 Low level of Dopamine in Drug Abusers Brain Scan_

Dopamine is a neurotransmitter that regulates emotions, movements and feelings, in healthy human brain, there is normal level of dopamine, that rewards natural behaviours [CITATION Sta17 \l 2057]. Drug abusers&#39; brains show low dopamine level, due to long term drug abuse, subjects need large amount of dopamine, two to 10 times, that natural rewards such as food does, compare to healthy subjects [CITATION Sta17 \l 2057].

### 2.22 Epilepsy

![](RackMultipart20210113-4-1id6ssm_html_3be7df2fb55f1a7b.jpg)

_Figure 3 Epilepsy Brain shows higher metabolism rate_

Epilepsy is a condition that affects the nervous system and causes repeated seizures. Seizures are caused by disturbances in the electrical activity of the brain: abnormal burns of neurons firing off electrical impulses which results in a strange behaviour of the brain and body [CITATION Hea17 \l 2057]. In 80% of Epilepsy cases, there is increases in blood flow and glucose metabolism.[CITATION Bra17 \l 2057]

### 2.23 Dementia

Dementia is a chronic disorder associated with a constant deterioration of the brain and its abilities including memory loss, thinking speed, judgement understanding as well as language [CITATION NHS17 \l 2057].

Dementia is an umbrella term, that is used to describe a wide range of symptoms that are usually associated with an ongoing decline of the brain and its abilities. It is typically accompanied by:

- memory loss
- mental agility
- language difficulty
- poor judgement
- reduced thinking speed
- Difficulty understanding

### 2.24 Alzheimer&#39;s Disease

The typical neuropathological signs of Alzheimer&#39;s are amyloid plaques and neurofibrillary tangles [CITATION Alz17 \l 2057]. Patients with Alzheimer&#39;s typically experience brain inflammation.

Alzheimer disease is the most common form of dementia and accounts for 60-80% of dementia cases. It is a progressive irreversible disease of the brain, which has a great effect on memory eventually leading to a loss of social as well as intellectual skills. Alzheimer&#39;s disease occurs through the degeneration of brain cells causing them to eventually die. An Alzheimer brain is usually identified by shrivelling up of the cortex, which disrupts locations that play a role in thinking and remembering, shrinkage in the hippocampus; this is a section of the cortex in charge of forming new memories as well as enlargement of the ventricles.

![](RackMultipart20210113-4-1id6ssm_html_850609f7e509cb4.jpg) [CITATION Car17 \l 2057]

_Figure 4 Healthy Brain vs. Advanced Alzheimer&#39;s Brain_

Alzheimer&#39;s Brain characteristics:

- The cortex shrinks, area affected involves in thinking, planning and remembering
 Severe shrinkage in the hippocampus, the part that is crucial in forming new memories
- Ventricles grow larger, which is caused by fluids[CITATION alz17 \l 2057]

![](RackMultipart20210113-4-1id6ssm_html_fef2e3e5337cd92.png)

_Figure 5 (a) CT scan of normal brain; (b) CT scan of early stage AD; (c) CT scan of late stage AD_

Figure 5 (a) shows a CT scan produced from an individual with a healthy brain as opposed to the image on the far right which shows the brain of an Alzheimer&#39;s patient. By analysing the overall size of the brain, it can be seen that there is a slight reduction in size of the patient effected by this disease, Furthermore there is a difference in indentations, whereby figure 1 shows very few narrow ones whereas (b) and (c) show several, that are a lot wider. the fluid filled ventricles, are also a lot more larger in (c) than they are in (a). These features enable comparisons to be made and simplify the diagnosis procedure.

### 2.25 Parkinson&#39;s Disease (PD)

PD is described as a gradual neurological condition. Those who suffer from this disease lack a chemical substance known as dopamine, this deficiency arises from dead nerve cells in the brain. The main symptoms of this disorder include tremor, rigidity and slowness of movement [CITATION Par17 \l 2057]. Diagnosis of PD can be done based on the volume and shape degeneration of Substantia nigra [CITATION Gio16 \l 2057].

![](RackMultipart20210113-4-1id6ssm_html_71b9609abe54b8a7.jpg) [CITATION Med17 \l 2057]

_Figure 6 Substantia nigra in PD_

![](RackMultipart20210113-4-1id6ssm_html_cb2025012aeddd7.jpg) [CITATION Dem17 \l 2057]

_Figure 7 PET scan of normal brain and A&#39;s brain_

# Medical Imaging Modalities

  1.
## Computed Tomography (CT)

![](RackMultipart20210113-4-1id6ssm_html_b783bccf5c8bec2.jpg)

![](RackMultipart20210113-4-1id6ssm_html_fe1de149712019ab.gif)

_Figure 2 A Typical CT Scanner_

CT is a modality that uses a series of x-rays then process these images together into a computer. With the high resolution of x-rays, CT is very useful for determining the structure inside the body [CITATION Can17 \l 2057]. CT scan is used for pre-surgery planning and injuries following trauma. A cranial CT scan can diagnose abnormal blood vessels, aneurysms, bone infection, brain damage, brain swelling, brain tumours, or a stroke, as 3D images can be produced with CT. However, due to CT does not produce high resolution of soft tissue, this modality doesn&#39;t produce good quality of brain scans compare to other modalities. At the same time, high radiation is required [CITATION FDA17 \l 2057].

## 3.2 Magnetic Resonance Imaging (MRI)

MRI is the most common tool for brain imaging due to the absence of ionising radiation, which gives a better tissue contrast. MRI provides high quality images of the brain with higher resolution compared to CT, using a magnetic field created by a large magnet rotating around the head. MRI measures the water and fat content, hydrogen nuclei in the brain are altered, the protons in free state can be aligned when spinning in line with magnetic field [CITATION eye17 \l 2057]. the changes are recorded, and images are produced.

![](RackMultipart20210113-4-1id6ssm_html_87cb8c4aa37bc022.jpg) ![](RackMultipart20210113-4-1id6ssm_html_52a3859864d0c316.png) ![](RackMultipart20210113-4-1id6ssm_html_37b6a7b1bc0ae2ee.jpg)

![](RackMultipart20210113-4-1id6ssm_html_aee841a3fc14601a.gif)

_Figure 6 T1-weighted MRI, T2-weighted MRI, FMRI, DW MRI brain scan (from left to right)_

With the high sensitivity for brain water content, MRI is commonly used for detecting brain abnormalities.

![](RackMultipart20210113-4-1id6ssm_html_df8f65598068c17d.png)

_Figure 10 (a) MRI scan of AD; (b) MRI scan of normal brain_

Figure above shows a severe shrinkage of the hippocampus, thus the brain on the left hand side represent a patient suffering from Alzhiemer disease as opposed to the image on the right hand side which shows the a healthy brain with normal sized hippocampus.

| T1 MRI | T2 MRI | FMRI | DW - MRI |
| --- | --- | --- | --- |
| T1 weighted imaging is useful for assessing structures that are high in fat or structures that are near water filled structures, such as joints. | The differences of T1 and T2 can be differentiated by the brightness of the Cerebrospinal fluid, it appears darker on T1 – weighted imaging, and bright on T2 – weighted imaging [CITATION Mag17 \l 2057]. | Non-invasive imaging technique that provides images of neural activities, brain functions and metabolism altered by pathologies [CITATION ama08 \l 2057]. It can be used to visualise changes in oxygenation and blood flow associated with brain activities. | For pathological conditions, the diffusion of water molecules is altered and the amount of diffusion changes in the affect area of the brain. Image contrast in DW –MRI represents the difference in rate of diffusion between tissues [CITATION Gee15 \l 2057]. |

## 3.5 Position Emission Tomography (PET)

Quantify biochemical and pharmacological processes, including glucose metabolism, drug distribution and kinetics.

![](RackMultipart20210113-4-1id6ssm_html_5be0f8fa91b44df1.png)

_Figure 11 PET scan of three brains in the three different states_

Figure above shows the brain in three different conditions. The image on the left hand side, labelled &quot;normal brain&quot; shows an even distribution of colour with majority of the scan covered by a bright red. This indicates that there is higher level of activity i.e a greater number of neutrons firing in these areas. By analysing the brain effected by mild cognitive impairment it can be seen that less of the brain is covered in the red colour and hence it is associated with less brain activity. The image on the far right portrays an Alzheimer brain, whereby majority of the brain is covered in black leaving only the outer regions of the brain in colour. This suggests degeneration of brain cells and hence very low brain activity which is usually associated with Alzheimer&#39;s. This is a powerful imaging technique used in differentiating Alzhiemers disease from other forms of dementia, as good comparisons can be made providing sufficient information about the severity of dementia.

3.6 Single photon emission computed tomography (SPECT)

SPECT Measures receptor ligand interaction, physiological function, biochemical and pharmacological processes.

Similarly to PET scan, SPECT imaging technique provides information about brain activity. However when diagnosing for Alzhiemer, PET is usually found to be the preferred imaging technique as it has a higher resolution than that of SPECT and uses vibrant colours making it a lot easier to distinguish between areas of higher brain activity as opposed to low. Thresholds in MATLAB can easily be set to alert the user of different activity levels that are occurring in different regions of the brain.

![](RackMultipart20210113-4-1id6ssm_html_5634689d0ce8dcdd.jpg) ![](RackMultipart20210113-4-1id6ssm_html_f43238188fd3b3f5.png)

_Figure 12 Epilepsy Brain in SPECT[CITATION Und17 \l 2057] Figure 13 Healthy Brain in SPECT[CITATION Und17 \l 2057]_

## 3.7 Comparison of Medical Imaging Modalities

| **Modalities** | **Advantages** | **Disadvantages** |
| --- | --- | --- |
| **MRI** |
 |
- sensitive to motion artefact
- requires longer acquisition time for multiple images
 |
| **fMRI** |
- No radioactive tracers needed
- Good spatial resolution: 3-6mm
- Temporal resolution fast enough o distinguish between trials
 |
- Temporal resolution is not fast enough to distinguish between the activation patterns associated with different stages of stimulus processing
 |
| **DW-MRI** |
 |
 |
| **PET** |
- Good spatial resolution: 4mm
 |
- No temporal resolution
- Invasive (non-invasive alternative: fMRI)
 |
| **SPECT** |
 |
 |
| **CT** |
 |
 |

1.
# Medical Imaging Processing Examples

For this project, 3D slicer will be used as an imaging processing and 3D visualisation tool with the aid of DICOM volumes to visualise and analyse the physiological changes of the organ and the specific condition.

1. Multiplane information displayed in 3D slicer

![](RackMultipart20210113-4-1id6ssm_html_9cb16a257e503335.png)

_Figure 14 MRI MIP with adjusted contrast in 3D slicer_

1. Contrast Adjustments

![](RackMultipart20210113-4-1id6ssm_html_f633a5a7c28aeafc.png) ![](RackMultipart20210113-4-1id6ssm_html_100d0e2e829b6be7.png)

_Figure 15 MRI scan without adjusting contrast(left), and with adjusted contrast (right) in 3D slicer_

![](RackMultipart20210113-4-1id6ssm_html_7593c711e6165c5d.png) ![](RackMultipart20210113-4-1id6ssm_html_c9004aa878523788.png)

_Figure 16 FMRI without adjusting contrast (left), and with adjusted contrast (right) in 3D slicer_

1. Pseudo colouring

![](RackMultipart20210113-4-1id6ssm_html_33400b1d49ec2874.png) ![](RackMultipart20210113-4-1id6ssm_html_753708158500c976.png) ![](RackMultipart20210113-4-1id6ssm_html_4ebc5005e61c26ca.png)

_Figure 17 Pseudo colouring using FMRI colour map, blue colour map and rainbow colour map, using Volumes in 3D slicer_

1. Fusion &amp; registration

![](RackMultipart20210113-4-1id6ssm_html_6ccb7cb9bdb6b90f.png) ![](RackMultipart20210113-4-1id6ssm_html_f2f64f569aeed4cd.png)

_Figure 18 MRI &amp; FMRI Fusion, FMRI with 40% transparency and70% transparency_

1. Volume rendering

![](RackMultipart20210113-4-1id6ssm_html_de4ec6e3d96e0a6c.png) ![](RackMultipart20210113-4-1id6ssm_html_9ef5110bd89747d9.png)

_Figure 19 PET scan with Maximum intensity projection_

1. Segmentation

![](RackMultipart20210113-4-1id6ssm_html_f33bde885a5efc05.png)

_Figure 20 Segmenting the area that&#39;s affected by stroke_

![](RackMultipart20210113-4-1id6ssm_html_eb201ed3f5c2005c.png)

_Figure 21 3D modelling of the area affected_

1.
# Conclusion

In conclusion, there is not one modality discussed in the report can be perfect and fits all the needs and benefit that a clinician need to properly diagnose and examine a patient. Each modality has its advantages and disadvantages, they bring features that highlight anatomical characteristics.

1.
# References

| [1] | National Institude on Drug Abuse, &quot;Drugs and the Brain,&quot; [Online]. Available: https://www.drugabuse.gov/related-topics/drugs-brain. [Accessed 1 February 2017]. |
| --- | --- |
| [2] | &quot;Pathology of Drug Abuse,&quot; [Online]. Available: http://library.med.utah.edu/WebPath/TUTORIAL/DRUG/DRUG.html . [Accessed 1 February 2017]. |
| [3] | S. Eidson, &quot;Augusta&#39;s Drug Habit,&quot; [Online]. Available: http://metrospirit.com/brain-drugs/. [Accessed 8 April 2017]. |
| [4] | HealthUnlocked, &quot;Epilepsy,&quot; [Online]. Available: http://www.nhs.uk/Conditions/Epilepsy/Pages/Introduction.aspx. [Accessed 1 February 2017]. |
| [5] | &quot;Brain Imaging,&quot; [Online]. Available: http://www.chm.bris.ac.uk/webprojects2002/wrigglesworth/brainimaging.htm. [Accessed 9 April 2017]. |
| [6] | NHS, &quot;About Dementia,&quot; [Online]. Available: http://www.nhs.uk/Conditions/dementia-guide/Pages/about-dementia.aspx. [Accessed 1 February 2017]. |
| [7] | Alzheimer&#39;s Association , &quot;Alzheimer&#39;s Disease,&quot; [Online]. Available: https://www.alz.org/professionals\_and\_researchers\_13519.asp. [Accessed 1 February 2017]. |
| [8] | C. S. Mcfadden, &quot;Can Concussions cause Alzheimer&#39;s,&quot; [Online]. Available: https://sites.psu.edu/siowfa15/2015/09/08/can-concussions-cause-alzheimers. [Accessed 2 April 2017]. |
| [9] | alz.org, &quot;More Brain Changes,&quot; [Online]. Available: ] http://www.alz.org/braintour/healthy\_vs\_alzheimers.asp . [Accessed 4 April 2017]. |
| [10] | Parkinson&#39;s UK, &quot;What&#39;s Parkinson&#39;s,&quot; [Online]. Available: https://www.parkinsons.org.uk/content/what-parkinsons. [Accessed 1 February 2017]. |
| [11] | S. Z. R. D. B. D. G. D. M. R. S. G. L. Giovanni Rizzo, &quot;Brain MR Contribution to the Differential Diagnosis of Parkinsonian Syndromes: An Update,&quot; _Parkinson&#39;s Disease,_ vol. 2016, p. 16, 2016. |
| [12] | MedlinePlus, &quot;Substantia nigra and Parkinson disease,&quot; [Online]. Available: https://medlineplus.gov/ency/imagepages/19515.htm . [Accessed 30 March 217]. |
| [13] | C. R. UK, &quot;CT scan,&quot; [Online]. Available: http://www.cancerresearchuk.org/about-cancer/cancer-in-general/tests/ct-scan. [Accessed 3 April 2017]. |
| [14] | FDA, &quot;What are the Radiation Risks from CT?,&quot; [Online]. Available: https://www.fda.gov/radiation-emittingproducts/radiationemittingproductsandprocedures/medicalimaging/medicalx-rays/ucm115329.htm. [Accessed 9 April 2017]. |
| [15] | C. eyes-Aldasoro, &quot;MRI Medical Imaging Lecture,&quot; [Online]. [Accessed 9 April 2017]. |
| [16] | M. Edward Claro Mader, &quot;What is the difference between T1 and T2 imaging in MRI?,&quot; [Online]. Available: https://www.quora.com/What-is-the-difference-between-T1-and-T2-imaging-in-MRI. [Accessed 10 April 2017]. |
| [17] | M. F. John R. Hesselink, &quot;BASIC PRINCIPLES OF MR IMAGING,&quot; [Online]. Available: spinwarp.ucsd.edu/neuroweb/Text/br-100.htm. [Accessed 10 April 2017]. |
| [18] | &quot;Magnetic Resonance Imaging (MRI) of the Brain and Spine: Basics,&quot; [Online]. Available: http://casemed.case.edu/clerkships/neurology/Web%20Neurorad/MRI%20Basics.htm [Accessed 12 April 2017]. |
| [19] | P. a. R. B. P. amantha J. Holdsworth, &quot;Magnetic Resonance Imaging Techniques: fMRI, DWI, and PWI,&quot; _Semin Neurol.,_ vol. 28, no. 4, September w2008. |
| [20] | C. H. T. C. X. C. L. P. Geetha Soujanya Chilla, &quot;Diffusion weighted magnetic resonance imaging and its recent trend—a survey,&quot; _Quant Imaging Med Surg.,_ vol. 5, no. 3, pp. 407-422, June 2015. |