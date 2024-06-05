cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  lipid-lowering-medication-rosuvastatin---primary:
    run: lipid-lowering-medication-rosuvastatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  lipid-lowering-medication-1000mg---primary:
    run: lipid-lowering-medication-1000mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-rosuvastatin---primary/output
  lipid-lowering-medication-micro---primary:
    run: lipid-lowering-medication-micro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-1000mg---primary/output
  lipid-lowering-medication-omega---primary:
    run: lipid-lowering-medication-omega---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-micro---primary/output
  lipid-lowering-medication-colestipol---primary:
    run: lipid-lowering-medication-colestipol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-omega---primary/output
  chewable-lipid-lowering-medication---primary:
    run: chewable-lipid-lowering-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-colestipol---primary/output
  lipid-lowering-medication-180mg---primary:
    run: lipid-lowering-medication-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: chewable-lipid-lowering-medication---primary/output
  lipid-lowering-medication-ranzolont---primary:
    run: lipid-lowering-medication-ranzolont---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-180mg---primary/output
  lipid-lowering-medication-ezetimibe---primary:
    run: lipid-lowering-medication-ezetimibe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-ranzolont---primary/output
  lipid-lowering-medication-200microgram---primary:
    run: lipid-lowering-medication-200microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-ezetimibe---primary/output
  lipid-lowering-medication-lomitapide---primary:
    run: lipid-lowering-medication-lomitapide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-200microgram---primary/output
  lipid-lowering-medication-140mg---primary:
    run: lipid-lowering-medication-140mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-lomitapide---primary/output
  inegy-lipid-lowering-medication---primary:
    run: inegy-lipid-lowering-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-140mg---primary/output
  lipid-lowering-medication-lescol---primary:
    run: lipid-lowering-medication-lescol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: inegy-lipid-lowering-medication---primary/output
  lipid-lowering-medication-tablet---primary:
    run: lipid-lowering-medication-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-lescol---primary/output
  lipid-lowering-medication-300mg---primary:
    run: lipid-lowering-medication-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-tablet---primary/output
  lipid-lowering-medication-syringe---primary:
    run: lipid-lowering-medication-syringe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-300mg---primary/output
  lipid-lowering-medication-200mg---primary:
    run: lipid-lowering-medication-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-syringe---primary/output
  lipid-lowering-medication-colestyramine---primary:
    run: lipid-lowering-medication-colestyramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-200mg---primary/output
  lipid-lowering-medication-lojuxta---primary:
    run: lipid-lowering-medication-lojuxta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-colestyramine---primary/output
  lipid-lowering-medication-115mg---primary:
    run: lipid-lowering-medication-115mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-lojuxta---primary/output
  lipid-lowering-medication-145mg---primary:
    run: lipid-lowering-medication-145mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-115mg---primary/output
  lipid-lowering-medication-500mg---primary:
    run: lipid-lowering-medication-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-145mg---primary/output
  lipid-lowering-medication-crestor---primary:
    run: lipid-lowering-medication-crestor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-500mg---primary/output
  lipid-lowering-medication-625mg---primary:
    run: lipid-lowering-medication-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-crestor---primary/output
  lipid-lowering-medication-bezalip---primary:
    run: lipid-lowering-medication-bezalip---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-625mg---primary/output
  lipid-lowering-medication-granule---primary:
    run: lipid-lowering-medication-granule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-bezalip---primary/output
  lipid-lowering-medication-400microgram---primary:
    run: lipid-lowering-medication-400microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-granule---primary/output
  lipid-lowering-medication-bezafibrate---primary:
    run: lipid-lowering-medication-bezafibrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-400microgram---primary/output
  lipid-lowering-medication-zocor---primary:
    run: lipid-lowering-medication-zocor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-bezafibrate---primary/output
  lipid-lowering-medication-150mg---primary:
    run: lipid-lowering-medication-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-zocor---primary/output
  lipid-lowering-medication-simvador---primary:
    run: lipid-lowering-medication-simvador---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-150mg---primary/output
  lipid-lowering-medication-lipostat---primary:
    run: lipid-lowering-medication-lipostat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-simvador---primary/output
  lipid-lowering-medication-atorvastatin---primary:
    run: lipid-lowering-medication-atorvastatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-lipostat---primary/output
  lipid-lowering-medication-praluent---primary:
    run: lipid-lowering-medication-praluent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-atorvastatin---primary/output
  lipid-lowering-medication-simvastatin---primary:
    run: lipid-lowering-medication-simvastatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-praluent---primary/output
  lipid-lowering-medication-titration---primary:
    run: lipid-lowering-medication-titration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-simvastatin---primary/output
  bempedoic-lipid-lowering-medication---primary:
    run: bempedoic-lipid-lowering-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-titration---primary/output
  lipid-lowering-medication-600mg---primary:
    run: lipid-lowering-medication-600mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: bempedoic-lipid-lowering-medication---primary/output
  lipid-lowering-medication-maxepa---primary:
    run: lipid-lowering-medication-maxepa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-600mg---primary/output
  lipid-lowering-medication-cholib---primary:
    run: lipid-lowering-medication-cholib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-maxepa---primary/output
  lipid-lowering-medication-400mg---primary:
    run: lipid-lowering-medication-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-cholib---primary/output
  lipid-lowering-medication-160mg---primary:
    run: lipid-lowering-medication-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-400mg---primary/output
  lipid-lowering-medication-questran---primary:
    run: lipid-lowering-medication-questran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-160mg---primary/output
  lipid-lowering-medication-alirocumab---primary:
    run: lipid-lowering-medication-alirocumab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-questran---primary/output
  lipid-lowering-medication-750mg---primary:
    run: lipid-lowering-medication-750mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-alirocumab---primary/output
  lipid-lowering-medication-lipitor---primary:
    run: lipid-lowering-medication-lipitor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-750mg---primary/output
  lipid-lowering-medication-fluvastatin---primary:
    run: lipid-lowering-medication-fluvastatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-lipitor---primary/output
  lopid-lipid-lowering-medication---primary:
    run: lopid-lipid-lowering-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-fluvastatin---primary/output
  lipid-lowering-medication-solution---primary:
    run: lipid-lowering-medication-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: lopid-lipid-lowering-medication---primary/output
  lipid-lowering-medication-policosanol---primary:
    run: lipid-lowering-medication-policosanol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-solution---primary/output
  lipid-lowering-medication-colestid---primary:
    run: lipid-lowering-medication-colestid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-policosanol---primary/output
  nicotinic-lipid-lowering-medication---primary:
    run: nicotinic-lipid-lowering-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-colestid---primary/output
  lipid-lowering-medication-capsule---primary:
    run: lipid-lowering-medication-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: nicotinic-lipid-lowering-medication---primary/output
  lipid-lowering-medication-evolocumab---primary:
    run: lipid-lowering-medication-evolocumab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-capsule---primary/output
  lipid-lowering-medication-suspension---primary:
    run: lipid-lowering-medication-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-evolocumab---primary/output
  lipid-lowering-medication-niaspan---primary:
    run: lipid-lowering-medication-niaspan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-suspension---primary/output
  lipid-lowering-medication-repatha---primary:
    run: lipid-lowering-medication-repatha---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-niaspan---primary/output
  eicosapentaenoic-lipid-lowering-medication---primary:
    run: eicosapentaenoic-lipid-lowering-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-repatha---primary/output
  lipid-lowering-medication-pravastatin---primary:
    run: lipid-lowering-medication-pravastatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: eicosapentaenoic-lipid-lowering-medication---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: lipid-lowering-medication-pravastatin---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
