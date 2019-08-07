SELECT * FROM POSTE POSTE0_ WHERE (POSTE0_.ORG_ID_EU=656 )
AND(
  EXISTS(
    SELECT ORGANISATI1_.ORG_ID FROM ORGANISATION ORGANISATI1_, ORGANISATION ORGANISATI2_ 
    WHERE ((ORGANISATI2_.ORG_ID IN(16129)))
    AND(ORGANISATI2_.ORG_ROOT_PATH LIKE ORGANISATI1_.ORG_ROOT_PATH )
    AND(ORGANISATI1_.ORG_ID=POSTE0_.ORG_ID_ETAB )
      )
  ) ORDER BY  POSTE0_.POS_LIBELLE
  
  
  
  select organisati0_.ORG_ID as ORG1_437_2_, organisati0_.NUM_VERSION as NUM2_437_2_, organisati0_.ORG_TYPE as ORG3_437_2_, organisati0_.ORG_ROOT_PATH as ORG4_437_2_, organisati0_.ORG_CODE_EXTERNE as 
  ORG5_437_2_, organisati0_.ORG_LIBELLE as ORG6_437_2_, organisati0_.ORG_SIRET as ORG7_437_2_, organisati0_.ORG_ADRESSE as ORG8_437_2_, organisati0_.ORG_ADRESSE2 as ORG9_437_2_, organisati0_.ORG_ADRESSE3 
  as ORG10_437_2_, organisati0_.ORG_CODE_POSTAL as ORG11_437_2_, organisati0_.ORG_VILLE as ORG12_437_2_, organisati0_.ORG_PAYS as ORG13_437_2_, organisati0_.ORG_CODE_TVA as ORG14_437_2_, 
  organisati0_.ORG_FORME_JURIDIQUE as ORG15_437_2_, organisati0_.ORG_CAPITAL_SOCIAL as ORG16_437_2_, organisati0_.ORG_RCS as ORG17_437_2_, organisati0_.ORG_GARANT_FINANCIER as ORG18_437_2_, 
  organisati0_.ORG_EMAIL as ORG19_437_2_, organisati0_.ORG_EMAIL_TECH as ORG20_437_2_, organisati0_.ORG_EMAIL_SUPPORT as ORG21_437_2_, organisati0_.ORG_TELEPHONE_SUPPORT as ORG22_437_2_, 
  organisati0_.ORG_SUPPORT as ORG23_437_2_, organisati0_.ORG_TELEPHONE as ORG24_437_2_, organisati0_.ORG_VALIDEE as ORG25_437_2_, organisati0_.ORG_CODE_NAF as ORG26_437_2_, organisati0_.ORG_PARTENAIRE as
  ORG27_437_2_, organisati0_.ORG_DATE_CREATION as ORG28_437_2_, organisati0_.ORG_DATE_DERNIER_MODIF as ORG29_437_2_, organisati0_.ORG_DATE_LAST_EDITION as ORG30_437_2_, organisati0_.UTI_POSTE as 
  UTI31_437_2_, organisati0_.LUN_FERIE as LUN32_437_2_, organisati0_.MAR_FERIE as MAR33_437_2_, organisati0_.MER_FERIE as MER34_437_2_, organisati0_.JEU_FERIE as JEU35_437_2_, organisati0_.VEN_FERIE as
  VEN36_437_2_, organisati0_.SAM_FERIE as SAM37_437_2_, organisati0_.DIM_FERIE as DIM38_437_2_, organisati0_.ORG_PARAMETREE as ORG39_437_2_, organisati0_.ORG_MESSAGE_PAGE_ACCUEIL as ORG40_437_2_, 
  organisati0_.ORG_AUTHENTIFICATION_ADN as ORG41_437_2_, organisati0_.ORG_SSO_ID as ORG42_437_2_, organisati0_.ORG_TYPE_TPE as ORG43_437_2_, organisati0_.ORG_TYPE_TDD as ORG44_437_2_, 
  organisati0_.SECTEUR_ID as SECTEUR45_437_2_, organisati0_.AUTORISE_DEROGATION_REFERENTIEL as AUTORISE46_437_2_, organisati0_.ORG_ID_PARENT as ORG47_437_2_, 
  organisati0_.ORG_ID_TETE_GROUPE as ORG48_437_2_, organisati0_.ORG_ID_ETAB_PARENT as ORG49_437_2_, organisati0_.ORG_ID_PARENT_PARAM_VISUEL as ORG50_437_2_, organisati0_.ID_PARENT_HERITAGE_POSTE 
  as ID51_437_2_, organisati0_.ORG_BASE_HEBDO as ORG52_437_2_, organisati0_.ID_PARENT_HERITAGE_LISTE_VAL as ID53_437_2_, organisati0_.ID_PRT_HER_LSTE_VAL_INFO_ANL as ID54_437_2_, 
  organisati0_.ID_PRT_HER_LSTE_VAL_POSTE as ID55_437_2_, organisati0_.ID_PRT_HER_LSTE_VAL_LIEU_TRV as ID56_437_2_, organisati0_.ID_PRT_HER_LSTE_VAL_COMPETENCE as ID57_437_2_, 
  organisati0_.ID_PRT_HER_LSTE_VAL_CONTACT as ID58_437_2_, organisati0_.ID_PRT_HER_LSTE_VAL_MOTIF as ID59_437_2_, organisati0_.ID_PARENT_HERITAGE_SOUSCRIPTION_OFFRE as ID60_437_2_, 
  organisati0_.ORG_FOURNISSEUR_TYPE as ORG61_437_2_, organisati0_.ACCESS_CODE as ACCESS62_437_2_, organisati0_.IDP_KEY as IDP63_437_2_, organisati0_.URL_DECONNEXION_SSO as URL64_437_2_, 
  organisati0_.ID_PARENT_HERITAGE_EXIGENCES as ID65_437_2_, organisati0_.ID_PARENT_HERITAGE_CONTROLE_DOCUMENT as ID66_437_2_, organisati0_.ID_PARENT_HERITAGE_CONTROLE_CONTRAT as ID67_437_2_, 
  organisati0_.CODE_CLIENT_FACTURATION as CODE68_437_2_, organisati0_.TYPE_FACTURATION as TYPE69_437_2_, organisati0_.FACTURATION_DETAILLEE as FACTURA70_437_2_, 
  organisati0_.ID_PARENT_HERITAGE_CMD_STANDARD as ID71_437_2_, organisati0_.ID_PARENT_HERITAGE_CMD_INFOS_ANALYTIQUES as ID72_437_2_, organisati0_.ID_PARENT_HERITAGE_CMD_POSTE_TRAVAIL as 
  ID73_437_2_, organisati0_.ID_PARENT_HERITAGE_CMD_LIEU_TRAVAIL as ID74_437_2_, organisati0_.ID_PARENT_HERITAGE_CMD_COMPETENCE as ID75_437_2_, organisati0_.ID_PARENT_HERITAGE_CMD_CONTACT as 
  ID76_437_2_, organisati0_.ID_PARENT_HERITAGE_MISSION as ID77_437_2_, organisati0_.ID_PARENT_HERITAGE_RECOURS as ID78_437_2_, organisati0_.ORG_REF_MODE_TVA as ORG79_437_2_, organisati0_.ORG_RIB as 
  ORG80_437_2_, organisati0_.ORG_BIC as ORG81_437_2_, organisati0_.ORG_IBAN as ORG82_437_2_, organisati0_.ORG_CODE_DUNS as ORG83_437_2_, organisati0_.ETP_VALUE as ETP84_437_2_, 
  organisati0_.NBR_TRANSACTIONS as NBR85_437_2_, organisati0_.DATE_ACHAT as DATE86_437_2_, organisati0_.DATE_ACTIVATION as DATE87_437_2_, organisati0_.DATE_INACTIVATION as DATE88_437_2_, 
  organisati0_.ID_OFFRE_PRINCIPAL as ID89_437_2_, organisati0_.ORG_EFFECTIF as ORG90_437_2_, organisati0_.ORG_EMAIL_CONTACT_CLIENT as ORG91_437_2_, organisati0_.ORG_NIVEAU_SUPPORT as ORG92_437_2_, 
  organisati0_.ORG_NBR_QUALIF_AUTORISE as ORG93_437_2_, organisati0_.ORG_NBR_RUBRIQUE_AUTORISE as ORG94_437_2_, organisati0_.ORG_NBR_MODELE_AUTORISE as ORG95_437_2_, 
  organisati0_.ORG_NBR_PROGRAMMATION_AUTORISE as ORG96_437_2_, organisati0_.DATE_DEPLOIEMENT as DATE97_437_2_, organisati0_.TAUX_MOYEN_UTILISE as TAUX98_437_2_, 
  organisati0_.TAUX_MOYEN_NIV_DETAILS as TAUX99_437_2_, organisati0_.TAUX_MOYEN_TYPE as TAUX100_437_2_, organisati0_.FORMATION_UTILISATION as FORMATION101_437_2_, organisati0_.FORMATION_ADMINISTRATION 
  as FORMATION102_437_2_, organisati0_.CODE_LANG as CODE103_437_2_, organisati0_.ORG_CODE_PAYS as ORG104_437_2_, organisati1_.ORG_ID as ORG1_437_0_, organisati1_.NUM_VERSION as NUM2_437_0_, 
  organisati1_.ORG_TYPE as ORG3_437_0_, organisati1_.ORG_ROOT_PATH as ORG4_437_0_, organisati1_.ORG_CODE_EXTERNE as ORG5_437_0_, organisati1_.ORG_LIBELLE as ORG6_437_0_, organisati1_.ORG_SIRET as 
  ORG7_437_0_, organisati1_.ORG_ADRESSE as ORG8_437_0_, organisati1_.ORG_ADRESSE2 as ORG9_437_0_, organisati1_.ORG_ADRESSE3 as ORG10_437_0_, organisati1_.ORG_CODE_POSTAL as ORG11_437_0_, 
  organisati1_.ORG_VILLE as ORG12_437_0_, organisati1_.ORG_PAYS as ORG13_437_0_, organisati1_.ORG_CODE_TVA as ORG14_437_0_, organisati1_.ORG_FORME_JURIDIQUE as ORG15_437_0_, 
  organisati1_.ORG_CAPITAL_SOCIAL as ORG16_437_0_, organisati1_.ORG_RCS as ORG17_437_0_, organisati1_.ORG_GARANT_FINANCIER as ORG18_437_0_, organisati1_.ORG_EMAIL as ORG19_437_0_, 
  organisati1_.ORG_EMAIL_TECH as ORG20_437_0_, organisati1_.ORG_EMAIL_SUPPORT as ORG21_437_0_, organisati1_.ORG_TELEPHONE_SUPPORT as ORG22_437_0_, organisati1_.ORG_SUPPORT as ORG23_437_0_, organisati1_.ORG_TELEPHONE as ORG24_437_0_, organisati1_.ORG_VALIDEE as ORG25_437_0_, organisati1_.ORG_CODE_NAF as ORG26_437_0_, organisati1_.ORG_PARTENAIRE as ORG27_437_0_, organisati1_.ORG_DATE_CREATION as ORG28_437_0_, organisati1_.ORG_DATE_DERNIER_MODIF as ORG29_437_0_, organisati1_.ORG_DATE_LAST_EDITION as ORG30_437_0_, organisati1_.UTI_POSTE as UTI31_437_0_, organisati1_.LUN_FERIE as LUN32_437_0_, organisati1_.MAR_FERIE as MAR33_437_0_, organisati1_.MER_FERIE as MER34_437_0_, organisati1_.JEU_FERIE as JEU35_437_0_, organisati1_.VEN_FERIE as VEN36_437_0_, organisati1_.SAM_FERIE as SAM37_437_0_, organisati1_.DIM_FERIE as DIM38_437_0_, organisati1_.ORG_PARAMETREE as ORG39_437_0_, organisati1_.ORG_MESSAGE_PAGE_ACCUEIL as ORG40_437_0_, organisati1_.ORG_AUTHENTIFICATION_ADN as ORG41_437_0_, organisati1_.ORG_SSO_ID as ORG42_437_0_, organisati1_.ORG_TYPE_TPE as ORG43_437_0_, organisati1_.ORG_TYPE_TDD as ORG44_437_0_, organisati1_.SECTEUR_ID as SECTEUR45_437_0_, organisati1_.AUTORISE_DEROGATION_REFERENTIEL as AUTORISE46_437_0_, organisati1_.ORG_ID_PARENT as ORG47_437_0_, organisati1_.ORG_ID_TETE_GROUPE as ORG48_437_0_, organisati1_.ORG_ID_ETAB_PARENT as ORG49_437_0_, organisati1_.ORG_ID_PARENT_PARAM_VISUEL as ORG50_437_0_, organisati1_.ID_PARENT_HERITAGE_POSTE as ID51_437_0_, organisati1_.ORG_BASE_HEBDO as ORG52_437_0_, organisati1_.ID_PARENT_HERITAGE_LISTE_VAL as ID53_437_0_, organisati1_.ID_PRT_HER_LSTE_VAL_INFO_ANL as ID54_437_0_, organisati1_.ID_PRT_HER_LSTE_VAL_POSTE as ID55_437_0_, organisati1_.ID_PRT_HER_LSTE_VAL_LIEU_TRV as ID56_437_0_, organisati1_.ID_PRT_HER_LSTE_VAL_COMPETENCE as ID57_437_0_, organisati1_.ID_PRT_HER_LSTE_VAL_CONTACT as ID58_437_0_, organisati1_.ID_PRT_HER_LSTE_VAL_MOTIF as ID59_437_0_, organisati1_.ID_PARENT_HERITAGE_SOUSCRIPTION_OFFRE as ID60_437_0_, organisati1_.ORG_FOURNISSEUR_TYPE as ORG61_437_0_, organisati1_.ACCESS_CODE as ACCESS62_437_0_, organisati1_.IDP_KEY as IDP63_437_0_, organisati1_.URL_DECONNEXION_SSO as URL64_437_0_, organisati1_.ID_PARENT_HERITAGE_EXIGENCES as ID65_437_0_, organisati1_.ID_PARENT_HERITAGE_CONTROLE_DOCUMENT as ID66_437_0_, organisati1_.ID_PARENT_HERITAGE_CONTROLE_CONTRAT as ID67_437_0_, organisati1_.CODE_CLIENT_FACTURATION as CODE68_437_0_, organisati1_.TYPE_FACTURATION as TYPE69_437_0_, organisati1_.FACTURATION_DETAILLEE as FACTURA70_437_0_, organisati1_.ID_PARENT_HERITAGE_CMD_STANDARD as ID71_437_0_, organisati1_.ID_PARENT_HERITAGE_CMD_INFOS_ANALYTIQUES as ID72_437_0_, organisati1_.ID_PARENT_HERITAGE_CMD_POSTE_TRAVAIL as ID73_437_0_, organisati1_.ID_PARENT_HERITAGE_CMD_LIEU_TRAVAIL as ID74_437_0_, organisati1_.ID_PARENT_HERITAGE_CMD_COMPETENCE as ID75_437_0_, organisati1_.ID_PARENT_HERITAGE_CMD_CONTACT as ID76_437_0_, organisati1_.ID_PARENT_HERITAGE_MISSION as ID77_437_0_, organisati1_.ID_PARENT_HERITAGE_RECOURS as ID78_437_0_, organisati1_.ORG_REF_MODE_TVA as ORG79_437_0_, organisati1_.ORG_RIB as ORG80_437_0_, organisati1_.ORG_BIC as ORG81_437_0_, organisati1_.ORG_IBAN as ORG82_437_0_, organisati1_.ORG_CODE_DUNS as ORG83_437_0_, organisati1_.ETP_VALUE as ETP84_437_0_, organisati1_.NBR_TRANSACTIONS as NBR85_437_0_, organisati1_.DATE_ACHAT as DATE86_437_0_, organisati1_.DATE_ACTIVATION as DATE87_437_0_, organisati1_.DATE_INACTIVATION as DATE88_437_0_, organisati1_.ID_OFFRE_PRINCIPAL as ID89_437_0_, organisati1_.ORG_EFFECTIF as ORG90_437_0_, organisati1_.ORG_EMAIL_CONTACT_CLIENT as ORG91_437_0_, organisati1_.ORG_NIVEAU_SUPPORT as ORG92_437_0_, organisati1_.ORG_NBR_QUALIF_AUTORISE as ORG93_437_0_, organisati1_.ORG_NBR_RUBRIQUE_AUTORISE as ORG94_437_0_, organisati1_.ORG_NBR_MODELE_AUTORISE as ORG95_437_0_, organisati1_.ORG_NBR_PROGRAMMATION_AUTORISE as ORG96_437_0_, organisati1_.DATE_DEPLOIEMENT as DATE97_437_0_, organisati1_.TAUX_MOYEN_UTILISE as TAUX98_437_0_, organisati1_.TAUX_MOYEN_NIV_DETAILS as TAUX99_437_0_, organisati1_.TAUX_MOYEN_TYPE as TAUX100_437_0_, organisati1_.FORMATION_UTILISATION as FORMATION101_437_0_, organisati1_.FORMATION_ADMINISTRATION as FORMATION102_437_0_, organisati1_.CODE_LANG as CODE103_437_0_, organisati1_.ORG_CODE_PAYS as ORG104_437_0_, organisati2_.ORG_ID as ORG1_437_1_, organisati2_.NUM_VERSION as NUM2_437_1_, organisati2_.ORG_TYPE as ORG3_437_1_, organisati2_.ORG_ROOT_PATH as ORG4_437_1_, organisati2_.ORG_CODE_EXTERNE as ORG5_437_1_, organisati2_.ORG_LIBELLE as ORG6_437_1_, organisati2_.ORG_SIRET as ORG7_437_1_, organisati2_.ORG_ADRESSE as ORG8_437_1_, organisati2_.ORG_ADRESSE2 as ORG9_437_1_, organisati2_.ORG_ADRESSE3 as ORG10_437_1_, organisati2_.ORG_CODE_POSTAL as ORG11_437_1_, organisati2_.ORG_VILLE as ORG12_437_1_, organisati2_.ORG_PAYS as ORG13_437_1_, organisati2_.ORG_CODE_TVA as ORG14_437_1_, organisati2_.ORG_FORME_JURIDIQUE as ORG15_437_1_, organisati2_.ORG_CAPITAL_SOCIAL as ORG16_437_1_, organisati2_.ORG_RCS as ORG17_437_1_, organisati2_.ORG_GARANT_FINANCIER as ORG18_437_1_, organisati2_.ORG_EMAIL as ORG19_437_1_, organisati2_.ORG_EMAIL_TECH as ORG20_437_1_, organisati2_.ORG_EMAIL_SUPPORT as ORG21_437_1_, organisati2_.ORG_TELEPHONE_SUPPORT as ORG22_437_1_, organisati2_.ORG_SUPPORT as ORG23_437_1_, organisati2_.ORG_TELEPHONE as ORG24_437_1_, organisati2_.ORG_VALIDEE as ORG25_437_1_, organisati2_.ORG_CODE_NAF as ORG26_437_1_, organisati2_.ORG_PARTENAIRE as ORG27_437_1_, organisati2_.ORG_DATE_CREATION as ORG28_437_1_, organisati2_.ORG_DATE_DERNIER_MODIF as ORG29_437_1_, organisati2_.ORG_DATE_LAST_EDITION as ORG30_437_1_, organisati2_.UTI_POSTE as UTI31_437_1_, organisati2_.LUN_FERIE as LUN32_437_1_, organisati2_.MAR_FERIE as MAR33_437_1_, organisati2_.MER_FERIE as MER34_437_1_, organisati2_.JEU_FERIE as JEU35_437_1_, organisati2_.VEN_FERIE as VEN36_437_1_, organisati2_.SAM_FERIE as SAM37_437_1_, organisati2_.DIM_FERIE as DIM38_437_1_, organisati2_.ORG_PARAMETREE as ORG39_437_1_, organisati2_.ORG_MESSAGE_PAGE_ACCUEIL as ORG40_437_1_, organisati2_.ORG_AUTHENTIFICATION_ADN as ORG41_437_1_, organisati2_.ORG_SSO_ID as ORG42_437_1_, organisati2_.ORG_TYPE_TPE as ORG43_437_1_, organisati2_.ORG_TYPE_TDD as ORG44_437_1_, organisati2_.SECTEUR_ID as SECTEUR45_437_1_, organisati2_.AUTORISE_DEROGATION_REFERENTIEL as AUTORISE46_437_1_, organisati2_.ORG_ID_PARENT as ORG47_437_1_, organisati2_.ORG_ID_TETE_GROUPE as ORG48_437_1_, organisati2_.ORG_ID_ETAB_PARENT as ORG49_437_1_, organisati2_.ORG_ID_PARENT_PARAM_VISUEL as ORG50_437_1_, organisati2_.ID_PARENT_HERITAGE_POSTE as ID51_437_1_, organisati2_.ORG_BASE_HEBDO as ORG52_437_1_, organisati2_.ID_PARENT_HERITAGE_LISTE_VAL as ID53_437_1_, organisati2_.ID_PRT_HER_LSTE_VAL_INFO_ANL as ID54_437_1_, organisati2_.ID_PRT_HER_LSTE_VAL_POSTE as ID55_437_1_, organisati2_.ID_PRT_HER_LSTE_VAL_LIEU_TRV as ID56_437_1_, organisati2_.ID_PRT_HER_LSTE_VAL_COMPETENCE as ID57_437_1_, organisati2_.ID_PRT_HER_LSTE_VAL_CONTACT as ID58_437_1_, organisati2_.ID_PRT_HER_LSTE_VAL_MOTIF as ID59_437_1_, organisati2_.ID_PARENT_HERITAGE_SOUSCRIPTION_OFFRE as ID60_437_1_, organisati2_.ORG_FOURNISSEUR_TYPE as ORG61_437_1_, organisati2_.ACCESS_CODE as ACCESS62_437_1_, organisati2_.IDP_KEY as IDP63_437_1_, organisati2_.URL_DECONNEXION_SSO as URL64_437_1_, organisati2_.ID_PARENT_HERITAGE_EXIGENCES as ID65_437_1_, organisati2_.ID_PARENT_HERITAGE_CONTROLE_DOCUMENT as ID66_437_1_, organisati2_.ID_PARENT_HERITAGE_CONTROLE_CONTRAT as ID67_437_1_, organisati2_.CODE_CLIENT_FACTURATION as CODE68_437_1_, organisati2_.TYPE_FACTURATION as TYPE69_437_1_, organisati2_.FACTURATION_DETAILLEE as FACTURA70_437_1_, organisati2_.ID_PARENT_HERITAGE_CMD_STANDARD as ID71_437_1_, organisati2_.ID_PARENT_HERITAGE_CMD_INFOS_ANALYTIQUES as ID72_437_1_, organisati2_.ID_PARENT_HERITAGE_CMD_POSTE_TRAVAIL as ID73_437_1_, organisati2_.ID_PARENT_HERITAGE_CMD_LIEU_TRAVAIL as ID74_437_1_, organisati2_.ID_PARENT_HERITAGE_CMD_COMPETENCE as ID75_437_1_, organisati2_.ID_PARENT_HERITAGE_CMD_CONTACT as ID76_437_1_, organisati2_.ID_PARENT_HERITAGE_MISSION as ID77_437_1_, organisati2_.ID_PARENT_HERITAGE_RECOURS as ID78_437_1_, organisati2_.ORG_REF_MODE_TVA as ORG79_437_1_, organisati2_.ORG_RIB as ORG80_437_1_, organisati2_.ORG_BIC as ORG81_437_1_, organisati2_.ORG_IBAN as ORG82_437_1_, organisati2_.ORG_CODE_DUNS as ORG83_437_1_, organisati2_.ETP_VALUE as ETP84_437_1_, organisati2_.NBR_TRANSACTIONS as NBR85_437_1_, organisati2_.DATE_ACHAT as DATE86_437_1_, organisati2_.DATE_ACTIVATION as DATE87_437_1_, organisati2_.DATE_INACTIVATION as DATE88_437_1_, organisati2_.ID_OFFRE_PRINCIPAL as ID89_437_1_, organisati2_.ORG_EFFECTIF as ORG90_437_1_, organisati2_.ORG_EMAIL_CONTACT_CLIENT as ORG91_437_1_, organisati2_.ORG_NIVEAU_SUPPORT as ORG92_437_1_, organisati2_.ORG_NBR_QUALIF_AUTORISE as ORG93_437_1_, organisati2_.ORG_NBR_RUBRIQUE_AUTORISE as ORG94_437_1_, organisati2_.ORG_NBR_MODELE_AUTORISE as ORG95_437_1_, organisati2_.ORG_NBR_PROGRAMMATION_AUTORISE as ORG96_437_1_, organisati2_.DATE_DEPLOIEMENT as DATE97_437_1_, organisati2_.TAUX_MOYEN_UTILISE as TAUX98_437_1_, organisati2_.TAUX_MOYEN_NIV_DETAILS as TAUX99_437_1_, organisati2_.TAUX_MOYEN_TYPE as TAUX100_437_1_, organisati2_.FORMATION_UTILISATION as FORMATION101_437_1_, organisati2_.FORMATION_ADMINISTRATION as FORMATION102_437_1_, organisati2_.CODE_LANG as CODE103_437_1_, organisati2_.ORG_CODE_PAYS as ORG104_437_1_ 
  
  
  from ORGANISATION organisati0_ 
  inner join ORGANISATION organisati1_ on organisati0_.ORG_ID_PARENT=organisati1_.ORG_ID 
  left outer join ORGANISATION organisati2_ on organisati1_.ORG_ID_TETE_GROUPE=organisati2_.ORG_ID where organisati0_.ORG_ID=?
  
  
  
  
  SELECT * 
  
  FROM POSTE POSTE0_ 
  WHERE (POSTE0_.ORG_ID_EU=656 )
  AND(EXISTS
      (SELECT ORGANISATI1_.ORG_ID FROM ORGANISATION ORGANISATI1_, ORGANISATION ORGANISATI2_ 
        WHERE (
        (ORGANISATI2_.ORG_ID_PARENT IN(16129)
        ))
        AND(ORGANISATI1_.ORG_ROOT_PATH LIKE ORGANISATI2_.ORG_ROOT_PATH )
        AND(ORGANISATI1_.ORG_ID=POSTE0_.ORG_ID_ETAB )
       )
       ) ORDER BY  POSTE0_.POS_LIBELLE