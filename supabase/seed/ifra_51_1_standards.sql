-- IFRA 51st Amendment の基準データ
-- tools/ifra/build_seed.py で自動生成。手で直さないこと。
-- 出典:https://d3t14p1xronwr0.cloudfront.net/docs/Standards-Documentation/ifra-51st-amendment-ifra-standards-overview.xlsx
--       https://d3t14p1xronwr0.cloudfront.net/docs/Standards-Documentation/ifra-51st-amendment-annex-on-contributions-from-other-sources.xlsx

begin;

insert into public.ifra_amendments (amendment, label, overview_url, annex_url, overview_sha256, annex_sha256) values
  (51, 'IFRA 51st Amendment', 'https://d3t14p1xronwr0.cloudfront.net/docs/Standards-Documentation/ifra-51st-amendment-ifra-standards-overview.xlsx', 'https://d3t14p1xronwr0.cloudfront.net/docs/Standards-Documentation/ifra-51st-amendment-annex-on-contributions-from-other-sources.xlsx', '0580e1e71cd98335136f46f2c2beea272b72c863183d42fe92b9833ea546ed9e', '28988a6c543db4b7aa3e39229bc543154b0df6b59f773726f2a4f2936f271bef');

insert into public.ifra_standards (amendment, standard_key, name, standard_type, intrinsic_property, last_amended_in, cas_numbers, synonyms, notes) values
  (51, 'IFRA_STD_001', 'Acetic acid, anhydride, reaction products with 1,5,10-Trimethyl-1,5,9-cyclododecatriene', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['144020-22-4', '28371-99-5']::text[], 'Methyl trimethylcyclododecatrienyl ketone (mixture of isomers)
Trimofix O (commercial name)
Fixamber (commercial name)', null),
  (51, 'IFRA_STD_002', 'Acetylated Vetiver oil', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['62563-80-8', '68917-34-0', '73246-97-6', '84082-84-8']::text[], 'Vetiveria zizanioides, extract, acetylated
Oils, vetiver, acetylated
Acetic acid, esters with vetiver oil alcohols
Vetiverol, acetate
Vetivert acetate (commercial name)
Vetivert acetate (Haiti) (commercial name)
Vetyveryl acetate (commercial name)', null),
  (51, 'IFRA_STD_003', 'Allyl phenoxyacetate', 'RESTRICTION_SPECIFICATION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['7493-74-5', '863306-60-9']::text[], 'Acetic acid, phenoxy-, 2-propenyl ester
2-Propenyl phenoxyacetate
Prop-2-enyl 2-phenoxyacetate
Acetate PA', '[Specified ingredients: notes] According to the IFRA Specification Standard of Allyl esters, Allyl esters should only be used when the level of free Allylalcohol in the ester is less than 0.1%. This recommendation is based on the delayed irritant potential of Allylalcohol.
Please also refer to the IFRA Specification Standard Allyl esters.'),
  (51, 'IFRA_STD_004', 'alpha-Amyl cinnamic alcohol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['101-85-9']::text[], 'Amylcinnamyl alcohol
α-Amylcinnamyl alcohol
2-Amyl-3-phenyl-2-propen-1-ol
2-Benzylideneheptanol
1-Heptanol, 2-(phenylmethylene)-
α-Pentylcinnamyl alcohol', null),
  (51, 'IFRA_STD_005', 'alpha-Amyl cinnamic aldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['122-40-7']::text[], 'Amyl cinnamal
Amyl cinnamic aldehyde
α-Amylcinnamaldehyde
α-Amyl ß-phenylacrolein
Heptanal, 2-(phenylmethylene)
α-Pentylcinnamaldehyde
α-Pentyl-ß-phenylacrolein
2-(Phenylmethylene)heptanal
Flomine (commercial name)', null),
  (51, 'IFRA_STD_006', 'Anisyl alcohol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['105-13-5', '1331-81-3']::text[], 'Anisalcohol
Anise alcohol
Anisic alcohol
Benzyl alcohol, p-methoxy
p-Methoxybenzyl alcohol', null),
  (51, 'IFRA_STD_007', 'Benzaldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['100-52-7']::text[], 'Benzenecarbonal
Benzene carboxaldehyde
Benzenecarboxaldehyde
Benzenemethylal
Benzoic aldehyde
Bitter almond oil, synthetic
Phenylformaldehyde
Phenylmethanol aldehyde', null),
  (51, 'IFRA_STD_008', 'Benzyl alcohol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['100-51-6']::text[], 'Benzenemethanol
Benzylic alcohol
α-Hydroxytoluene
Phenylcarbinol
Phenyl carbinol
Phenylmethanol
Phenylmethyl alcohol
α-Toluenol', null),
  (51, 'IFRA_STD_009', 'Benzyl benzoate', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['120-51-4']::text[], 'Benylate
Benzoic acid, benzyl ester
Benzoic acid, phenylmethyl ester
Benzyl phenylformate
Phenylmethyl benzoate', null),
  (51, 'IFRA_STD_010', 'Benzyl cinnamate', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['103-41-3']::text[], 'Benzyl γ-phenylacrylate
Benzyl 3-phenylpropenoate
Cinnamein
Cinnamic acid, benzyl ester
Phenylmethyl 3-phenyl-2-propenoate
2-Propenoic acid, 3-phenyl-phenylmethyl ester', null),
  (51, 'IFRA_STD_011', 'Benzyl salicylate', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['118-58-1']::text[], 'Benzoic acid, 2-hydroxy-, phenylmethyl ester
Benzyl 2-hydroxybenzoate
Benzyl o-hydroxybenzoate
2-Hydroxybenzoic acid, benzyl ester
Phenylmethyl 2-hydroxybenzoate
Salicylic acid, benzyl ester', null),
  (51, 'IFRA_STD_012', 'alpha-Butylcinnamaldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['7492-44-6']::text[], '2-Benzylidenehexanal
Butyl cinnamic aldehyde
α-Butyl-β-phenylacrolein
Hexanal, 2-(phenylmethylene)-
alpha-butylcinnamaldehyde', null),
  (51, 'IFRA_STD_013', '3-(m-tert-Butylphenyl)-2-methylpropionaldehyde (m-BMHCA)', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['62518-65-4']::text[], 'Benzenepropanal, 3-(1,1-dimethylethyl)-α-methyl-
3-(3-tert-Butylphenyl)-2-methylpropanal
m-BMHCA', null),
  (51, 'IFRA_STD_014', 'p-tert-Butyldihydrocinnamaldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['18127-01-0']::text[], 'Benzenepropanal, 4-(1,1-dimethylethyl)-
3-(4-tert-Butylphenyl)propionaldehyde
Bourgeonal (commercial name)
Liliphenal (commercial name)', null),
  (51, 'IFRA_STD_015', 'p-tert-Butyl-α-methylhydrocinnamic aldehyde (p-BMHCA)', 'RESTRICTION_PROHIBITION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['80-54-6']::text[], 'Benzenepropanal, 4-(1,1-dimethylethyl)-alpha-methyl-
p-t-Bucinal
2-(4-tert-Butylbenzyl)propionaldehyde
p-t-Butyl-alpha-methylhydrocinnamaldehyde
Butylphenyl methylpropional
alpha-Methyl-ß-(p-t-butylphenyl)propionaldehyde
Lilestralis (commercial name)
Lilial (commercial name)
Lysmeral (commercial name)', '[Prohibited fragrance ingredients: notes] p-tert-Butyl-α-methylhydrocinnamic aldehyde (p-BMHCA) should not be used for any finished product application included under IFRA Categories 1 and 6 (lipsticks and oral care products).'),
  (51, 'IFRA_STD_016', 'Carvone', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['2244-16-8', '6485-40-1', '99-49-0']::text[], '99-49-0 (Carvone): 
p-Mentha-6,8-dien-2-one;
1-Methyl-4-isopropenyl-6-cyclohexen-2-one;
2-Cyclohexen-1-one, 2-methyl-5-(1-methylethenyl)-;
5-Isopropenyl-2-methylcyclohex-2-en-1-one;
6,8(9)-p-Menthadien-2-one.

2244-16-8 (d-Carvone):
(S)-2-Methyl-5-(1-methylvinyl)cyclohex-2-en-1-one;
d-p-Mentha-6,8(9)-dien-2-one;
d-1-Methyl-4-isopropenyl-6-cyclohexen-2-one;
2-Cyclohexen-1-one, 2-methyl-5-(1-methylethenyl)-, (S)-.

6485-40-1 (l-Carvone):
l-p-Mentha-1(6),8-dien-2-one;
l-p-Mentha-6,8(9)-dien-2-one;
l-1-Methyl-4-isopropenyl-6-cyclohexen-2-one;
2-Cyclohexen-1-one, 2-methyl-5-(1-methylethenyl)-, (R)-;
5-Isopropenyl-2-methylcyclohex-2-en-1-one.', '[Contributions from other sources: notes] The natural contribution of Carvone is determined by the sum of the natural contributions of each of its isomers.'),
  (51, 'IFRA_STD_017', 'Cinnamic alcohol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['104-54-1']::text[], 'Cinnamyl alcohol
3-Phenylallyl alcohol
3-Phenyl-2-propen-1-ol
2-Propen-1-ol, 3-phenyl-
Styrone
Styryl alcohol
Zimtalcohol
Styryl carbinol', null),
  (51, 'IFRA_STD_018', 'Cinnamic aldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['104-55-2']::text[], 'Cinnamal
Cinnamaldehyde
Phenylacrolein
3-Phenyl-2-propena
3-Phenyl-2-propen-1-a
Cassia aldehyde', null),
  (51, 'IFRA_STD_019', 'Cinnamic aldehyde dimethyl acetal', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['4364-06-1']::text[], 'Benzene, (3,3-dimethoxy-1-propenyl)-
(3,3-Dimethoxypropen-1-yl)benzene
(3,3-Dimethoxyprop-1-en-1-yl)benzene
3-Phenyl-2-propenal dimethyl acetal', null),
  (51, 'IFRA_STD_020', 'Cinnamyl nitrile', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['1885-38-7', '4360-47-8']::text[], 'Cinnamonitrile (E)
trans-.β.-Phenylacrylonitrile
2-Propenenitrile, 3-phenyl-, (E)-', null),
  (51, 'IFRA_STD_021', 'Citral', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['106-26-3', '141-27-5', '5392-40-5']::text[], '3,7-Dimethyl-2,6-octadienal
Geranial (trans-citral)
Neral
Geranial
Lemarome (commercial name)', null),
  (51, 'IFRA_STD_022', 'Citronellol', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['106-22-9', '1117-61-9', '141-25-3', '26489-01-0', '6812-78-8', '7540-51-4']::text[], '106-22-9: 
3,7-Dimethyl-6-octen-1-ol
6-Octen-1-ol, 3,7-dimethyl-
Citronellol
dl-Citronellol
Rhodinol pure (commercial name)

1117-61-9: 
3,7-Dimethyloct-6-en-1-ol
6-Octen-1-ol, 3,7-dimethyl-, (R)-
(R)-3,7-Dimethyloct-6-en-1-ol
(+)-ß-Citronellol
(+)-(R)-Citronellol

26489-01-0: 
6-Octen-1-ol, 3,7-dimethyl-,(+/-)-

6812-78-8: 
3,7-Dimethyloct-7-en-1-ol
7-Octen-1-ol, 3,7-dimethyl-,(S)-
3,7-Dimethyl-(6-or 7-)octen-1-ol	
3,7-Dimethyl-7-octen-1-ol	

141-25-3: 
3,7-Dimethyloct-7-en-1-ol
7-Octen-1-ol, 3,7-dimethyl- (isomer unspecified)
α-Citronellol
Rhodinol (commercial name)

7540-51-4: 
3,7-Dimethyloct-6-en-1-ol
(-)-3,7-Dimethyloct-6-en-1-ol
(S)-3,7-Dimethyl-6-octen-1-ol	
6-Octen-1-ol, 3,7-dimethyl-, (S)-
l-Citronellol', null),
  (51, 'IFRA_STD_023', 'Coumarin', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['91-64-5']::text[], '2H-1-Benzopyran-2-one
2H-chromen-2-one
1,2-Benzopyrone
cis-o-Coumaric acid lactone
Coumarinic anhydride
2-Oxo-1,2-benzopyran
Tonka bean camphor', null),
  (51, 'IFRA_STD_024', 'Cuminaldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['122-03-2']::text[], 'Benzaldehyde, 4-(1-methylethyl)-
Cumaldehyde
Cuminal
Cuminic aldehyde
4-Isopropylbenzaldehyde
p-Isopropylbenzaldehyde
4-Isopropylbenzenecarboxaldehyde', null),
  (51, 'IFRA_STD_025', 'Cyclamen aldehyde', 'RESTRICTION_SPECIFICATION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['103-95-7']::text[], 'Benzenepropanal, α-methyl-4-(1-methylethyl)-
Benzenepropanol, .α.-methyl-4-(1-methylethyl)-
3-p-Cumenyl-2-methylpropionaldehyde
p-Isopropyl-α-methylhydrocinnamaldehyde
3-(4-Isopropylphenyl)-2-methylpropanal
2-Methyl-3-(p-isopropylphenyl)propionaldehyde
α-Methyl-p-isopropylphenylpropylaldehyde
α-Methyl-4-(1-methylethyl)benzenepropanal
Cyclamal (commercial name)
Cyclaviol (commercial name)
Cyclosal (commercial name)', '[Specified ingredients: notes] Cyclamen aldehyde should not contain more than 1.5% of Cyclamen alcohol.
[Contributions from other sources: notes] Cyclamen aldehyde has been found in natural extracts but only at trace levels.'),
  (51, 'IFRA_STD_026', 'Cyclopentadecanolide', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['106-02-5']::text[], 'Angelica lactone
Cyclopentadecanolide
15-Hydroxypentadecanoic acid, ω-lactone
Oxacyclohexadecan-2-one
Pentadecalactone
ω-Pentadecalactone
Pentadecanolide
Cyclopentadecanolid Supra (commercial name)
Exaltex (commercial name)
Exaltolide (commercial name)
Macrolide (commercial name)
Muskalactone (commercial name)
Pentalide (commercial name)
Thibetolide (commercial name)', null),
  (51, 'IFRA_STD_027', 'Dibenzyl ether', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['103-50-4']::text[], 'Phenylmethoxymethylbenzene
Benzene, 1,1''-[oxybis(methylene)]bis-
Benzyl ether
Benzyl oxide
Dibenzyl oxide
1,1''-[Oxybis(methylene)]dibenzene', null),
  (51, 'IFRA_STD_028', '6,7-Dihydro-1,1,2,3,3-pentamethyl-4(5H)-indanone (DPMI)', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['33704-61-9']::text[], '1,2,3,5,6,7-Hexahydro-1,1,2,3,3-pentamethyl-4H-inden-4-one
4H-Inden-4-one, 1,2,3,5,6,7-hexahydro-1,1,2,3,3-pentamethyl-
1,1,2,3,3-Pentamethyl-1,2,3,5,6,7-hexahydro-4H-inden-4-one
Cashmeran (commercial name)', null),
  (51, 'IFRA_STD_029', 'Dihydrocoumarin', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['119-84-6']::text[], 'Dihydrocoumarin
1,2-Benzodihydropyrone 
2H-1-Benzopyran-2-one, 3,4-dihydro-
Chroman-2-one
2-Chromanone
3,4-Dihydro-2H-1-benzopyran-2-one 
o-Hydroxydihydrocinnamic acid lactone 
Melilotic acid lactone
Melilotic lactone (commercial name)', null),
  (51, 'IFRA_STD_030', 'Dimethylcyclohex-3-ene-1-carbaldehyde (mixed isomers)', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['27939-60-2', '35145-02-9', '36635-35-5', '67801-65-4', '68039-48-5', '68039-49-6', '68084-52-6', '68737-61-1']::text[], 'Dimethylcyclohex-3-ene-1-carbaldehyde (isomer mixture) (68737-61-1)
2,4-Dimethyl-3-cyclohexen-1-carboxaldehyde (68039-49-6)
3,5-Dimethylcyclohex-3-ene-1-carbaldehyde (68039-48-5)
Dimethylcyclohex-3-ene-1-carbaldehyde (isomer unspecified) (27939-60-2)
3,6-Dimethyl-3-cyclohexene-1-carboxaldehyde (67801-65-4)
3-Cyclohexene-1-carboxaldehyde, dimethyl- (isomer mixture)
2,4-Dimethyltetrahydrobenzaldehyde
Dimethyltetrahydrobenzaldehyde (isomer mixture)
Triplal (commercial name)
Vertocitral (commercial name)
Vertoliff (commercial name)
Tricyclal (commercial name)
Hivertal (commercial name)
Agrumen Aldehyde (commercial name)
Cyclovertal (commercial name)
Ligustral (commercial name)
Aldehyde AA (commercial name)', '[Restricted ingredients: notes] The above limits apply to Dimethylcyclohexen-3-ene-1-carbaldehyde (mixed isomers) used individually or in combination. The sum of concentrations of Dimethylcyclohexen-3-ene-1-carbaldehyde isomers should not exceed the maximum concentration levels established by this Standard.'),
  (51, 'IFRA_STD_031', '1-(5,5-Dimethyl-1-cyclohexen-1-yl)pent-4-en-1-one', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['56973-85-4']::text[], 'α-Dynascone
4-Penten-1-one, 1-(5,5-dimethyl-1-cyclohexen-1-yl)-
Dynascone (commercial name)
Galbanone (commercial name)
Galbascone (commercial name)
Neobutenone (commercial name)
Neogal (commercial name)
Neogalbenum (commercial name)', null),
  (51, 'IFRA_STD_032', '2,2-Dimethyl-3-(3-tolyl)propan-1-ol', 'RESTRICTION_SPECIFICATION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['103694-68-4']::text[], 'Benzenepropanol,.ß.,. ß.,3-trimethyl
2,2-Dimethyl-3-(3-methylphenyl)propanol
Benzene propanol
Majantol (commercial name)
Linlan alcohol (commercial name)
Muguetol B (commercial name)', '[Specified ingredients: notes] 2,2-Dimethyl-3-(3-tolyl)propan-1-ol should only be used as a fragrance ingredient if traces of organochlorine compounds are restricted. Total Chlorine, which can be measured by Atomic Absorption Spectroscopy, must not exceed 25 ppm in the raw material.'),
  (51, 'IFRA_STD_033', '2-Ethoxy-4-methylphenol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['2563-07-7']::text[], '2-Ethoxy-p-cresol
2-Ethoxy-4-methylphenol
4-Methyl-2-ethoxyphenol
Phenol, 2-ethoxy-4-methyl-
Ultravanil (commercial name)
Supravanil (commercial name)', null),
  (51, 'IFRA_STD_034', 'p-Ethylbenzaldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['4748-78-1']::text[], '4-Ethylbenzaldehyde
 Benzaldehyde, 4-ethyl', null),
  (51, 'IFRA_STD_035', 'Eugenol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['97-53-0']::text[], 'Eugenol
4-Allylcatechol-2-methyl ether
1-Allyl-4-hydroxy-3-methoxybenzene
4-Allyl-2-methoxyphenol
Caryophyllic acid
2-Hydroxy-5-allylanisole
1-Hydroxy-2-methoxy-4-allylbenzene
4-Hydroxy-3-methoxy-1-allylbenzene
1-Hydroxy-2-methoxy-4-propenylbenzene
2-Methoxy-4-allylphenol
2-Methoxy-4-(2-propenyl)phenol
Phenol, 2-methoxy-4-(2-propenyl)-
Eugenic acid
Allylguaiacol
4-Allylguaiacol', null),
  (51, 'IFRA_STD_036', 'Farnesol', 'RESTRICTION_SPECIFICATION', 'DERMAL SENSITIZATION', 49, array['106-28-5', '16106-95-9', '3790-71-4', '3879-60-5', '4602-84-0']::text[], 'Farnesol
2,6,10-Dodecatrien-1-ol, 3,7,11-trimethyl_x0002_
Farnesyl alcohol
Trimethyl dodecatrienol
3,7,11-Trimethyl-2,6,10-dodecatrien-1-ol
trans-trans-Farnesol
cis-trans-Farnesol
2Z,6Z-Farnesol
cis-cis-Farnesol
2-trans,6-cis-Farnesol', '[Specified ingredients: notes] Farnesol should only be used as a fragrance ingredient if it contains a minimum of 96% of farnesol isomers as determined by GLC.'),
  (51, 'IFRA_STD_037', 'Geraniol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['106-24-1']::text[], 'Geraniol
3,7-Dimethylocta-2,6-dien-1-ol
2,6-Octadien-1-ol, 3,7-dimethyl-, (e)-
2,6-Dimethyl-2,6-octadien-8-ol	
trans-3,7-Dimethyl-2,6-octadien-1-ol	
Geraniol 60 (commercial name)
Geraniol Coeur (commercial name)
Geraniol extra (commercial name)
Geraniol SP (commercial name)
Geraniol Supra (commercial name)
Meranol (commercial name)
Rhodinol pure (commercial name)', null),
  (51, 'IFRA_STD_038', '2-Heptylidene cyclopentan-1-one', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['39189-74-7']::text[], '2-Heptylidenecyclopentanone
2-Heptylidenecyclopentan-1-one
Cyclopentanone, 2-heptylidene-', null),
  (51, 'IFRA_STD_039', '2-Hexenal', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['16635-54-4', '505-57-7', '6728-26-3']::text[], '2-Hexenal
trans-2-Hexenal
2-Hexenal, (E)-
Hexen-2-al
Hex-2-enal
Leaf aldehyde
beta-Propyl acrolein
cis-2-Hexenal
2-Hexenal, (Z)-', null),
  (51, 'IFRA_STD_040', 'alpha-Hexyl cinnamic aldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['101-86-0']::text[], '2-Benzylideneoctanal
Hexyl cinnamal
α-Hexyl cinnamaldehyde
Hexyl cinnamic aldehyde
α-n-Hexylcinnamic aldehyde
Hexyl cinnamyl
α-n-Hexyl-β-phenylacrolein
Octanal, 2-(phenylmethylene)-
Jasmonal H (commercial name)', null),
  (51, 'IFRA_STD_041', 'alpha-Hexylidene cyclopentanone', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['17373-89-6']::text[], '2-Hexylidene cyclopentanone
Cyclopentanone, 2-hexylidene-
2-Hexylidene cyclopentanone
Jasmalone (commercial name)', null),
  (51, 'IFRA_STD_042', 'Hexyl salicylate', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['6259-76-3']::text[], 'Hexyl 2-hydroxybenzoate
Benzoic acid, 2-hydroxy-, hexyl ester
Hexyl o-hydroxybenzoate', null),
  (51, 'IFRA_STD_043', 'Hydroxycitronellal', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['107-75-5']::text[], 'Hydroxycitronellal
Citronellalhydrate
7-Hydroxy-3,7-dimethyloctanal
3,7-Dimethyl-7-hydroxyoctanal
Octanal, 7-hydroxy-3,7-dimethyl-
Oxydihydrocitronellal
Laurinal (commercial name)
Laurine (commercial name)', null),
  (51, 'IFRA_STD_044', '3 and 4-(4-Hydroxy-4-methylpentyl)-3-cyclohexene-1-carboxaldehyde (HMPCC)', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['31906-04-4', '51414-25-6']::text[], '3-Cyclohexen-1-carboxaldehyde, 4-(4-hydroxy-4-methylpentyl)-
3-Cyclohexen-1-carboxaldehyde, 3-(4-hydroxy-4-methylpentyl)-
Hydroxyisohexyl 3-cyclohexene carboxaldehyde
4-(4-Hydroxy-4-methylpenyl) cyclohex-3-enecarbaldehyde
3-(4-Hydroxy-4-methylpentyl) cyclohex-3-ene-1-carbaldehyde
HICC
Lyral (commercial name)
Kovanol (commercial name)
Mugonal (commercial name)
Landolal (commercial name)
Cyclohexal (commercial name)', '[Restricted ingredients: notes] The restrictions as given for the individual categories are not based on the Quantitative Risk Assessment (QRA) methodology but solely represent a pragmatic approach to address the specific situation for 3 and 4-(4-Hydroxy-4-methylpentyl)-3-cyclohexene-1-carboxaldehyde (HMPCC).'),
  (51, 'IFRA_STD_045', 'p-Isobutyl-alpha-methyl hydrocinnamaldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['6658-48-6']::text[], 'p-Isobutyl-α-methyl hydro cinnamic aldehyde
Benzenepropanal, α-methyl-4-(2-methylpropyl)-
3-(4-Isobutyl-phenyl)-2-methyl-propionaldehyde
2-Methyl-3-[4-(2-methylpropyl)phenyl]propanal
3-(p-Cumenyl)-2-methylpropionaldehyde
Cyclamen homoaldehyde
Rhodial (commercial name)
Silvial (commercial name)
Suzaral (commercial name)', null),
  (51, 'IFRA_STD_046', 'Isocyclocitral', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['1335-66-6', '1423-46-7', '67634-07-5']::text[], '1335-66-6:
1-Formyl-[2,4,6-]&[3,5,6-]trimethyl-3-cyclohexene
[2,4,6-]&[3,5,6-]Trimethyl-3-cyclohexene-1-carboxaldehyde

1423-46-7:
3-Cyclohexene-1-carboxaldehyde, 2,4,6-trimethyl-
Neocyclocitral
2,4,6-Trimethylcyclohex-3-enecarbaldehyde
2,4,6-Trimethyl-3-cyclohexenylcarboxaldehyde
2,4,6-Trimethyl-3-cyclohexene-1-carbaldehyde

67634-07-5:
3-Cyclohexene-1-carboxaldehyde, 3,5,6-trimethyl-
3,5,6-Trimethylcyclohex-3-ene-1-carbaldehyde', null),
  (51, 'IFRA_STD_047', 'Isocyclogeraniol', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['68527-77-5']::text[], '3-Cyclohexene-1-methanol, 2,4,6-trimethyl-
2,4,6-Trimethyl-3-cyclohexene-1-methanol', null),
  (51, 'IFRA_STD_048', 'Isoeugenol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['5932-68-3', '97-54-1']::text[], '1-Hydroxy-2-methoxy-4-propen-1-ylbenzene
4-Hydroxy-3-methoxy-1-propen-1-ylbenzene
4-Hydroxy-3-methoxy-1-propenylbenzene
iso-Eugenol
3-Methoxy-4-hydroxy-1-propen-1-ylbenzene
2-Methoxy-4-propenylphenol
2-Methoxy-4-(1-propenyl)phenol
Phenol, 2-methoxy-4-(1-propenyl)-
4-Propenylguaiacol', null),
  (51, 'IFRA_STD_049', 'Jasmine absolute (grandiflorum)', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['8022-96-6', '8024-43-9', '84776-64-7', '90045-94-6']::text[], 'Jasmine absolute (Jasminum grandiflorum L.)
Jasminum grandiflorum absolute
Jasmin officinale var. grandiflorum', null),
  (51, 'IFRA_STD_050', 'Jasmine absolute (sambac)', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['1034798-23-6', '91770-14-8']::text[], 'Jasmin sambac extract
Jasminum sambac (L.) Aiton', null),
  (51, 'IFRA_STD_051', 'Melissa oil (genuine Melissa officinalis L.)', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['8014-71-9', '84082-61-1']::text[], 'Balm oil (Melissa officinalis L.)
Lemon balm oil
Melissa officinalis leaf oil
Melissa oil (Melissa officinalis L.)
Oil of balm', null),
  (51, 'IFRA_STD_052', 'Perilla aldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['2111-75-3']::text[], '1-Cyclohexene-1-carboxaldehyde, 4-(1-methylethenyl)-
4-Isopropenylcyclohex-1-ene-1-carbaldehyde
4-Isopropenyl-1-cyclohexene-1-carboxaldehyde
Dihydrocuminic aldehyde
p-Mentha-1,8-dien-7-al
Perillaldehyde', null),
  (51, 'IFRA_STD_053', 'Menthadiene-7-methyl formate', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['68683-20-5']::text[], 'Cyclohexadiene-1-ethanol, 4-(1-methylethyl)-, formate
Isobergamate
4-(Isopropyl)cyclohexadiene-1-ethyl formate
2-(4-Isopropylcyclohexadienyl)ethyl formate
Menthadienyl formate
4-(1-Methylethyl)cyclohexadiene-1-ethyl formate', null),
  (51, 'IFRA_STD_054', 'p-Methoxybenzaldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['123-11-5']::text[], 'p-Methoxybenzaldehyde	
Anisaldehyde
p-Anisaldehyde
Anisic aldehyde
Anisyl aldehyde
Benzaldehyde, 4-methoxy
4-Methoxybenzaldehyde
Aubepine P Cresol (commercial name)
Aubepine liquid (commercial name)', null),
  (51, 'IFRA_STD_055', 'o-Methoxycinnamaldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['1504-74-1']::text[], '2''-Methoxycinnamaldehyde
ortho-Methoxycinnamic aldehyde
β-(o-Methoxyphenyl)acrolein 
3-(2-Methoxyphenyl)acrylaldehyde
3-(o-Methoxyphenyl)-2-propenal
2-Propenal, 3-(2-methoxyphenyl)-', null),
  (51, 'IFRA_STD_056', 'Methoxy dicyclopentadiene carboxaldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['86803-90-9']::text[], '4,7-Methano-1H-indene-2-carboxaldehyde, octahydro-5-methoxy
8-Methoxytricyclo[5.2.2.1]decane-4-carboxaldehyde
Scentenal (commercial name)', null),
  (51, 'IFRA_STD_057', '4-Methoxy-alpha-methylbenzenepropanal', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['5462-06-6']::text[], '4-Methoxy-alpha-methylbenzenepropanal
4-Methoxy-α-methylbenzenepropanal
2-Anisylpropional
2-(p-Anisyl)propanal
Benzenepropanal, 4-methoxy-α-methyl-
Benzenepropanal, 4-methoxy-alpha-methyl-
Hydrocinnamaldehyde, p-methoxy-a-methyl
p-Methoxyhydratropaldehyde
4-Methoxy-α-methylbenzenepropanal
p-Methoxy-α-methylhydrocinnamaldehyde
p-Methoxy-alpha-methylhydrocinnamaldehyde
3-(4-Methoxyphenyl)-2-methylpropanal
3-(p-Methoxyphenyl)-2-methylpropionaldehyde
2-Methyl-3-(p-methoxyphenyl)propanal
2-Methyl-3-(4-methoxyphenyl)propionaldehyde
Canthoxal (commercial name)
Fennaldehyde (commercial name)
Foliaver (commercial name)', null),
  (51, 'IFRA_STD_058', '2-Methoxy-4-methylphenol', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['93-51-6']::text[], 'Creosol
p-Creosol
p-Cresol, 2-methoxy-
Homoguaiacol
1-Hydroxy-2-methoxy-4-methylbenzene
4-Hydroxy-3-methoxytoluene
2-Methoxy-p-cresol
3-Methoxy-4-hydroxytoluene
4-Methylguaiacol
p-Methylguaiacol
4-Methyl-2-methoxyphenol
Phenol, 2-methoxy-4-methyl-
Valspice (commercial name)', null),
  (51, 'IFRA_STD_059', 'alpha-Methyl-1,3-benzodioxole-5-propionaldehyde (MMDHCA)', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['1205-17-0']::text[], '1,3-Benzodioxole-5-propanal, α-methyl-
3-(1,3-Benzodioxol-5-yl)-2-methylpropanal
2-Methyl-3-(3,4-methylenedioxyphenyl)- propionaldehyde
2-Methyl-3-(3,4-methylenedioxyphenyl)propanal
α-Methyl-3,4-(methylenedioxy)-hydrocinnamaldehyde
α-Methyl-1,3-benzodioxole-5-propanal
α-Methyl-1,3-benzodioxole-5-propionaldehyde
3-(3,4-Methylenedioxyphenyl)-2-methylpropanal
α-Methyl-3,4-methylene-dioxyhydrocinnamic aldehyde
Heliofolal (commercial name) 
Heliogan (commercial name) 
Helional (commercial name) 
Tropional (commercial name)', null),
  (51, 'IFRA_STD_060', 'alpha-Methyl cinnamic aldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['101-39-3']::text[], 'α-Methylcinnamaldehyde
α-Methylcinnamyl aldehyde
α-Methylcinnamic aldehyde
2-Methyl-3-phenyl-2-propenal
3-Phenyl-2-methylacrolein
2-Propenyl, 2-methyl-3-phenyl-', null),
  (51, 'IFRA_STD_061', '6-Methyl-3,5-heptadien-2-one', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['1604-28-0']::text[], '3,5-Heptadien-2-one, 6-methyl-
Methylheptadienone
2-Methylhepta-2,4-dien-6-one
6-Methylhepta-3,5-dien-2-one', null),
  (51, 'IFRA_STD_062', 'Methyl heptine carbonate', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['111-12-6']::text[], 'Methyl heptyne carbonate
Methyl 2-octynoate
Methyl oct-2-ynoate
MHC
2-Octynoic acid, methyl ester
Folione (commercial name)', '[Restricted ingredients: notes] When used in the same fragrance compound within a specific QRA category, the sum total of Methyl heptine carbonate (MHC, CAS number 111-12-6) and Methyl octine carbonate (MOC, CAS number 111-80-8) contributions must not exceed the maximum permitted level for MHC. At the same time, the contribution from MOC should always respect the maximum levels permitted in the respective categories as listed in the Standard for MOC.'),
  (51, 'IFRA_STD_063', 'Methyl ionone, mixed isomers', 'RESTRICTION_SPECIFICATION', 'DERMAL SENSITIZATION', 49, array['127-42-4', '127-43-5', '127-51-5', '1335-46-2', '1335-94-0', '7779-30-8', '79-89-0']::text[], '1335-46-2:
Methyl ionone, mixture of isomers

127-42-4:
Methyl-α-ionone
α-Cetone
α-Cyclocitrylidenebutanone
α-Cyclocitrylidenemethyl ethyl ketone
Methyl-α-ionone
α-Methylionone
1-Penten-3-one, 1-(2,6,6-trimethyl-2-cyclohexen-1-yl)-, [R-(E)]-
(R-(E))-1-(2,6,6-Trimethyl-2-cyclohexen-1-yl)pent-1-en-3-one

127-43-5:
Methyl-beta-ionone
Methyl-ß-ionone
β-Methylionone
β-Cetone
β-Cyclocitrylidenebutanone
β-Iraldeine
1-Penten-3-one, 1-(2,6,6-trimethyl-1-cyclohexen-1-yl)-
5-(2,6,6-Trimethyl-1-cyclohexen-1-yl)-4-penten-3-one
1-(2,6,6-Trimethyl-1-cyclohexen-1-yl)pent -1-en-3-one

127-51-5:
α-Isomethylionone
3-Buten-2-one, 3-methyl-4-(2,6,6-trimethyl-2-cyclohexen-1-yl)-
3-Methyl-4-(2,6,6-trimethyl-2-cyclohexen-1-yl)-3-buten-2-one
α-Isomethyl ionone
Iraldeine gamma
Isoraldeine 95 (commercial name)

7779-30-8:
1-(2,6,6-Trimethyl-2-cyclohexen-1-yl)pent-1-en-3-one
1-Penten-3-one, 1-(2,6,6-trimethyl-2-cyclohexen-1-yl)-

79-89-0:
iso-Methyl-β-ionone
3-Buten-2-one, 3-methyl-4-(2,6,6-trimethyl-1-cyclohexen-1-yl)- 
3-Methyl-4-(2,6,6-trimethylcyclohex-1-en-1-yl)but-3-en-2-one
δ-Iraldeine

1335-94-0:
Irone', '[Restricted ingredients: notes] The above limits apply to Methyl ionone isomers used individually or in combination.
[Specified ingredients: notes] Pseudo methyl ionones (CAS numbers 26651-96-7, 72968-25-3, 1117-41-5) should not be used as fragrance ingredient as such. A level of up to 2% of Pseudo methyl ionones as an impurity in Methyl ionones is accepted.'),
  (51, 'IFRA_STD_064', 'Methyl octine carbonate', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['111-80-8']::text[], 'Methyl octyne carbonate
Methyl 2-nonynoate
2-Nonynoic acid, methyl ester
MOC', '[Restricted ingredients: notes] When used in the same fragrance compound within a specific QRA category, the sum total of and Methyl heptine carbonate (MHC, CAS number 111-12-6) and Methyl octine carbonate (MOC, CAS number 111-80-8) contributions must not exceed the maximum permitted level for MHC. At the same time, the contribution from MOC should always respect the maximum levels permitted as listed in the table above.'),
  (51, 'IFRA_STD_065', '3-Methyl-2-(pentyloxy)cyclopent-2-en-1-one', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['68922-13-4']::text[], '2-Cyclopenten-1-one, 2-(pentyloxy)-3-methyl-
Pentyloxy cyclopentenone (commercial name)', null),
  (51, 'IFRA_STD_066', '2-Nonyn-1-al dimethyl acetal', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['13257-44-8']::text[], '1,1-Dimethoxynon-2-yne
2-Nonyn-1-al-Dimeth-Acetyl
2-Nonyne, 1,1-dimethoxy-
Parmavert (commercial name)', null),
  (51, 'IFRA_STD_067', 'Oakmoss extracts', 'RESTRICTION_SPECIFICATION', 'DERMAL SENSITIZATION', 49, array['68917-10-2', '9000-50-4', '90028-68-5']::text[], 'Oakmoss absolute
Evernia absolute
Evernia prunastri, ext.
Mousse de Chêne absolute
Oakmoss absolute (Evernia prunastri)
Evernia prunastri (Oakmoss) extract', '[Restricted ingredients: notes] For Oakmoss and Treemoss extracts, the restrictions in the Standards are directly linked to the presence of Atranol and Chloroatranol in the finished products. To ensure that those remain below trace levels, the upper concentration levels have not been increased (compared its last publication in the Amendment 43 (2008)). 

In the presence of Treemoss extracts, the level of Oakmoss in the respective category has to be reduced accordingly, such that the total amount of both extracts does not exceed the maximum permitted level in each category as listed in the table above.
If the same fragrance mixture is intended to be used in more than one IFRA Category, then the most restrictive limitation (based on foreseen use concentrations and maximum permitted level) will apply.
[Specified ingredients: notes] Oakmoss extracts must not contain added Treemoss, which is a source of resin acids.
Traces of resin acids may be carried over to commercial qualities of Oakmoss in the manufacturing process. These traces must not exceed 0.1% (1000 ppm) of Dehydroabietic acid (DHA) in the extract. The concentration of resin acids in Oakmoss can be measured with an High Performance Liquid Chromatography (HPLC) Reverse Phase – Spectrofluorometry method.
Further, levels of Atranol and Chloroatranol should each be below 100 ppm in Oakmoss extracts.'),
  (51, 'IFRA_STD_068', '1-(1,2,3,4,5,6,7,8 Octahydro-2,3,8,8-tetramethyl-2-naphthalenyl) ethanone (OTNE)', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['54464-57-2', '54464-59-4', '68155-66-8', '68155-67-9']::text[], '54464-57-2: 
1-(1,2,3,4,5,6,7,8-Octahydro-2,3,8,8-tetramethyl-2-naphthalenyl)ethanone
1'',2'',3'',4'',5'',6'',7'',8''-Octahydro-2'',3'',8'',8''-tetramethyl-2''-acetonaphthone
1-(1,2,3,4,5,6,7,8-octahydro-2,3,8,8-tetramethyl-2-naphthyl)ethan-1-one
1-(2,3,8,8-tetramethyl-1,2,3,4,5,6,7,8-octahydronaphthalen-2-yl)ethanone
2-acetoxy-2,3,8,8-tetramethyloctahydronaphthalene
7-Acetyl-1,2,3,4,5,6,7,8-octahydro-1,1,6,7-tetramethylnaphthalene
Ethanone, 1-(1,2,3,4,5,6,7,8-octahydro-2,3,8,8-tetramethyl-2-naphthalenyl)-
Naphthalene, 1,2,3,4,5,6,7,8-octahydro-2,3,8,8-tetramethyl-2-aceto
Ambergris Ketone (commercial name)
Amberonne (commercial name)
Ambralux (commercial name)
Boisvelone (commercial name)
Iso Ambois Super (commercial name)
Iso-E Super (commercial name)
Iso Gamma Super (commercial name)
Isocyclemone E (commercial name)
Orbitone (commercial name)
Orbitone T (commercial name)

54464-59-4: 
1- (1,2,3,4,5,6,7,8- octahydro-2,3,5,5- tetramethyl-2- naphthalenyl)ethan-1-one
1-(2,3,5,5-tetramethyl-1,2,3,4,5,6,7,8-octahydronaphthalen-2-yl)ethanone
Ethanone, 1- (1,2,3,4,5,6,7,8- octahydro-2,3,5,5- tetramethyl-2- naphthalenyl)-
Naphthalene, 1,2,3,4,5,6,7,8-octahydro-2,3,5,5-tetramethyl-2-aceto

68155-66-8: 
1-(1,2,3,5,6,7,8,8a-Octahydro-2,3,8,8-tetramethyl-2-naphthyl)ethan-1-one
1-(2,3,8,8-Tetramethyl-1,2,3,5,6,7,8,8a-octahydronaphthalen-2-yl)ethanone
Ethanone, 1-(1,2,3,5,6,7,8,8a-octahydro-2,3,8,8-tetramethyl-2-naphthalenyl)-
Decalene, 2-Aceto-2,3,8,8-Tetramethyl(1,2,3,5,6,7,8,8A-Octahydro)-

68155-67-9: 
1-(1,2,3,4,6,7,8,8a-Octahydro-2,3,8,8-tetramethyl-2-naphthyl)ethan-1-one
1-(2,3,8,8-Tetramethyl-1,2,3,4,6,7,8,8a-octahydronaphthalen-2-yl)ethanone
Ethanone, 1-(1,2,3,4,6,7,8,8a-octahydro-2,3,8,8-tetramethyl-2-naphthalenyl)-
Decalene, 2-Aceto-2,3,8,8-Tetramethyl(1,2,3,4,6,7,8,8A-Octahydro)-', null),
  (51, 'IFRA_STD_069', '1-Octen-3-yl acetate', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['2442-10-6']::text[], '3-Acetoxyoctene
Amyl crotonyl acetate
Amyl vinyl carbinyl acetate
1-Octen-3-ol, acetate
Octenyl acetate
β-Octenyl acetate
n-Pentyl vinyl carbinol acetate', null),
  (51, 'IFRA_STD_070', 'Opoponax', 'RESTRICTION_SPECIFICATION', 'DERMAL SENSITIZATION', 49, array['8021-36-1', '9000-78-6', '93384-32-8']::text[], 'Opoponax (absolute, resinoid, oil, gum, tincture)
Bisabol-myrrh
Sweet myrrh
Opoponax chironium (L.) W.D.J. Koch
Commiphora erythraea Engler var. glabrescens (Burseraceae)', '[Specified ingredients: notes] Opoponax oil can be obtained from solvent extraction or pyrolysis.
Opoponax oil obtained through pyrolysis shall be rectified according to Good Manufacturing Practices (GMP) and the content of Polycyclic Aromatic Hydrocarbons (PAH) resulting from their use shall respect the following requirement:
Benzopyrene and 1,2-Benzanthracene are to be used as markers for PAH. If used alone or in combination with rectified Cade oil, rectified Birch tar oils or rectified Styrax oil, the total concentration of both of the markers should not exceed 1 ppb in the final product.'),
  (51, 'IFRA_STD_071', 'Peru balsam', 'RESTRICTION_PROHIBITION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['8007-00-9']::text[], 'Prohibition of Peru balsam crude:

Exudation of Myroxylon pereirae Klotsch

Restriction of Peru balsam extracts and distillates:

Balsam oil, Peru (Myroxylon pereirae Klotzsch)
Myroxylon pereirae (Balsam Peru) oil
Myroxylon pereirae (Balsam Peru) resin
Myroxylon pereirae oil
Peru balsam absolute
Peru balsam anhydrol', '[Prohibited fragrance ingredients: notes] Peru balsam crude should not be used as a fragrance ingredient for any finished product application.
[Restricted ingredients: notes] The restriction only applies to Peru balsam extracts and distillates (Peru balsam oil, absolute and anhydrol).'),
  (51, 'IFRA_STD_072', '1-(2,4,4,5,5-Pentamethyl-1-cyclopenten-1-yl)ethan-1-one', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['13144-88-2']::text[], '2-Acetyl-1,3,3,4,4-pentamethyl-1-cyclopentene
Ethanone, 1-(2,4,4,5,5-pentamethyl-1-cyclopenten-1-yl)-
1-(2,4,4,5,5-Pentamethylcyclopent-1-en-1-yl)ethanone
Alpinone (commercial name)', null),
  (51, 'IFRA_STD_073', 'Phenylacetaldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['122-78-1']::text[], 'Benzeneacetaldehyde
Benzylcarboxaldehyde
Hyacinthin
1-Oxo-2-phenylethane
α-Tolualdehyde
α-Toluic aldehyde
Phenylacetic aldehyde
Phenyl acetic aldehyde (pure) (commercial name)', null),
  (51, 'IFRA_STD_074', '3-Phenylbutanal', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['16251-77-7']::text[], 'Benzenepropanal, β-methyl-
3-Phenylbutyraldehyde
3-Phenyl-3-methylpropanal
Trifernal (commercial name)', null),
  (51, 'IFRA_STD_075', '2-Phenylpropionaldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['1340-11-0', '34713-70-7', '93-53-8']::text[], 'Benzeneacetaldehyde, α-methyl-
Hydratropaldehyde
α-Methylphenylacetaldehyde
α-Methyltolualdehyde
2-Phenylpropanal
α-Phenylpropionaldehyde
(R)-2-Phenylpropionaldehyde
(S)-2-Phenylpropionaldehyde
Hydratropic aldehyde (commercial name)', null),
  (51, 'IFRA_STD_076', '3-Propylidenephthalide', 'RESTRICTION', 'DERMAL SENSITIZATION', 51, array['17369-59-4']::text[], '3-Propylidenephthalide
1(3H)-Isobenzofuranone, 3-propylidene-
3-Propylidene-2-benzofuran-1(3H)-one
Propylidene phthalide', null),
  (51, 'IFRA_STD_077', 'Rose ketones', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['23696-85-7', '23726-91-2', '23726-92-3', '23726-93-4', '23726-94-5', '24720-09-0', '33673-71-1', '35044-68-9', '35087-49-1', '39872-57-6', '43052-87-5', '57378-68-4', '59739-63-8', '70266-48-7', '71048-82-3', '87064-19-5']::text[], '23696-85-7 (C13H18O):
1-(2,6,6-Trimethylcyclohexa-1,3-dienyl)-2-buten-1-one
2-Buten-1-one, 1-(2,6,6-trimethyl-1,3-cyclohexadien-1-yl)
Damascenone (commercial name)
Floriffone (commercial name)
Doricenone (commercial name)

23726-93-4 (C13H18O):
(E)-1-(2,6,6-Trimethyl-1,3-cyclohexadien-1-yl)-2-buten-1-one
trans-1-(2,6,6-Trimethyl-1,3-cyclohexadien-1-yl)-2-buten-1-one
2-Buten-1-one, 1-(2,6,6-trimethyl-1,3-cyclohexadien-1-yl)- (2E)-
β-Damascenone

59739-63-8 (C13H18O): 
(2Z)-1-(2,6,6-trimethyl-1,3-cyclohexadien-1-yl)-2-Buten-1-one
(Z)-β-Damascenone
cis-Damascenone
2-Buten-1-one, 1-(2,6,6-trimethyl-1,3-cyclohexadien-1-y1)-, (Z)-

43052-87-5 (C13H20O):
α-1-(2,6,6-Trimethyl-2-cyclohexen-1-yl)-2-buten-1-one
2-Buten-1-one, 1-(2,6,6-trimethyl-2-cyclohexen-1-yl)-
α-Damascone (commercial name)
Dihydrofloriffone α (commercial name)

24720-09-0 (C13H20O):
(E)-1-(2,6,6-Trimethyl-2-cyclohexen-1-yl)-2-buten-1-one
trans-1-(2,6,6-Trimethyl-2-cyclohexen-1-yl)but-2-en-1-one
2-Buten-1-one, 1-(2,6,6-trimethyl-2-cyclohexen-1-yl)-, (2E)-
trans-α-Damascone
Damascone alpha (commercial name)
Dorinone (commercial name)

23726-94-5 (C13H20O):
(Z)-1-(2,6,6-Trimethyl-2-cyclohexen-1-yl)-2-buten-1-one
cis-1-(2,6,6-Trimethyl-2-cyclohexen-1-yl)-2-buten-1-one
2-Buten-1-one, 1-(2,6,6-trimethyl-2-cyclohexen-1-yl)-, (Z)-
1-(2,6,6-Trimethylcyclohex-2-en-1-yl)but-2-en-1-one
cis-α-Damascone

23726-92-3 (C13H20O):
1-(2,6,6-Trimethylcyclohex-1-en-1-yl)but-2-en-1-one
(Z)-β-1-(2,6,6-Trimethyl-1-cyclohexen-1-yl)-2-buten-1-one
(Z)-1-(2,6,6-Trimethyl-1-cyclohexen-1-yl)-2-buten-1-one
2-Buten-1-one, 1-(2,6,6-trimethyl-1-cyclohexen-1-yl)-, (2Z)-
cis-β-Damascone (commercial name)
Damasione (commercial name)

23726-91-2 (C13H20O):
(2E)-1-(2,6,6-Trimethyl-1-cyclohexen-1-yl)-2-buten-1-one
(E)-1-(2,6,6-Trimethyl-1-cyclohexen-1-yl)-2-buten-1-one
1-(2,6,6-Trimethylcyclohex-1-en-1-yl)but-2-en-1-one
trans-β-Damascone, 
Dihydrofloriffone β (commercial name)
Dorinone beta (commercial name)

35044-68-9 (C13H20O):
2-Buten-1-one, 1-(2,6,6-trimethyl-1-cyclohexen-1-yl)-
2,6,6-Trimethyl-1-(2-butenoyl)-1-cyclohexene
2,6,6-Trimethyl-1-crotonoyl-1-cyclohexene
1-(2,6,6-Trimethylcyclohexenyl)-2-buten-1-one
1-(2,6,6-Trimethyl-1-cyclohexen-1-yl)-2-buten-1-one
Damascone β-
β-Damascone

57378-68-4 (C13H20O):
δ-1-(2,6,6-Trimethyl-3-cyclohexen-1-yl)-2-buten-1-one 
2-Buten-1-one, 1-(2,6,6-trimethyl-3-cyclohexen-1-yl)-
1-(2,6,6-Trimethyl-3-cyclohexen-1-yl)-2-buten-1-one
δ-Damascone (commercial name)
Dihydrofloriffone TD (commercial name)

71048-82-3 (C13H20O):
[1α(E),2β]-1-(2,6,6-Trimethyl-3-cyclohexen-1-yl)-2-buten-1-one
[1α(E),2β]-1-(2,6,6-Trimethylcyclohex-3-en-1-yl)but-2-en-1-one
trans,trans-δ-Damascone
trans δ Damascone (commercial name)

35087-49-1 (C13H20O):
1-(2,2-Dimethyl-6-methylenecyclohexyl)but-2-en-1-one
2-Buten-1-one, 1-(2,2-dimethyl-6-methylenecyclohexyl)-
Damascone γ-
γ-Damascone (commercial name)

39872-57-6 (C13H20O):
1-(2,4,4-Trimethyl-2-cyclohexen-1-yl)-2-buten-1-one
(E)-1-(2,4,4-Trimethyl-2-cyclohexen-1-yl)-2-buten-1-one
2-Buten-1-one, 1-(2,4,4-trimethyl-2-cyclohexen-1-yl)-, (2E)-
2-Buten-1-one, 1-(2,4,4-trimethyl-2-cyclohexen-1-yl)-, (E)-
(E)-α-Isodamascone
Isodamascone (high α) (commercial name)

70266-48-7 (C13H20O):
1-(2,4,4-Trimethyl-1-cyclohexen-1-yl)-2-buten-1-one
2-Buten-1-one, 1-(2,4,4-trimethyl-1-cyclohexene-1-yl)
Generic β-Isodamascone
Isodamascone (standard quality) (commercial name)

33673-71-1 (C13H20O):
1-(2,4,4-Trimethylcyclohex-2-en-1-yl)but-2-en-1-one
1-(2,4,4-Trimethyl-2-cyclohexen-1-yl)-2-buten-1-one
2-Buten-1-one, 1-(2,4,4-trimethyl-2-cyclohexen-1-yl)-
Isodamascone (isomer unspecified)
Generic δ-Isodamascone

87064-19-5 (C13H20O): 
2-Buten-1-one, 1-(2,4,4-trimethyl-2-cyclohexen-1-yl)-, (Z)-
cis-Isodamascone 

(including all geometric isomers).', '[Restricted ingredients: notes] The above limits apply to Rose Ketones used individually or in combination. The sum of concentrations of Rose ketones isomers should not exceed the maximum concentration levels established by this Standard.'),
  (51, 'IFRA_STD_078', 'Styrax', 'PROHIBITION_RESTRICTION_SPECIFICATION', 'DERMAL SENSITIZATION', 49, array['101227-15-0', '8024-01-9', '8046-19-3', '94891-27-7', '94891-28-8']::text[], 'Prohibition of the crude material:

Styrax crude gums

Restriction and Specification of the distillates: 

Styrax resin 
Styrax oil 
Styrax oil, rectified 
Styrax oil, pyrogenated, distilled', '[Prohibited fragrance ingredients: notes] Crude gums of Liquidambar styraficula L. var. macrophylla or Liquidambar orientalis Mill. should not be used as fragrance ingredients for any finished product application.
[Restricted ingredients: notes] Only extracts or distillates (resinoids, absolutes and oils), prepared from exudations of Liquidambar styraciflua L. var. macrophylla or Liquidambar orientalis Mill., can be used.
[Specified ingredients: notes] Styrax oil can be obtained from solvent extraction or pyrolysis.
Styrax oil obtained through pyrolysis shall be rectified according to Good Manufacturing Practices (GMP) and the content of Polycyclic Aromatic Hydrocarbons (PAH) resulting from their use shall respect the following requirement: 
Benzopyrene and 1,2-Benzanthracene are to be used as markers for PAH. If used alone or in combination with rectified Cade oil, rectified Birch tar oils or rectified Opoponax oil, the total concentration of both of the markers should not exceed 1 ppb in the final product.'),
  (51, 'IFRA_STD_079', 'Tea leaf absolute', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['84650-60-2']::text[], 'Camellia sinensis leaf extract
Tea, ext.
Tea sinensis absolute
Thea chinensis ext.
Thea sinensis ext.', null),
  (51, 'IFRA_STD_080', 'Treemoss extracts', 'RESTRICTION_SPECIFICATION', 'DERMAL SENSITIZATION', 49, array['68648-41-9', '68917-40-8', '90028-67-4']::text[], 'Treemoss absolute (Pseudevernia furfuracea)
Treemoss (Usnea furfuracea)
Treemoss colourless
Pseudevernia furfuracea extract
Cedar moss', '[Restricted ingredients: notes] For Treemoss and Oakmoss extracts, the restrictions in the Standards are directly linked to the presence of Atranol and Chloroatranol in the finished products. To ensure that those remain below trace levels, the upper concentration levels have not been increased (compared its last publication in the Amendment 43 (2008)). 

In the presence of Oakmoss extracts, the level of Treemoss in the respective category has to be reduced accordingly, such that the total amount of both extracts does not exceed the maximum permitted level in each category as listed in the table above.
If the same fragrance mixture is intended to be used in more than one IFRA Category, then the most restrictive limitation (based on foreseen use concentrations and maximum permitted level) will apply.
[Specified ingredients: notes] Treemoss extracts shall not contain more than 0.8% of Dehydroabietic acid (DHA) as a marker of 2% of total resin acids. The concentration of DHA (about 40% of the total resin acids) in Treemoss can be measured with an High Performance Liquid Chromatography (HPLC) reverse phase - spectrofluorometry method.
Further, levels of Atranol and Chloroatranol should each be below 100 ppm in Treemoss extracts.'),
  (51, 'IFRA_STD_081', 'o,m,p-Tolualdehydes and their mixtures', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['104-87-0', '1334-78-7', '529-20-4', '620-23-5']::text[], '529-20-4:
2-Tolualdehyde
ortho-Tolualdehyde
2-Methylbenzaldehyde

620-23-4:
meta-Tolualdehyde
3-Methyl-benzaldehyde
Benzaldehyde, 3-methyl-

104-87-0:
para-Tolualdehyde
4-Methyl-benzaldehyde
Benzaldehyde, 4-methyl-
Tolyl Aldehyde Para Extra (commercial name)

1334-78-7:
Benzaldehyde, methyl-
o,m,p-Methyl-benzaldehydes
Methylbenzaldehyde (mixed 2,3,4)	
Tolualdehydes (mixed o,m,p)
Tolualdehyde
Toluic aldehyde (mixed 2,3,4)', '[Restricted ingredients: notes] The above limits apply to ortho-, meta- and para-Tolualdehyde used individually or in combination.'),
  (51, 'IFRA_STD_082', '2,6,6-Trimethylcyclohex-1,3-dienyl methanal', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['116-26-7']::text[], '2,6,6-Trimethylcyclohexa-1,3-diene-1-carbaldehyde
2,6,6-Trimethyl-1,3-cyclohexadienal
2,6,6-Trimethyl-1,3-cyclohexadien-1-carboxaldehyde
1,1,3-Trimethyl-2-formylcyclohexa-2,4-diene
Dehydro-β-cyclocitral
Safranal (commercial name)', '[Contributions from other sources: notes] 2,6,6-Trimethylcyclohex-1,3-dienyl methanal has been found in natural extracts but only at trace levels.'),
  (51, 'IFRA_STD_083', 'Verbena oil and absolute (Lippia citriodora Kunth.)', 'RESTRICTION_PROHIBITION', 'DERMAL SENSITIZATION AND PHOTOTOXICITY', 49, array['8024-12-2', '85116-63-8']::text[], 'Prohibition of Verbena oils:

Lippia citriodora oils

Restriction of Verbena absolutes:

Lippia citriodora absolute
Verbena absolute
Aloysia triphylla absolute
Lippia triphylla absolute
Verbena triphylla absolute
Zappania citrodora absolute', '[Prohibited fragrance ingredients: notes] Verbena oils from Lippia citriodora Kunth. should not be used as a fragrance ingredient, based on its sensitizing and phototoxic potential.
[Restricted ingredients: notes] Only Verbena absolutes from Lippia citriodora Kunth. can be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_084', 'Ylang ylang extracts', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['68606-83-7', '8006-81-3', '83863-30-3']::text[], 'Cananga odorata (Lamark) (Hooker et Thompson) (Anonaceae)
Cananga odorata extract
Cananga odorata flower oil
Cananga odorata oil
Cananga oil
Ylang ylang oil (Cananga odorata Hook. f. and Thomas)
Ylang ylang oil extra
Ylang ylang oil I
Ylang ylang oil II
Ylang ylang oil III
Ylang ylang, Cananga odorata, ext.', null),
  (51, 'IFRA_STD_085', 'Acetyl hexamethyl indan (AHMI)', 'RESTRICTION', 'PHOTOTOXICITY', 49, array['15323-35-0']::text[], '5-Acetyl-1,1,2,3,3,6-hexamethyl indan
6-Acetyl-1,1,2,3,3,5-hexamethylindane
1-(2,3-Dihydro-1,1,2,3,3,6-hexamethyl-1h-inden-5-yl)ethanone
Ethanone, 1-(2,3-dihydro-1,1,2,3,3,6-hexamethyl-1H-inden-5-yl)-
1,1,2,3,3,6-Hexamethylindan-5-yl methylketone
Phantolid (commercial name)', '[Restricted ingredients due to phototoxicity considerations: notes] The Standard is set due to the phototoxic effects of Acetyl hexamethyl indan (AHMI). For more detailed information on the application of this Standard, please refer to the note on phototoxic ingredients in chapter 1 of the Guidance for the use of IFRA Standards.'),
  (51, 'IFRA_STD_086', 'Angelica root oil', 'RESTRICTION', 'PHOTOTOXICITY', 49, array['8015-64-3', '84775-41-7']::text[], 'Angelica archangelica oil
Angelica archangelica root oil
Angelica root oil (Angelica archangelica L.)', '[Restricted ingredients due to phototoxicity considerations: notes] The Standard is set due to the phototoxic effects of Angelica root oil. For more detailed information on the application of this Standard, please refer to the note on phototoxic ingredients in chapter 1 of the Guidance for the use of IFRA Standards.
If the level of furocoumarins is unknown, the restriction level specified in this IFRA Standard applies. 
Combination effects of phototoxic ingredients are only taken into consideration for the furocoumarin-containing fragrance ingredients (extracts) listed in the IFRA Standard of Citrus oils and other furocoumarins containing essential oils. 
If combinations of furocoumarin-containing phototoxic fragrance ingredients (extracts) are used, the use levels must be reduced accordingly. The sum of the concentrations of all furocoumarin-containing phototoxic fragrance ingredients (extracts), expressed in of their recommended upper concentration level in the consumer product shall not exceed 100.'),
  (51, 'IFRA_STD_087', 'Bergamot oil expressed', 'RESTRICTION', 'PHOTOTOXICITY', 49, array['8007-75-8', '89957-91-5']::text[], 'Not applicable.', '[Restricted ingredients due to phototoxicity considerations: notes] The Standard is set due to the phototoxic effects of Bergamot oil expressed. For more detailed information on the application of this Standard, please refer to the note on phototoxic ingredients in Chapter 1 of the Guidance for the use of IFRA Standards.
If the level of furocoumarins is unknown, the restriction level specified in this IFRA Standard applies. 
Combination effects of phototoxic ingredients are only taken into consideration for the furocoumarin-containing fragrance ingredients (extracts) listed in the IFRA Standard of Citrus oils and other furocoumarins containing essential oils. 
If combinations of furocoumarin-containing phototoxic fragrance ingredients (extracts) are used, the use levels must be reduced accordingly. The sum of the concentrations of all furocoumarin-containing phototoxic fragrance ingredients (extracts), expressed in of their recommended upper concentration level in the consumer product shall not exceed 100.
For qualities of the expressed oil in which the less volatile components have been concentrated by partial or total removal of the terpene fraction, this limit should be reduced in proportion to the degree of concentration.'),
  (51, 'IFRA_STD_088', 'Bitter orange peel oil expressed', 'RESTRICTION', 'PHOTOTOXICITY', 49, array['68916-04-1', '72968-50-4']::text[], 'Orange Peel Oil, Bitter (Citrus aurantium L. subsp amara L.)
Bitter orange oil (Citrus aurantium L. subsp. amara L.)
Citrus aurantium peel oil
Curacao peel oil (Citrus aurantium L.)
Daidai peel oil (Citrus aurantium L.)', '[Restricted ingredients due to phototoxicity considerations: notes] The Standard is set due to the phototoxic effects of Bitter orange peel oil expressed. For more detailed information on the application of this Standard, please refer to the note on phototoxic ingredients in chapter 1 of the Guidance for the use of IFRA Standards.
If the level of furocoumarins is unknown, the restriction level specified in this IFRA Standard applies. 
Combination effects of phototoxic ingredients are only taken into consideration for the furocoumarin-containing fragrance ingredients (extracts) listed in the IFRA Standard of Citrus oils and other furocoumarins containing essential oils. 
If combinations of furocoumarin-containing phototoxic fragrance ingredients (extracts) are used, the use levels must be reduced accordingly. The sum of the concentrations of all furocoumarin-containing phototoxic fragrance ingredients (extracts), expressed in of their recommended upper concentration level in the consumer product shall not exceed 100.
For qualities of the expressed oil in which the less volatile components have been concentrated by partial or total removal of the terpene fraction, this limit should be reduced in proportion to the degree of concentration.'),
  (51, 'IFRA_STD_089', 'Citrus oils and other furocoumarins containing essential oils', 'RESTRICTION', 'PHOTOTOXICITY', 49, array[]::text[], 'Not applicable.', '[Restricted ingredients due to phototoxicity considerations: notes] The Standard is set due to the phototoxic effects of Citrus oils and other furocoumarins containing essential oils. For more detailed information on the application of this Standard, please refer to the note on phototoxic ingredients in chapter 1 of the Guidance for the use of IFRA Standards.
Where the Bergapten (5-Methoxypsoralen, (5-MOP)) content of all relevant oils present in a compound has been determined, it is recommended that for applications on areas of skin exposed to UV-light, the total level of Bergapten in the consumer products should not exceed 0.0015% (15 ppm). This upper concentration level only applies to applications on skin exposed to UV-light, excluding rinse-off products and incidental skin contact products as detailed in the Guidance for the use of IFRA Standards.
Where the level of Bergapten has not been determined by appropriate methods, the limits specified in the guidelines on individual oils should apply. In those cases, where such oils are used in combination with other furocoumarin-containing phototoxic fragrance ingredients (extracts), the additive effect has to be taken into consideration and the concentration levels have to be reduced accordingly. 
The sum of the concentrations of all furocoumarin-containing phototoxic fragrance ingredients (extracts), expressed in of their recommended upper concentration level in the finished consumer product, shall not exceed 100. Restrictions for furocoumarin-containing fragrance ingredients (extracts) have been recommended for:
• Angelica root oil,
• Bergamot oil expressed,
• Bitter orange oil expressed,
• Cumin oil,
• Grapefruit oil expressed,
• Lemon oil cold pressed,
• Lime oil expressed,
• Rue oil.
The following essential oils contain small amounts of phototoxic furocoumarins (typical levels are provided in brackets): 
• Petitgrain Mandarin oil (50 ppm),
• Tangerine oil cold pressed (50 ppm),
• Parsley leaf oil (20 ppm).
These levels are not high enough to require special restrictions if used alone, but if used in combination with one or the other furocoumarin-containing phototoxic fragrance ingredients (extracts), attention should be paid that the total level of Bergapten in the consumer product does not exceed 15 ppm.'),
  (51, 'IFRA_STD_090', 'Cumin oil', 'RESTRICTION', 'PHOTOTOXICITY', 49, array['8014-13-9', '84775-51-9']::text[], 'Cumin seed oil
Cuminum cyminum (Cumin) seed oil
Cuminum cyminum L.
Cuminum cyminum oil
Oils, cumin (Cuminum cyminum)', '[Restricted ingredients due to phototoxicity considerations: notes] The Standard is set due to the phototoxic effects of Cumin oil. For more detailed information on the application of this Standard, please refer to the note on phototoxic ingredients in chapter 1 of the Guidance for the use of IFRA Standards.
If the level of furocoumarins is unknown, the restriction level specified in this IFRA Standard applies. 
Combination effects of phototoxic ingredients are only taken into consideration for the furocoumarin-containing fragrance ingredients (extracts) listed in the IFRA Standard of Citrus oils and other furocoumarins containing essential oils. 
If combinations of furocoumarin-containing phototoxic fragrance ingredients (extracts) are used, the use levels must be reduced accordingly. The sum of the concentrations of all furocoumarin-containing phototoxic fragrance ingredients (extracts), expressed in of their recommended upper concentration level in the consumer product shall not exceed 100.'),
  (51, 'IFRA_STD_091', 'Grapefruit oil expressed', 'RESTRICTION', 'PHOTOTOXICITY', 49, array['8016-20-4', '90045-43-5']::text[], 'Not applicable.', '[Restricted ingredients due to phototoxicity considerations: notes] The Standard is set due to the phototoxic effects of Grapefruit oil expressed. For more detailed information on the application of this Standard, please refer to the note on phototoxic ingredients in chapter 1 of the Guidance for the use of IFRA Standards.
If the level of furocoumarins is unknown, the restriction level specified in this IFRA Standard applies. 
Combination effects of phototoxic ingredients are only taken into consideration for the furocoumarin-containing fragrance ingredients (extracts) listed in the IFRA Standard of Citrus oils and other furocoumarins containing essential oils. 
If combinations of furocoumarin-containing phototoxic fragrance ingredients (extracts) are used, the use levels must be reduced accordingly. The sum of the concentrations of all furocoumarin-containing phototoxic fragrance ingredients (extracts), expressed in of their recommended upper concentration level in the consumer product shall not exceed 100.
For qualities of the expressed oil in which the less volatile components have been concentrated by partial or total removal of the terpene fraction, this limit should be reduced in proportion to the degree of concentration.'),
  (51, 'IFRA_STD_092', 'Lemon oil cold pressed', 'RESTRICTION', 'PHOTOTOXICITY', 49, array['8008-56-8', '84929-31-7']::text[], 'Not applicable.', '[Restricted ingredients due to phototoxicity considerations: notes] The Standard is set due to the phototoxic effects of Lemon oil cold pressed. For more detailed information on the application of this Standard, please refer to the note on phototoxic ingredients in chapter 1 of the Guidance for the use of IFRA Standards.
If the level of furocoumarins is unknown, the restriction level specified in this IFRA Standard applies. 
Combination effects of phototoxic ingredients are only taken into consideration for the furocoumarin-containing fragrance ingredients (extracts) listed in the IFRA Standard of Citrus oils and other furocoumarins containing essential oils. 
If combinations of furocoumarin-containing phototoxic fragrance ingredients (extracts) are used, the use levels must be reduced accordingly. The sum of the concentrations of all furocoumarin-containing phototoxic fragrance ingredients (extracts), expressed in of their recommended upper concentration level in the consumer product shall not exceed 100.
For qualities of the expressed oil in which the less volatile components have been concentrated by partial or total removal of the terpene fraction, this limit should be reduced in proportion to the degree of concentration.'),
  (51, 'IFRA_STD_093', 'Lime oil expressed', 'RESTRICTION', 'PHOTOTOXICITY', 49, array['8008-26-2', '90063-52-8']::text[], 'Not applicable.', '[Restricted ingredients due to phototoxicity considerations: notes] This Standard is set due to the phototoxic effects of Lime oil expressed. For more detailed information on the application of this Standard, please refer to the note on phototoxic ingredients in chapter 1 of the Guidance for the use of IFRA Standards.
If the level of furocoumarins is unknown, the restriction level specified in this IFRA Standard applies. 
Combination effects of phototoxic ingredients are only taken into consideration for the furocoumarin-containing fragrance ingredients (extracts) listed in the IFRA Standard of Citrus oils and other furocoumarins containing essential oils. 
If combinations of furocoumarin-containing phototoxic fragrance ingredients (extracts) are used, the use levels must be reduced accordingly. The sum of the concentrations of all furocoumarin-containing phototoxic fragrance ingredients (extracts), expressed in of their recommended upper concentration level in the consumer product shall not exceed 100.
For qualities of the expressed oil in which the less volatile components have been concentrated by partial or total removal of the terpene fraction, this limit should be reduced in proportion to the degree of concentration.'),
  (51, 'IFRA_STD_094', 'Methyl N-methylanthranilate', 'RESTRICTION_SPECIFICATION', 'PHOTOTOXICITY AND SYSTEMIC TOXICITY, POTENTIAL OF NITROSAMINE FORMATION', 51, array['85-91-6']::text[], 'Methyl N-methylanthranilate
Benzoic acid, 2-(methylamino)-, methyl ester
Dimethyl anthranilate
2-Methylamino methyl benzoate
N-Methylanthranilic acid, methyl ester
Methyl 2-(methylamino)benzoate
Methyl 2-methylaminobenzoate
Methyl o-methylaminobenzoate', '[Restricted ingredients due to phototoxicity considerations: notes] This Standard is set due to the phototoxic effects of Methyl N-methylanthranilate. For more detailed information on the application of this Standard, please refer to the note on phototoxic ingredients in chapter 1 of the Guidance for the use of IFRA Standards.
[Specified ingredients: notes] This material has been identified for having the potential of forming nitrosamines in nitrosating systems. Downstream users therefore have to be notified of the presence of the material and its potential, to be able to consider adequate protective measures.'),
  (51, 'IFRA_STD_095', 'Methyl beta-naphthyl ketone', 'RESTRICTION', 'PHOTOTOXICITY', 49, array['93-08-3']::text[], '2-Acetonaphthone
β-Acetylnaphthalene
Cetone d
Ethanone, 1-(2-naphthalenyl)
β-Methyl naphthyl ketone
β-Naphthyl methyl ketone
Oranger crystals', '[Restricted ingredients due to phototoxicity considerations: notes] This Standard is set due to the phototoxic effects of Methyl β-naphthyl ketone. For more detailed information on the application of this Standard, please refer to the note on phototoxic ingredients in chapter 1 of the Guidance for the use of IFRA Standards.'),
  (51, 'IFRA_STD_096', 'Rue oil', 'RESTRICTION', 'PHOTOTOXICITY', 49, array['8014-29-7', '84929-47-5']::text[], 'Not applicable.', '[Restricted ingredients due to phototoxicity considerations: notes] This Standard is set due to the phototoxic effects of Rue oil. For more detailed information on the application of this Standard, please refer to the note on phototoxic ingredients in chapter 1 of the Guidance for the use of IFRA Standards.
If the level of furocoumarins is unknown, the restriction level specified in this IFRA Standard applies. 
Combination effects of phototoxic ingredients are only taken into consideration for the furocoumarin-containing fragrance ingredients (extracts) listed in the IFRA Standard of Citrus oils and other furocoumarins containing essential oils. 
If combinations of furocoumarin-containing phototoxic fragrance ingredients (extracts) are used, the use levels must be reduced accordingly. The sum of the concentrations of all furocoumarin-containing phototoxic fragrance ingredients (extracts), expressed in of their recommended upper concentration level in the consumer product shall not exceed 100.'),
  (51, 'IFRA_STD_097', 'Tagetes oil and absolute', 'PROHIBITION_RESTRICTION_SPECIFICATION', 'PHOTOTOXICITY', 49, array['8016-84-0', '90131-43-4', '91722-29-1', '91770-75-1']::text[], 'Prohibition of Tagetes erecta:

Tagetes erecta L.

Restriction and Specification of Tagetes patula and Tagetes minuta:

Tagetes absolute (Tagetes patula L.)
Tagetes patula absolute
Tagetes patula, ext.
Tagetes minuta absolute
Tagetes oil', '[Prohibited fragrance ingredients: notes] Tagetes erecta should not be used as a fragrance ingredient in any finished product application. Only Tagetes patula and Tagetes minuta should be used as fragrance ingredients according to the Restriction and Specification set in this Standard.
[Restricted ingredients due to phototoxicity considerations: notes] This Standard is set due to the phototoxic effects of Tagetes oil and absolute. For more detailed information on the application of this Standard, please refer to the note on phototoxic ingredients in chapter 1 of the Guidance for the use of IFRA Standards.
[Restricted ingredients: notes] The restriction only applies to Tagetes patula and Tagetes minuta.
[Specified ingredients: notes] The content of alpha-Terthienyl (Terthiophene, CAS number 1081-34-1) in Tagetes patula and Tagetes minuta oils and absolutes must not exceed 0.35.'),
  (51, 'IFRA_STD_098', 'Furfural', 'RESTRICTION', 'CARCINOGENICITY', 49, array['98-01-1']::text[], '2-Formylfuran
Fural
Furaldehyde
2-Furaldehyde
2-Furancarbonal
2-Furancarboxaldehyde
Furfuraldehyde
α-Furfuraldehyde
2-Furylcarboxaldehyde
Pyromucic aldehyde', '[Contributions from other sources: notes] Furfural has been found in natural extracts but only at trace levels.'),
  (51, 'IFRA_STD_099', 'Estragole', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['140-67-0', '1407-27-8', '77525-18-9']::text[], 'Estragole
p-Allylanisole
4-Allylanisole
1-Allyl-4-methoxybenzene
Benzene, 1-methoxy-4-(2-propenyl)-
Chavicyl methyl ether
Isoanethole
p-Methoxyallylbenzene
1-Methoxy-4-(2-propen-1-yl)benzene
Methyl chavicol', null),
  (51, 'IFRA_STD_100', 'Methyl eugenol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['93-15-2']::text[], 'Methyl eugenol
Eugenol methyl ether
Eugenyl methyl ether
Methyl eugenol ether
Allylveratrole
4-Allylveratrole
Veratrole methyl ether
4-Allyl-1,2-dimethoxybenzene
Benzene, 1,2-dimethoxy-4-(2-propenyl)-
1,2-Dimethoxy-4-allylbenzene
1,2-dimethoxy-4-(2-propenyl)-benzene
3,4-Dimethoxyallylbenzene', null),
  (51, 'IFRA_STD_101', 'Methyl N-formylanthranilate', 'RESTRICTION_SPECIFICATION', 'PHOTOTOXICITY, POTENTIAL OF NITROSAMINE FORMATION', 49, array['41270-80-8']::text[], 'Benzoic acid, 2-(formylamino)-, methyl ester
Methyl 2-(formylamino)benzoate 
Methyl 2-formamidobenzoate
Methyl o-formamidobenzoate
N-Formylanthranilic acid, methyl ester', '[Restricted ingredients due to phototoxicity considerations: notes] This Standard is set due to the phototoxic effects of Methyl N-formylanthranilate. For more detailed information on the application of this Standard, please refer to the note on phototoxic ingredients in chapter 1 of the Guidance for the use of IFRA Standards.
[Specified ingredients: notes] This material has been identified for having the potential of forming nitrosamines in nitrosating systems. Downstream users therefore have to be notified of the presence of the material and its potential, to be able to consider adequate protective measures.'),
  (51, 'IFRA_STD_102', 'Thujone', 'RESTRICTION', 'NEUROTOXICITY', 49, array['1125-12-8', '471-15-8', '546-80-5', '76231-76-0']::text[], '1-Isopropyl-4-methylbicyclo[3.1.0]hexan-3-one
3-Thujanone, (1s,4r,5r)-(-)-
α-Thujone
β-Thujone', '[Contributions from other sources: notes] The natural contribution of Thujone is determined by the sum of the natural contributions of each of its isomers.'),
  (51, 'IFRA_STD_103', 'Acetyl ethyl tetramethyl tetralin (AETT)', 'PROHIBITION', 'NEUROTOXICITY', 40, array['88-29-9']::text[], '7-Acetyl-6-ethyl-1,1,4,4-tetramethyl-1,2,3,4-tetrahydronaphthalene
Ethanone, 1-(3-ethyl-5,6,7,8-tetrahydro-5,5,8,8-tetramethyl-2-naphthalenyl)-
Versalide (commercial name)', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_104', 'Acetyl isovaleryl', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['13706-86-0']::text[], '5-Methyl-2,3-hexanedione
2,3-Hexanedione, 5-methyl-
Acetyl isopentanoyl', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_105', 'Alantroot oil', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['84012-20-4', '97676-35-2']::text[], 'Alantroot oil (Inula helenium)
Elecampane oil
Inula helenium oil', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_106', 'Allyl heptine carbonate', 'PROHIBITION', 'DERMAL SENSITIZATION', 43, array['73157-43-4']::text[], 'Allyl 2-octynoate
2-Octynoic acid
2-Propenyl ester', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_107', 'Allyl isothiocyanate', 'PROHIBITION', 'INSUFFICIENT DATA', 49, array['57-06-7']::text[], 'Allyl isosulfocyanate
Allyl thiocarbonimide
1-Propenal, 3-isothiocyanato-
2-Propenyl isothiocyanate
AITC', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.
[Contributions from other sources: notes] Allyl isothiocyanate can be found at relatively high levels in Mustard oil and Horseradish oil. The natural extracts containing Allyl isothiocyanate should not be used as substitutes for this substance. This means that the use of Mustard oil and Horseradish oil cannot be considered safe and therefore both extracts should not be used in fragrance mixtures until additional data is available and considered sufficient to support the safe use of these ingredients.'),
  (51, 'IFRA_STD_108', 'Amylcyclopentenone', 'PROHIBITION', 'DERMAL SENSITIZATION', 43, array['25564-22-1']::text[], '2-Cyclopenten-1-one, 2-pentyl-
2-Pentyl-2-cyclopentenone
2-Pentylcyclopent-2-en-1-one', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_109', 'Anisylidene acetone', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['943-88-4']::text[], '3-Butene-2-one, 4-(4-methoxyphenyl) ester
4-(p-methoxyphenyl)-3-butene-2-one
Methyl p-methoxycinnamyl ketone', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_110', 'cis-and trans-Asarone', 'PROHIBITION_RESTRICTION', 'CARCINOGENICITY', 40, array['2883-98-9', '494-40-6', '5273-86-9']::text[], '494-40-6:
Benzene, 1,2,4-trimethoxy-5-(1-propen-1-yl)- (unspecified isomer)
(E)-and (Z)-2,4,5-Trimethoxypropen-1-yl benzene)

2883-98-9: 
α-Asarone
trans-Asarone
Benzene, 1,2,4-trimethoxy-5-(1-propenyl)-, (E)-
trans-Isoasarone

5273-86-9: 
ß-Asarone
cis-ß-Asarone
Benzene, 1,2,4-trimethoxy-5-(1-propenyl)-, (Z)-
cis-Isoasarone', '[Prohibited fragrance ingredients: notes] cis- and trans-Asarone as such should not be used as fragrance ingredients.

The natural extracts containing cis- and trans-Asarone should not be used as substitutes for this substance.
[Restricted ingredients: notes] On the basis of established maximum concentration levels of this substance in commercially available natural sources (like essential oils, extracts and absolutes), exposure to this substance from the use of these oils and extracts (e.g. Calamus oils) is regarded acceptable as long as the level of cis- and trans-Asarone in the finished consumer product does not exceed 100ppm (0.01).
[Contributions from other sources: notes] The natural contribution of cis-and trans-Asarone is determined by the sum of the natural contributions of each of its isomers.'),
  (51, 'IFRA_STD_111', 'Benzene', 'PROHIBITION_SPECIFICATION', 'CARCINOGENICITY', 38, array['71-43-2']::text[], 'Benzol', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.
[Specified ingredients: notes] The level of Benzene has to be kept as low as practicable and should never exceed 1 ppm in the fragrance compound/mixture or fragrance oil. 
Since the introduction of the original Restriction on the use of Benzene by IFRA in 1988, there have been significant changes in manufacturing practices that permit the reduction of the maximum permitted level of this substance. These include use of technological improvements allowing replacement of this solvent for the extraction of fragrance materials and in eliminating its presence as an impurity in alternative extraction solvents.'),
  (51, 'IFRA_STD_112', 'Benzyl cyanide', 'PROHIBITION_RESTRICTION', 'POTENTIAL OF CYANIDE RELEASE', 38, array['140-29-4']::text[], 'Benzeneacetonitrile
Benzylnitrile
Phenylacetonitrile
Phenyl acetyl nitrile', '[Prohibited fragrance ingredients: notes] Benzyl cyanide as such should not be used as fragrance ingredient.

The natural extracts containing Benzyl cyanide should not be used as substitutes for this substance.
[Restricted ingredients: notes] On the basis of established maximum concentration levels of this substance in commercially available natural sources (like essential oils and extracts), exposure to this substance from the use of these oils and extracts is not significant and the use of these oils is authorized as long as the level of Benzyl cyanide in the finished product does not exceed 0.01% (100 ppm).'),
  (51, 'IFRA_STD_113', 'Benzylidene acetone', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['122-57-6']::text[], '4-Phenyl-3-buten-2-one
3-Buten-2-one, 4-phenyl-
Benzilideneacetone
Methyl styryl ketone', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_114', 'Birch wood pyrolysate', 'PROHIBITION_SPECIFICATION', 'CARCINOGENICITY, GENOTOXICITY BY RELEASE OF POLYNUCLEAR HYDROCARBONS (PAH)', 47, array['68917-50-0', '8001-88-5', '84012-15-7', '85251-66-7', '85940-29-0', '91745-85-6']::text[], 'Prohibition of the crude material:

Birch tar oil, crude 

Specification for the distillates: 

Birch tar oil dephenolated
Birch tar oil rectified
Essence bouleau dephenolisée
Essence bouleau (Goudron) rect.', '[Prohibited fragrance ingredients: notes] Crude birch wood (bark) pyrolysates (oils) derived by pyrolysis (destructive distillation) of the wood or bark of Betula pubescens, Betula pendula, Betula lenta or Betula alba should not be used as a fragrance ingredient for any finished product application. Only rectified (purified) Birch tar oils being in compliance with the limitations for polynuclear aromatic hydrocarbons (PAH) established by this IFRA Standard should be used.
[Specified ingredients: notes] Limit content of polynuclear aromatic hydrocarbons (PAH) resulting from the use of rectified oils according to Good Manufacturing Practice.
Benzopyrene and 1,2-Benzanthracene are to be used as markers for PAH. If used alone or in combination with rectified Cade oil, rectified Styrax oil or rectified Opoponax oil, the total concentration of both of the markers should not exceed 1 ppb in the final product.'),
  (51, 'IFRA_STD_115', 'Boldo oil', 'PROHIBITION', 'INSUFFICIENT DATA', 44, array['8022-81-9', '84649-96-7']::text[], 'Boldo leaf oil (Peumus boldus Mol.)
Oil, boldo leaf
Peumus boldus oil', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_116', '3-Bromo-1,7,7-trimethylbicyclo[2.2.1]heptane-2-one', 'PROHIBITION', 'INSUFFICIENT DATA', 43, array['76-29-9']::text[], 'Bicyclo[2.2.1]heptan-2-one, 3-bromo-1,7,7-trimethyl-
2-Bornanone, 3-bromo-
3-Bromobornan-2-one
3-Bromo-2-bornanone
3-Bromocamphor
Camphor bromide
Camphor, 3-bromo-', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_117', 'Bromostyrene', 'PROHIBITION', 'INSUFFICIENT DATA', 43, array['103-64-0']::text[], 'Benzene, (2-bromoethenyl)-
α-Bromo-ß-phenylethylene
ß-Bromostyrene
ß-Bromovinylbenzene
ω-Bromstyrene
Bromstyrol
Bromstyrolene', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_118', 'p-tert-Butylphenol', 'PROHIBITION', 'DERMAL SENSITIZATION AND DERMAL DEPIGMENTATION', 40, array['98-54-4']::text[], '4-tert-Butylphenol
4-(1,1-Dimethylethyl) phenol
1-Hydroxy-4-tert-butylbenzene
Phenol, 4-(1,1-dimethylethyl)-
Phenol, p-tert-butyl', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_119', 'Cade oil', 'PROHIBITION_SPECIFICATION', 'CARCINOGENICITY, GENOTOXICITY BY RELEASE OF POLYNUCLEAR HYDROCARBONS (PAH)', 47, array['8013-10-3', '90046-02-9']::text[], 'Prohibition of the crude material:

Juniper tar

Specification for the distillates:

Juniper tar oil
Juniperus oxycedrus oil', '[Prohibited fragrance ingredients: notes] Crude cade oil derived by pyrolysis of the wood and twigs of Juniperus oxycedrus L. should not be used as a fragrance ingredient for any finished product application. 
Only rectified (purified) cade oils being in compliance with the limitations for polynuclear aromatic hydrocarbons (PAH) established by this IFRA Standard should be used.
[Specified ingredients: notes] Limit content of polynuclear aromatic hydrocarbons (PAH) resulting from the use of rectified oils according to Good Manufacturing Practice.
Benzopyrene and 1,2-Benzanthracene are to be used as markers for PAH. If used alone or in combination with rectified Birch tar oils, rectified Opoponax oil or rectified Styrax oil, the total concentration of both of the markers should not exceed 1 ppb in the final product.'),
  (51, 'IFRA_STD_120', 'Carvone oxide', 'PROHIBITION', 'DERMAL SENSITIZATION', 38, array['33204-74-9']::text[], 'Carvone epoxide
1,6-Epoxy-p-menth-8-en-2-one
1-Methyl-4-(1-methylvinyl)-7-oxabicyclo[4.1.0]heptan-2-one
7-Oxabicyclo[4.1.0]heptan-2-one, 1-methyl-4-(1-methylethenyl)-', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_121', 'Chenopodium oil', 'PROHIBITION', 'INSUFFICIENT DATA', 43, array['8006-99-3', '8024-11-1', '89997-47-7']::text[], 'American wormseed oil
Chenopodium ambrosioides L. var anthelminticum', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_122', 'Cinnamylidene acetone', 'PROHIBITION', 'INSUFFICIENT DATA', 43, array['4173-44-8']::text[], '3,5-Hexadien-2-one, 6-phenyl-
Methyl 4-phenyl-1,3-butadienyl ketone
1-Phenyl-3,5-hexadien-5-one
6-Phenyl-3,5-hexadien-2-on', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_123', 'Colophony', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['8050-09-7']::text[], 'Colophonium
Rosin', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_124', 'Costus root oil, absolute and concrete', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['8023-88-9', '90106-55-1']::text[], 'Costus root essential oil, absolute and concrete (Saussurea lappa Clarke)
Oils, costus
Saussurea lappa root oil
Spiral flag oil', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_125', 'Cyclamen alcohol', 'PROHIBITION_SPECIFICATION', 'DERMAL SENSITIZATION', 4, array['4756-19-8']::text[], '3-(4-Isopropylphenyl)-2-methylpropan-1-ol
3-(p-Isopropyl)phenyl-2-methyl-1-propanol
Benzenepropanol, .β.-methyl-4-(1-methylethyl)-', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.
[Specified ingredients: notes] Cyclamen alcohol should not be used as a fragrance ingredient as such, but a level of up to 1.5% in Cyclamen aldehyde (CAS number 103-95-7) is accepted.'),
  (51, 'IFRA_STD_126', 'Musk alpha', 'PROHIBITION', 'INSUFFICIENT DATA', 43, array['63697-53-0']::text[], 'Musk alpha
1,3-Dibromo-2-methoxy-4-nitro-5-(1,1-dimethylethyl)-6-methyl-benzene
Benzene,1,3-dibromo-5-(1,1-dimethylethyl)-2- methoxy-4-methyl-6-nitro-', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_127', 'Musk KS', 'PROHIBITION', 'INSUFFICIENT DATA', 43, array['62265-99-0']::text[], '1,3-Dibromo-2-methoxy-4-methyl-5-nitrobenzene
Benzene, 1,3-dibromo-2-methoxy-4-methyl-5-nitro-
1,3-Dibromo-2-methoxy-5-nitro-6-methylbenzene
2,4-Dibromo-3-methoxy-6-nitrotoluene
2,6-Dibromo-3-methyl-4-nitroanisole
6-Nitro-2,4-dibromo-3-methoxytoluene
Bromorose
Musk KS (commercial name)', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_128', '2,2-Dichloro-1-methylcyclopropylbenzene', 'PROHIBITION', 'INSUFFICIENT DATA', 43, array['3591-42-2']::text[], 'Benzene, (2,2-dichloro-1-methylcyclopropyl)-', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_129', '2,4-Dienals', 'PROHIBITION', 'INSUFFICIENT DATA', 47, array['13162-46-4', '142-83-6', '20432-40-0', '21662-16-8', '2363-88-4', '25152-84-5', '30361-28-5', '30361-29-6', '4313-03-5', '4488-48-6', '5577-44-6', '5910-85-0', '5910-87-2', '6750-03-4', '764-40-9', '80466-34-8']::text[], 'Including but not limited to:
2,4-Pentadienal
2,4-Hexadienal
2,4-Heptadienal
2,4-Octadienal
2,4-Nonadienal
2,4-Decadienal
2,4-Undecadienal
2,4-Dodecadienal
trans,trans-2,4-Decadienal
trans,trans-2,4-Undecadienal
2,4-Heptadien-1-al
(including all geometric isomers)', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.
[Contributions from other sources: notes] 2,4-Decadienal (CAS number 2363-88-4) has been found in natural extracts but only at trace levels.'),
  (51, 'IFRA_STD_130', 'Diethyl maleate', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['141-05-9']::text[], '2-Butenedioic acid (2Z)-, diethyl ester
Ethyl maleate
Maleic acid, diethyl ester', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_131', '2,4-Dihydroxy-3-methylbenzaldehyde', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['6248-20-0']::text[], 'Benzaldehyde, 2,4-dihydroxy-3-methyl-
4-Formyl-2-methylresorcinol', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_132', '4,6-Dimethyl-8-tert-butylcoumarin', 'PROHIBITION', 'PHOTOSENSITIZATION', 40, array['17874-34-9']::text[], '2H-1-Benzopyran-2-one, 8-(1,1-dimethylethyl)-4,6-dimethyl-
Butolia', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_133', '3,7-Dimethyl-2-octen-1-ol', 'PROHIBITION', 'DERMAL SENSITIZATION', 38, array['40607-48-5']::text[], '6,7-Dihydrogeraniol
2-Octen-1-ol, 3,7-dimethyl', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_134', 'Dimethyl citraconate', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['617-54-9']::text[], '2-Butenedioic acid, 2-methyl-, dimethyl ester, (2Z)-
Dimethyl methyl maleate
Methylmaleic acid, dimethyl ester', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_135', 'Diphenylamine', 'PROHIBITION', 'TOXICITY, TERATOGENICITY', 38, array['122-39-4']::text[], 'Benzeneamine, N-phenyl-', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_136', '2,4-Dodecadien-1-ol, (2E, 4E)', 'PROHIBITION', 'INSUFFICIENT DATA', 48, array['18485-38-6']::text[], '2,4-Dodecadien-1-ol', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_137', 'Esters of 2-Nonynoic acid (except Methyl octine carbonate)', 'PROHIBITION', 'INSUFFICIENT DATA', 43, array['10031-92-2']::text[], 'Ethyl 2-nonynoate
Ethyl octine carbonate
Ethyl octyne carbonate
2-Nonynoic acid, ethyl ester', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_138', 'Esters of 2-Octynoic acid (except Methyl heptine carbonate)', 'PROHIBITION', 'INSUFFICIENT DATA', 43, array['10484-32-9', '10519-20-7']::text[], '10484-32-9:
Amyl heptine carbonate
2-Octynoic acid, pentyl ester
Pentyl 2-octynoic acid
Vert de violette

10519-20-7:
Ethyl heptine carbonate
Ethyl 2-octynoate
2-Octynoic acid, ethyl ester', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_139', 'Ethyl acrylate', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['140-88-5']::text[], 'Ethyl propenoate
2-Propenoic acid, ethyl ester', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_140', 'Ethylene glycol monoethyl ether and its acetate', 'PROHIBITION', 'REPRODUCTIVE TOXICITY', 38, array['110-80-5', '111-15-9']::text[], '110-80-5 (ether):
Ethylene glycol ethyl ether
2-Ethoxyethanol
Ethanol, 2-ethoxy-
Cellosolve
Oxitol

111-15-9 (acetate):
Ethylene glycol ethyl ether acetate
2-Ethoxyethyl acetate
Ethyl cellosolve acetate
Ethanol, 2-ethoxy-, acetate
1-Acetoxy-2-ethoxyethane', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_141', 'Ethylene glycol monomethyl ether and its acetate', 'PROHIBITION', 'REPRODUCTIVE TOXICITY', 38, array['109-86-4', '110-49-6']::text[], '109-86-4 (ether):
Ethylene glycol methyl ether
2-Methoxyethanol
Ethanol, 2-methoxy-
Methyl cellosolve

110-49-6 (acetate):
Ethylene glycol methyl ether acetate
2-Methoxyethanol acetate
2-Methoxyethyl acetate
Methyl cellosolve acetate
Ethanol, 2-methoxy-, acetate', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_142', 'Fig leaf absolute', 'PROHIBITION', 'DERMAL SENSITIZATION AND PHOTOTOXICITY', 40, array['68916-52-9', '90028-74-3']::text[], 'Ficus carica absolute
Fig leaf absolute (Ficus carica)', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_143', 'Furfuryl alcohol', 'PROHIBITION', 'INSUFFICIENT DATA', 48, array['98-00-0']::text[], '2-Furancarbinol
2-Furanmethanol
Furfuralcohol
Furfuryl alcohol
α-Furylcarbinol
2-Furylcarbinol
2-Furylmethanol
2-Hydroxymethylfuran', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.
[Contributions from other sources: notes] Furfuryl alcohol has been found in natural extracts but only at trace levels. 
Those contributions from other sources like Coffee extracts or certain types of Cade oil have been evaluated. On the basis of the established maximum level of Furfuryl alcohol in these commercially available natural sources, exposure to this substance from the use of these oils and extracts is not significant and not regarded of concern from a consumer safety point of view.
For more information, please also refer to the note on contributions from other sources in Chapter 1 of the Guidance for the use of IFRA Standards, publicly available at www.ifrafragrance.org.'),
  (51, 'IFRA_STD_144', 'Furfurylidene acetone', 'PROHIBITION', 'INSUFFICIENT DATA', 43, array['623-15-4']::text[], '3-Buten-2-one, 4-(2-furanyl)-
Furfuralacetone
4-(2-Furyl)-3-buten-2-one', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_145', 'Geranyl nitrile', 'PROHIBITION', 'GENOTOXICITY', 43, array['31983-27-4', '5146-66-7', '5585-39-7']::text[], '(2E)-3,7-dimethylocta-2,6-dienenitrile
3,7-Dimethyl-2,6-octadienenitrile
Geranonitrile (isomer unspecified)
2,6-Octadienenitrile, 3,7-dimethyl-
Citranile (commercial name)
Citralva (commercial name)
Geranitrile (commercial name)', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_146', 'trans-2-Heptenal', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['18829-55-5']::text[], 'beta-Butylacrolein
3-Butylacrolein
(E)-2-Hepten-1-al
2-Heptenal, (E)-', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_147', '2,4-Hexadien-1-ol', 'PROHIBITION', 'INSUFFICIENT DATA', 48, array['111-28-4', '17102-64-6']::text[], '1-Hydroxy-2,4-hexadiene
Hexa-2,4-dien-1-ol
Sorbic alcohol
Sorbyl alcohol
Hexadienol (commercial name)', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_148', 'Hexahydrocoumarin', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['700-82-3']::text[], '2H-1-Benzopyran-2-one, 3,4,5,6,7,8-hexahydro-
Coumarin, hexahydro-
Coumarin, 3,4,5,6,7,8-hexahydro-
1-Cyclohexene-1-propanoic acid, 2-hydroxy-, d-lactone
3,4,5,6,7,8-Hexahydro-2H-1-benzopyran-2-one', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_149', 'trans-2-Hexenal diethyl acetal', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['67746-30-9']::text[], '1,1-Diethoxy-trans-2-hexene
(E)-2-Hexenal diethyl acetal
2-Hexene, 1,1-diethoxy-, (2E)-', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_150', 'trans-2-Hexenal dimethyl acetal', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['18318-83-7']::text[], '1,1-Dimethoxy-trans-2-hexene
2-Hexene, 1,1-dimethoxy-, (2E)-', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_151', 'Hydroabietyl alcohol, Dihydroabietyl alcohol', 'PROHIBITION', 'DERMAL SENSITIZATION', 38, array['1333-89-7', '13393-93-6', '26266-77-3']::text[], 'Abitol (mixture of different hydroabietyl alcohols)', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_152', 'Hydroquinone monoethyl ether', 'PROHIBITION', 'DEPIGMENTATION', 40, array['622-62-8']::text[], '1-Ethoxy-4-hydroxybenzene
p-Ethoxyphenol
Phenol, 4-ethoxy-
4-Ethoxyphenol', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_153', 'Hydroquinone monomethyl ether', 'PROHIBITION', 'DEPIGMENTATION', 40, array['150-76-5']::text[], '4-Hydroxyanisole
p-Hydroxyanisole
4-Methoxyphenol
p-Methoxyphenol
Phenol, p-methoxy-', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_154', 'Isophorone', 'PROHIBITION_RESTRICTION', 'INSUFFICIENT DATA', 49, array['78-59-1']::text[], '2-Cyclohexen-1-one, 3,5,5-trimethyl-
Isoacetophorone
3,5,5-Trimethyl-2-cyclohexen-1-one', '[Prohibited fragrance ingredients: notes] Isophorone as such should not be used as fragrance ingredient.

Natural extracts containing Isophorone should not be used as substitutes for this substance.
[Restricted ingredients: notes] On the basis of established maximum concentration levels of this substance in commercially available natural sources (like essential oils and extracts), exposure to this substance from the use of these oils and extracts is not significant and the use of these oils is authorized as long as the level of Isophorone in the finished product does not exceed 0.0013%.'),
  (51, 'IFRA_STD_155', '6-Isopropyl-2-decalol', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['34131-99-2']::text[], 'Decahydro-6-isopropyl-2-naphthol
Decahydro-6-(1-methylethyl)-2-naphthalenol
6-Isopropyl-2-decahydronaphthalenol
6-Isopropyldecalol
2-Naphthalenol, decahydro-6-(1-methylethyl)-
Decatol', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_156', 'Massoia bark oil', 'PROHIBITION', 'DERMAL SENSITIZATION', 43, array['85085-26-3']::text[], 'Cryptocarya massoio oil
Cryptocarya massoy bark extract
Cryptocarya massoy, ext.
Massoia bark oil (Cryptocarya massoio)', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_157', 'Massoia lactone', 'PROHIBITION', 'DERMAL SENSITIZATION', 48, array['51154-96-2', '54814-64-1']::text[], '2-Decen-1,5-lactone
(-)-2-Decenoic acid, 5-hydroxy, δ-lactone
(R)-5,6-Dihydro-6-pentyl-2H-pyran-2-one
5,6-Dihydro-6-pentyl-2H-pyran-2-one
5-Hydroxy-2-decenoic acid δ-lactone
2H-Pyran-2-one, 5,6-dihydro-6-pentyl-, (R)-
Massoi lactone', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_158', '7-Methoxycoumarin', 'PROHIBITION_RESTRICTION', 'DERMAL SENSITIZATION AND PHOTOSENSITIZATION', 43, array['531-59-9']::text[], '2H-1-Benzopyran-2-one, 7-methoxy-
Herniarin', '[Prohibited fragrance ingredients: notes] 7-Methoxycoumarin as such should not be used as fragrance ingredient.

The natural extracts containing 7-Methoxycoumarin should not be used as substitutes for this substance.
[Restricted ingredients: notes] On the basis of established maximum concentration levels of this substance in commercially available natural sources (like essential oils, extracts and absolutes), exposure to this substance from the use of these oils and extracts is regarded acceptable as long as the level of 7-Methoxy-coumarin in the finished product does not exceed 0.01% (100 ppm).'),
  (51, 'IFRA_STD_159', 'α-Methyl anisylidene acetone', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['104-27-8']::text[], '1-(p-Methoxyphenyl)-1-penten-3-one
p-Methoxystyryl ethyl ketone
alpha-Methylanisalacetone
α-Methylanisalacetone
1-(4-Methoxyphenyl)-1-penten-3-one
1-Penten-3-one, 1-(4-(methoxyphenyl))-
Ethone (commercial name)', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_160', '6-Methylcoumarin', 'PROHIBITION', 'PHOTOSENSITIZATION', 40, array['92-48-8']::text[], '2H-1-Benzopyran-2-one, 6-methyl
6-Methyl-2h-1-benzopyran-2-one
6-Methylbenzopyrone
6-Methyl coumarin
6-Methyl-cis-o-coumarinic lactone
5-Methyl-2-hydroxyphenylpropenoic acid lactone
Toncarine (commercial name)', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_161', '7-Methylcoumarin', 'PROHIBITION', 'DERMAL SENSITIZATION AND PHOTOSENSITIZATION', 40, array['2445-83-2']::text[], '2H-1-Benzopyran-2-one, 7-methyl-
7-Methyl-2-H-1-benzopyran-2-one', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_162', 'Methyl crotonate', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['623-43-8']::text[], '2-Butenoic acid, methyl ester, (E)-
Methyl trans-2-butenoate', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_163', '4-Methyl-7-ethoxycoumarin', 'PROHIBITION', 'PHOTOSENSITIZATION', 40, array['87-05-8']::text[], '2H-1-Benzopyran-2-one, 7-ethoxy-4-methyl-
Coumarin, 7-ethoxy-4-methyl-
7-Ethoxy-4-methylcoumarin
4-Methyl-7-ethoxybenzopyrone
Maraniol (commercial name)', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_164', 'p-Methylhydrocinnamic aldehyde', 'PROHIBITION', 'DERMAL SENSITIZATION', 43, array['5406-12-2']::text[], 'Benzenepropanal, 4-methyl
p-Methyldihydrocinnamaldehyde
p-Methylhydrocinnamaldehyde
3-(4-Methylphenyl)propanal
3-p-Tolylpropionaldehyde', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_165', 'Methyl methacrylate', 'PROHIBITION', 'DERMAL SENSITIZATION', 43, array['80-62-6']::text[], 'Methyl 2-methacrylate, 2-(methoxycarbonyl)-1-propene
Methyl 2-methyl-2-propenoate
2-Propenoic acid, 2-methyl-, methyl ester
MMA', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.
[Contributions from other sources: notes] Methyl methacrylate has been found in natural extracts but only at trace levels.'),
  (51, 'IFRA_STD_166', '3-Methyl-2(3)-nonenenitrile', 'PROHIBITION', 'DERMAL SENSITIZATION', 43, array['53153-66-5']::text[], '2-Nonenenitrile, 3-methyl-
Citgrenile (commercial name)', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_167', 'Musk moskene', 'PROHIBITION', 'INSUFFICIENT DATA', 43, array['116-66-5']::text[], '1,1,3,3,5-Pentamethyl-4,6-dinitroindane
1H-Indene, 2,3-dihydro-1,1,3,3,5-pentamethyl-4,6,-dinitro-', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_168', 'Musk ambrette', 'PROHIBITION', 'PHOTOSENSITIZATION, NEUROTOXICITY', 40, array['83-66-9']::text[], 'Benzene, 1-(1,1-dimethylethyl)-2-methoxy-4-methyl-3,5-dinitro-
1-tert-Butyl-2-methoxy-4-methyl-3,5-dinitrobenzene
4-tert-Butyl-3-methoxy-2,6-dinitrotoluene
6-tert-Butyl-3-methyl-2,4-dinitroanisole
1-(1,1-Dimethylethyl)-2-methoxy-4-methyl-3,5-dinitrobenzene
2,6-Dinitro-3-methoxy-1-methyl-4-tert-butylbenzene
2,6-Dinitro-3-methoxy-4-tert-butyltoluene
2,4-Dinitro-3-methyl-6-tert-butylanisole', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_169', 'Musk tibetene', 'PROHIBITION', 'INSUFFICIENT DATA', 43, array['145-39-1']::text[], '1-tert-Butyl-2,6-dinitro-3,4,5-trimethylbenzene
Benzene, 1-(1,1-dimethylethyl)-3,4,5-trimethyl-2,6-dinitro-', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_170', 'Musk xylene', 'PROHIBITION', 'VPVB', 44, array['81-15-2']::text[], '2,4,6-Trinitro-1,3-methyl-5-tert-butylbenzene
1-tert-Butyl-3,5-dimethyl-2,4,6-trinitrobenzene
Benzene, 1-(1,1-dimethylethyl)-3,5-dimethyl-2,4,6-trinitro-
Musk xylol', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_171', 'Nitrobenzene', 'PROHIBITION', 'ACUTE TOXICITY AND SKIN TOXICITY', 40, array['98-95-3']::text[], 'Benzene, nitro
Nitrobenzol
Mirbane oil', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_172', '2-Pentylidene cyclohexanone', 'PROHIBITION', 'DERMAL SENSITIZATION', 40, array['25677-40-1']::text[], 'Cyclohexanone, 2-pentylidene-', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_174', 'Phenyl acetone', 'PROHIBITION', 'INSUFFICIENT DATA', 43, array['103-79-7']::text[], 'Benzyl methyl ketone
Methyl benzyl ketone
2-Propanone, 1-phenyl', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_175', 'Phenyl benzoate', 'PROHIBITION', 'INSUFFICIENT DATA', 43, array['93-99-2']::text[], 'Benzoic acid, phenyl ester', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_176', 'Pseudoionone', 'PROHIBITION_SPECIFICATION', 'DERMAL SENSITIZATION', 40, array['141-10-6']::text[], 'Citrylideneacetone
2,6-Dimethylundeca-2,6,8-trien-10-one
6,10-Dimethyl-3,5,9-undecatrien-2-one
3,5,9-Undecatrien-2-one, 6,10-dimethyl-', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.
[Specified ingredients: notes] Pseudoionone should not be used as fragrance ingredient as such, but a level of up to 2% as an impurity in Ionones is accepted.'),
  (51, 'IFRA_STD_177', 'Pseudo methylionones', 'PROHIBITION_SPECIFICATION', 'DERMAL SENSITIZATION', 44, array['1117-41-5', '26651-96-7', '72968-25-3']::text[], '2,6-Dimethyldodeca-2,6,8-trien-10-one
7,11-Dimethyl-4,6,10-dodecatrien-3-one
7,11-Dimethyldodeca-4,6,10-trien-3-one
4,6,10-Dodecatrien-3-one, 7,11-dimethyl-
3,6,10-Trimethylundeca-3,5,9-trien-2-one', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.
[Specified ingredients: notes] Pseudo methylionones should not be used as fragrance ingredient as such, but a level of up to 2% as an impurity in Methylionones is accepted.'),
  (51, 'IFRA_STD_178', 'Quinoline', 'PROHIBITION', 'CARCINOGENICITY AND MUTAGENICITY', 45, array['91-22-5']::text[], '1-Benzazine
2,3-Benzopyridine
Benzo(b)pyridine
Chinoleine
Leucoline
Quinoleine', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_179', 'Safrole, Isosafrole and Dihydrosafrole', 'PROHIBITION_RESTRICTION', 'CARCINOGENICITY', 17, array['120-58-1', '94-58-6', '94-59-7']::text[], '94-59-7:
1,3-Benzodioxole, 5-(2-propenyl)-
3,4-Methylene dioxyallylbenzene
4-Allyl-1,2-methylene dioxybenzene
5-Allyl-1,3-benzodioxole
Safrol

120-58-1:
1,2-Methylenedioxy-4-propenylbenzene
1,3-Benzodioxole, 5-(1-propenyl)-
5-Prop-1-en-1-yl-1,3-benzodioxole
Iso-safrole

94-58-6:
1,3-Benzodioxole, 5-propyl-
3,4-Methylenedioxypropylbenzene
5-Propyl-1,3-benzodioxole', '[Prohibited fragrance ingredients: notes] Safrole, Isosafrole and/or Dihydrosafrole as such should not be used as fragrance ingredients. 

The natural extracts containing Safrole, Isosafrole and/or Dihydrosafrole should not be used as substitutes for these ingredients.
[Restricted ingredients: notes] On the basis of established maximum concentration levels of this substance in commercially available natural sources (like essential oils, extracts and absolutes), exposure to this substance from the use of these oils and extracts is regarded acceptable as long as the total concentration of Safrole, Isosafrole and Dihydrosafrole in the finished consumer product does not exceed 0.01%.'),
  (51, 'IFRA_STD_180', 'Santolina oil', 'PROHIBITION', 'INSUFFICIENT DATA', 43, array['84961-58-0']::text[], 'Not applicable.', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_181', 'Savin oil', 'PROHIBITION_SPECIFICATION', 'ACUTE TOXICITY', 10, array['68916-94-9', '8024-00-8', '90046-03-0', '90046-04-1']::text[], 'Prohibition of Savin oil:

Juniperus sabina L. 

Specification of Savin oil: 

Juniperus phoenicea L.', '[Prohibited fragrance ingredients: notes] Savin oil prepared from Juniperus sabina L. should not be used as a fragrance ingredient. 
Only oils obtained from Juniperus phoenicea L. should be used, under the conditions set in the fragrance ingredient specification mentioned below.
[Specified ingredients: notes] In the absence of an international standard, the following specificiations for oils of Juniperus phoenicea L. are proposed:
- Density d 20/20 0,864 - 0,873
- Refraction n 20 D 1,4700 - 1,4720
- Rotation alpha 20 D -1° - +4°
- Acid value 0,4 - 1
- Ester value 2,5 - 7
- Ester value after acetylation 10 - 23
- Solubility 0.5-6 vol. in alcohol 96%, beyond that opalescence on dilution.'),
  (51, 'IFRA_STD_182', 'Toluene', 'PROHIBITION_SPECIFICATION', 'LIVER TOXICITY', 38, array['108-88-3']::text[], 'Toluol
Methylbenzol
Methylbenzene', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.
[Specified ingredients: notes] The level of Toluene has to be kept as low as practicable and should never exceed 100 ppm in the fragrance compound/mixture or fragrance oil.'),
  (51, 'IFRA_STD_183', 'Sclareol', 'SPECIFICATION', 'DERMAL SENSITIZATION', 39, array['515-03-7']::text[], 'Labd-14-ene-8,13-diol
1-Naphthalenepropanol,decahydro-alpha-ethenyl-2-hydroxy- alpha,2,5,5,8apentamethyl-, (1R-(1-alpha(R*),2-beta,4a-beta,8a-alpha))-', '[Specified ingredients: notes] Sclareol used as a fragrance ingredient should have a minimum purity of 98%.
[Contributions from other sources: notes] Sclareol is found in natural extracts, but its natural contributions are not relevant for the fragrance ingredient specification mentioned above.'),
  (51, 'IFRA_STD_184', 'Pinacea derivatives', 'SPECIFICATION', 'DERMAL SENSITIZATION', 28, array[]::text[], 'Derivatives from the Pine Family', '[Specified ingredients: notes] Essential oils (e.g. Turpentine oil) and isolates (e.g. delta-3-Carene) derived from the Pinacea family, including Pinus and Abies genera, should only be used when the level of peroxides is kept to the lowest practicable level, for instance by adding antioxidants at the time of production. Such products should have a peroxide value of less than 10 millimoles peroxide per liter, determined according to the IFRA analytical methodology for the determination of the peroxide value, which can be downloaded from the IFRA website (www.ifrafragrance.org).'),
  (51, 'IFRA_STD_185', 'Nootkatone', 'SPECIFICATION', 'DERMAL SENSITIZATION', 40, array['4674-50-4']::text[], '5,6-Dimethyl-8-isopropenylbicyclo(4.4.0)dec-1-en-3-one
4a,5-Dimethyl-1,2,3,4,4a,5,6,7-octahydro-7-keto-3-isopropenylnaphthalene
4betaH,5alpha-Eremorphila-1(10),11-dien-2-one
(4R-(4alpha,4a alpha,6beta))-4,4a,5,6,7,8-Hexahydro-4,4a-dimethyl-6-(1-methylvinyl)naphthalen-2(3H)-one
4,4a,5,6,7,8-Hexahydro-6-isopropenyl-4,4a-dimethyl-2(3H)-naphthalenone
2(3H)-Naphthalenone, 4,4a,5,6,7,8-hexahydro-4,4a-dimethyl-6-(1-methylethenyl)-, (4R,4aS,6R)-', '[Specified ingredients: notes] Nootkatone used as a fragrance ingredient should be at least 98% pure, with a melting point of at least 32°C. Lower purity grades may not be used as a fragrance ingredient.
[Contributions from other sources: notes] Nootkatone is found in natural extracts, but its natural contributions are not relevant for the fragrance ingredient specification mentioned above.'),
  (51, 'IFRA_STD_186', 'Limonene', 'SPECIFICATION', 'DERMAL SENSITIZATION', 29, array['138-86-3', '5989-27-5', '5989-54-8', '7705-14-8']::text[], 'p-Mentha-1,8-diene	
1-methyl-4-prop-1-en-2-ylcyclohexene
1-Methyl-4-(1-methylethenyl)cyclohexene	
1-Methyl-4-isopropenyl-1-cyclohexene	
4-Isopropenyl-1-methylcyclohexene
Cyclohexene, 1-methyl-4-(1-methylethenyl)-
Dipentene', '[Specified ingredients: notes] Oxidation products of Limonene, especially hydroperoxides, have been demonstrated to be potent sensitizers. 
d-, l- and dl-Limonene and natural products containing substantial amounts of it, should only be used when the level of (hydro)peroxides is kept to the lowest practical level, for instance by adding antioxidants at the time of production. The addition of 0.1% BHT or α-Tocopherol for example has shown great efficiency. Such products should have a peroxide value of less than 20 millimoles per liter, determined according to the IFRA analytical method for the determination of the peroxide value, which can be downloaded from the IFRA website (www.ifrafragrance.org).'),
  (51, 'IFRA_STD_187', 'Linalool', 'SPECIFICATION', 'DERMAL SENSITIZATION', 38, array['126-90-9', '126-91-0', '78-70-6']::text[], '78-70-6 (Linalool):
1,6-Octadien-3-ol, 3,7-dimethyl-
2,6-Dimethyl-2,7-octadien-6-ol
2,7-Octadien-6-ol, 2,6-dimethyl-
3,7-Dimethyl-1,6-octadien-3-ol
3,7-Dimethylocta-1,6-dien-3-ol
Coriandrol
Licareol
Linalyl alcohol

126-90-9 (d-Linalool):
(S)-3,7-Dimethyl-1,6-octadien-3-ol
1,6-Octadien-3-ol, 3,7-dimethyl-, (S)-

126-91-0 (l-Linalool):
(R)-3,7-Dimethyl-1,6-octadien-3-ol
1,6-Octadien-3-ol, 3,7-dimethyl-, (R)-', '[Specified ingredients: notes] Oxidation products of Linalool, especially hydroperoxides, have been demonstrated to be potent sensitizers. 
d-, l- and dl-Linalool and natural products containing substantial amounts of it, should only be used when the level of (hydro)peroxides is kept to the lowest practical level, for instance by adding antioxidants at the time of production. The addition of 0.1% BHT or α-Tocopherol for example has shown great efficiency. Such products should have a peroxide value of less than 20 millimoles per liter, determined according to the IFRA analytical method for the determination of the peroxide value, which can be downloaded from the IFRA website (www.ifrafragrance.org).
[Contributions from other sources: notes] Natural products known to be rich in Linalool include bois de rose, coriander or ho wood oil.'),
  (51, 'IFRA_STD_188', 'Allyl esters', 'SPECIFICATION', 'IRRITATION', 44, array[]::text[], 'Not applicable.', '[Specified ingredients: notes] Allyl esters should only be used when the level of free Allylalcohol in the ester is less than 0.1%. This recommendation is based on the delayed irritant potential of Allylalcohol.'),
  (51, 'IFRA_STD_189', 'Musk ketone', 'SPECIFICATION', 'SEE FRAGRANCE INGREDIENT SPECIFICATION', 45, array['81-14-1']::text[], '1-(4-tert-Butyl-2,6-dimethyl-3,5-dinitrophenyl) ethanone
4''-tert-butyl-2'',6''-dimethyl-3'',5''-dinitroacetophenone 
3,5-Dinitro-2,6-dimethyl-4-tert-butylacetophenone
1-[4-(1,1-Dimethylethyl)-2,6-dimethyl-3,5-dinitrophenyl]ethanone 
Ethanone, 1-[4-(1,1-dimethylethyl)-2,6-dimethyl-3,5-dinitrophenyl]-', '[Specified ingredients: notes] Musk xylene (CAS number 81-15-2), which has been prohibited for use in fragrance compounds for environmental reasons (vPvB), can be present in Musk ketone as an impurity. 
Musk ketone should only be used if it contains less than 0.1% of Musk xylene.'),
  (51, 'IFRA_STD_190', 'Propenylguaethol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['63477-41-8', '94-86-0']::text[], '1-Ethoxy-2-hydroxy-4-propenylbenzene
2-Ethoxy-5-prop-1-en-1-ylphenol
2-Ethoxy-5-propenylphenol
3-Propenyl-6-ethoxyphenol
6-Ethoxy-m-anol
Phenol, 2-ethoxy-5-(1-propenyl)-
Vanitrope (commercial name)
Isosafroeugenol (commercial name)', null),
  (51, 'IFRA_STD_191', '2-Methoxy-4-propylphenol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['2785-87-7']::text[], 'Phenol, 2-methoxy-4-propyl-
4-Propyl-ortho-methoxyphenol
4-Propylguaicol
5-Propyl-ortho-hydroxyanisole
Dihydroeugenol', null),
  (51, 'IFRA_STD_192', 'alpha-Bisabolol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['23089-26-1', '23178-88-3', '515-69-5', '72691-24-8', '76738-75-5', '78148-59-1']::text[], '(R*,R*)-.α.,4-Dimethyl-.α.-(4-methyl-3-pentenyl)cyclohex-3-ene-1-methanol
3-Cyclohexene-1-methanol, .α.,4-dimethyl-.α.-(4-methyl-3-pentenyl)-, (R*,R*)-
6-Methyl-2-(4-methyl-3-cyclohexen-1-yl)-5-hepten-2-ol
3-Cyclohexene-1-methanol, α,4-dimethyl-α-(4-methyl-3-penten-1- yl)-
3-Cyclohexene-1-methanol, α,4-dimethyl-α-(4-methyl-3-penten-1- yl)-, (αS,1S)-
3-Cyclohexene-1-methanol, α,4-dimethyl-α-(4-methyl-3-penten-1- yl)-, (αR,1R)-
3-Cyclohexene-1-methanol, α,4-dimethyl-α-(4-methyl-3-penten-1- yl)-, (αR,1S)-
3-Cyclohexene-1-methanol, α,4-dimethyl-α-(4-methyl-3-penten-1- yl)-, (αS,1R)-
alpha-Bisabolol
Bisabolol
Bisabolol nat. roh (Candela-Öl) (Commercial name)
Dragosantol (Commercial name)', null),
  (51, 'IFRA_STD_193', 'p-Tolyl alcohol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['589-18-4']::text[], '(4-Methylphenyl)methanol
Benzenemethanol, 4-methyl-
p-Methylbenzyl alcohol
p-Tolualcohol
4-(Hydroxymethyl)toluene
4-Methylbenzyl alcohol
4-Tolylcarbinol', null),
  (51, 'IFRA_STD_194', 'p-Isopropylbenzyl alcohol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['536-60-7']::text[], '(4-Isopropylphenyl)methanol
Benzenemethanol, 4-(1-methylethyl)-
p-iso-Propylbenzyl alcohol
p-Cymen-7-ol
Cumin alcohol
Cuminic alcohol
Cuminol
Cuminyl alcohol', null),
  (51, 'IFRA_STD_195', '2,6,10-Trimethylundeca-5,9-dien-1-ol', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['1018832-07-9', '1373932-23-0', '185019-19-6', '24048-14-4', '58001-87-9', '58001-88-0']::text[], '24048-14-4:
2,6,10-Trimethylundeca-5,9-dienol
5,9-Undecadien-1-ol, 2,6,10-trimethyl-
Dihydroapofarnesol
Profarnesol

185019-19-6 and 58001-88-0:
(E)-2,6,10-Trimethylundeca-5,9-dien-1-ol

58001-87-9:
(Z)-2,6,10-Trimethylundeca-5,9-dien-1-ol

1373932-23-0:
(2R,5E)-2,6,10-Trimethylundeca-5,9-dien-1-ol

1018832-07-9:
(2S, 5E)-2,6,10-Trimethylundeca-5,9-dien-1-ol', '[Contributions from other sources: notes] 2,6,10-Trimethylundeca-5,9-dien-1-ol has been reported to be found in natural extracts but only at trace levels.'),
  (51, 'IFRA_STD_197', 'Cedrene', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['11028-42-5', '469-61-4', '546-28-1']::text[], '11028-42-5: 
Cedr-8-ene

469-61-4: 
α-Cedrene
Cedr-8-ene
1H-3a,7-Methanoazulene, 2,3,4,7,8,8a-hexahydro-3,6,8,8-tetramethyl-, (3R-(3-α,3a-β,8a-α)]

546-28-1: 
β.-Cedrene
1H-3a,7-Methanoazulene, octahydro-3,8,8-trimethyl-6-methylene-, [3R-(3alpha,3abeta,7beta,8aalpha)]-
Cedr-8(15)-ene', '[Contributions from other sources: notes] The natural contribution of Cedrene is determined by the sum of the natural contributions of each of its isomers.'),
  (51, 'IFRA_STD_198', '4-Phenyl-3-buten-2-ol', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['17488-65-2']::text[], '3-Buten-2-ol, 4-phenyl-
4-Phenylbut-3-en-2-ol
Methyl styryl carbinol', '[Contributions from other sources: notes] 4-Phenyl-3-buten-2-ol has been found in natural extracts but only at trace levels.'),
  (51, 'IFRA_STD_199', 'Longifolene', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['16846-09-6', '19067-29-9', '475-20-7']::text[], '4,8,8-Trimethyl-9-methylenedecahydro-1,4-methanoazulene
1,4-Methanoazulene, decahydro-4,8,8-trimethyl-9-methylene-) 
1,4-Methanoazulene, decahydro-4,8,8-trimethyl-9-methylene-, [1S-(1α,3αβ,4α,8aβ)]-
1,4-Methanoazulene, decahydro-4,8,8-trimethyl-9-methylene-, (1R,3αS,4R,8αR)-', null),
  (51, 'IFRA_STD_201', '4-Hydroxy-2,5-dimethyl-3(2H)-furanone', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['3658-77-3']::text[], '3(2H)-Furanone, 4-hydroxy-2,5-dimethyl-
2,5-Dimethyl-4-hydroxy-2,3-dihydrofuran-3-one
4-Hydroxy-2,5-dimethylfuran-3(2H)-one
Dimethylhydroxy furanone
Strawberry furanone
Furaneol (Commercial name)
Neofuraneol (Commercial name)
Pineapple compound (Commercial name)', '[Contributions from other sources: notes] 4-Hydroxy-2,5-dimethyl-3(2H)-furanone has been found in natural extracts but only at trace levels.'),
  (51, 'IFRA_STD_202', 'Farnesal', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['19317-11-4']::text[], '2,6,10-Dodecatrienal, 3,7,11-trimethyl-
3,7,11-Trimethyl dodecatrien-2,6,10-al-1
3,7,11-Trimethyl-2,6,10-dodecatrienal
3,7,11-Trimethyldodeca-2,6,10-trienal', null),
  (51, 'IFRA_STD_203', '3,7-Dimethyl-2,6-nonadien-1-al', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['41448-29-7']::text[], '2,6-Nonadien-1-al, 3,7-dimethyl-
3,7-Dimethylnona-2,6-dienal
Ethyl citral', null),
  (51, 'IFRA_STD_204', '5,9-Dimethyl-4,8-decadienal', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['762-26-5']::text[], '4,8-Decadienal, 5,9-dimethyl-
5,9-Dimethyldeca-4,8-dienal
Geraldehyde (Commercial name)
Geranyl Acetaldehyde (Commercial name)', null),
  (51, 'IFRA_STD_205', '3,7-Dimethyl-3,6-octadienal', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['1754-00-3', '55722-59-3', '72203-97-5', '72203-98-6']::text[], '3,6-Octadienal, 3,7-dimethyl-
3,7-Dimethylocta-3,6-dienal
(E)-3,7-Dimethyl-3,6-octadienal
(Z)-3,7-Dimethyl-3,6-octadienal
Isocitral (Commercial name)
Isogeranial (Commercial name)
Isoneral (Commercial name)', '[Contributions from other sources: notes] The natural contribution of 3,7-Dimethyl-3,6-octadienal is determined by the sum of the natural contributions of each of its isomers.'),
  (51, 'IFRA_STD_206', 'Citronellal', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['106-23-0', '5949-05-3']::text[], '106-23-0: 
2,3-Dihydrocitral
3,7-Dimethyl-6-octenal
3,7-Dimethyloct-6-enal
6-Octenal, 3,7-dimethyl-
Citronellal Extra (Commercial name)
Rhodinal (Commercial name)

5949-05-3: 
6-Octenal, 3,7-dimethyl-, (3S)-
I-Citronellal', null),
  (51, 'IFRA_STD_207', '4,8-Dimethyl-4,9-decadienal', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['71077-31-1']::text[], '4,9-Decadienal, 4,8-dimethyl-
Aldehyde DMD (Commercial name)
Floral Super (Commercial name)', null),
  (51, 'IFRA_STD_208', 'cis,trans-4-(Isopropyl)cyclohexanemethanol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['13674-19-6', '13828-37-0', '5502-75-0']::text[], '4-(1-methylethyl)-cyclohexanemethanol
(4-propan-2-ylcyclohexyl)methanol
4-Isopropylcyclohexylmethanol
(4-Isopropylcyclohexyl)methanol
Reaction mass of trans-4-(isopropyl)cyclohexanemethanol and cis-4-(isopropyl)cyclohexanemethanol
cis-4-(Isopropyl)cyclohexanemethanol
trans-4-(Isopropyl)cyclohexanemethanol
Cyclohexanemethanol, 4-(1-methylethyl)-, cis
Cyclohexanemethanol, 4-(1-methylethyl)-, trans
p-Menthan-7-ol
cis-p-Menthan-7-ol
trans-p-Menthan-7-ol
Mayol (commercial name)
Meijiff (commercial name)', null),
  (51, 'IFRA_STD_209', '4-(Isopropyl)-.beta.-methylcyclohexanethanol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['67634-03-1']::text[], '2-(4-Isopropylcyclohexyl)propan-1-ol
Cyclohexaneethanol, .β.-methyl-4-(1-methylethyl)-
Rodipol C (Commercial name)', null),
  (51, 'IFRA_STD_210', 'Cyclohexanemethanol, 2,4-dimethyl-', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['68480-15-9']::text[], '(2,4-Dimethylcyclohexyl)methanol
2,4-Dimethylcyclohexanemethanol', null),
  (51, 'IFRA_STD_211', '3,3-Dimethyl-5-(2,2,3-trimethyl-3-cyclopenten-1-yl)-4-penten-2-ol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 49, array['107898-54-4']::text[], '4-Penten-2-ol, 3,3-dimethyl-5-(2,2,3-trimethyl-3-cyclopenten-1-yl)-
(+/-) trans-3,3-Dimethyl-5-(2,2,3-trimethyl-cyclopent-3-en-1-yl)pent-4-en-2-ol
Mysantol (Commercial name)
Polysantol (Commercial name)', null),
  (51, 'IFRA_STD_212', '5-(2,2,3-Trimethyl-3-cyclopentenyl)-3-methylpentan-2-ol', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['65113-99-7']::text[], '3-Cyclopentene-1-butanol, .α.,.β.,2,2,3-pentamethyl-
3-Methyl-5-(2,2,3-trimethylcyclopent-3-en-1-yl)pentan-2-ol
a,b,2,2,3-Pentamethylcyclopent-3-ene-1-butanol
Sandal Series G (Commercial name)
Sandalore (Commercial name)', null),
  (51, 'IFRA_STD_213', 'alpha,2,2,3-Tetramethylcyclopent-3-ene-1-butyraldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION', 49, array['65114-03-6']::text[], '2-Methyl-4-(2,2,3-trimethylcyclopent-3-en-1-yl)butanal
3-Cyclopentene-1-butanal, α,2,2,3-tetramethyl-
Florenza (commercial name)
Santafleur (commercial name)', null),
  (51, 'IFRA_STD_214', 'Isobutyl N-methylanthranylate', 'SPECIFICATION', 'POTENTIAL OF NITROSAMINE FORMATION', 44, array['65505-24-0']::text[], 'Benzoic acid, 2-(methylamino)-, 2-methylpropyl ester
Isobutyl 2-(methylamino)benzoate', '[Specified ingredients: notes] The material has been identified for having the potential of forming nitrosamines in nitrosating systems. Downstream users therefore have to be notified of the presence of the material and its potential, to be able to consider adequate protective measures.'),
  (51, 'IFRA_STD_215', 'p-Methyltetrahydroquinoline', 'SPECIFICATION', 'POTENTIAL OF NITROSAMINE FORMATION', 44, array['91-61-2']::text[], '6-Methyl-1,2,3,4-tetrahydroquinoline
Quinoline, 1,2,3,4-tetrahydro-6-methyl-
1,2,3,4-Tetrahydro-6-methylquinoline
Tetrahydro-p-methylquinoline', '[Specified ingredients: notes] The material has been identified for having the potential of forming nitrosamines in nitrosating systems. Downstream users therefore have to be notified of the presence of the material and its potential, to be able to consider adequate protective measures.'),
  (51, 'IFRA_STD_216', '1,2,3,4-Tetrahydro-4-methylquinoline', 'SPECIFICATION', 'POTENTIAL OF NITROSAMINE FORMATION', 44, array['19343-78-3']::text[], '4-Methyl-1,2,3,4-tetrahydroquinoline
Quinoline, 1,2,3,4-tetrahydro-4-methyl-
1,2,3,4-Tetrahydrolepidine
1,2,3,4-Tetrahydro-4-methylquinoline', '[Specified ingredients: notes] The material has been identified for having the potential of forming nitrosamines in nitrosating systems. Downstream users therefore have to be notified of the presence of the material and its potential, to be able to consider adequate protective measures.'),
  (51, 'IFRA_STD_217', '4-(4-Hydroxyphenyl)butan-2-one', 'RESTRICTION', 'DEPIGMENTATION', 49, array['5471-51-2']::text[], 'p-Hydroxybenzylacetone
1-p-Hydroxyphenyl-3-butanone
2-Butanone, 4-(4-hydroxyphenyl)-
4-(p-Hydroxyphenyl)-2-butanone
Raspberry ketone
Corps N 112 (commercial name)
Frambinon (commercial name)
Oxanone (commercial name)
Oxyphenylon (commercial name)', '[Contributions from other sources: notes] 4-(4-Hydroxyphenyl)butan-2-one has been found in natural extracts but only at trace levels.'),
  (51, 'IFRA_STD_218', 'Mintlactone', 'PROHIBITION', 'GENOTOXICITY', 50, array['13341-72-5', '38049-04-6']::text[], 'Mintlactone
2(4H)-Benzofuranone, 5,6,7,7a-tetrahydro-3,6-dimethyl_x0002_3,6-Dimethyl-5,6,7,7a-tetrahydro-1-benzofuran-2(4H)-one
3,6-Dimethyl-5,6,7,7a-tetrahydro-2(4H)benzo-furanone
5,6,7,7a-Tetrahydro-3,6-dimethyl-(4H)-benzofuran-2-one
Dehydroxymenthofurolactone
Menthofurolactone
Mint furanone
2(4H)-Benzofuranone, 5,6,7,7a-tetrahydro-3,6-dimethyl-, (6R,7aR)-
(-)-Mintlactone', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_219', 'Ethyl isopropyl bicycloheptene-2-carboxylate', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['116044-44-1', '116126-82-0']::text[], 'Ethyl isopropyl bicycloheptene-2-carboxylate
(2-endo,3-exo)-Ethyl 3-(1-methylethyl)bicyclo[2.2.1]hept-5-ene-2-carboxylate
(2-endo,3-exo)-Ethyl 3-isopropylbicyclo[2.2.1]hept-5-ene-2-carboxylate
Bicyclo[2.2.1]hept-5-ene-2-carboxylic acid, 3-(1-methylethyl)-, ethyl ester, (2-endo,3-exo)-
Ethyl (2S,3S)-3-isopropylbicyclo[2.2.1]hept-5-ene-2-carboxylate
Bicyclo[2.2.1]hept-5-ene-2-carboxylic acid, 3-(1-methylethyl)-, ethyl ester, (2-exo,3-endo)-
3-(1-Methyl ethyl) bicyclo(2.2.1) hept-5-ene-2-carboxylic acid ethyl ester
Ethyl (2R,3R)-3-isopropylbicyclo[2.2.1]hept-5-ene-2-carboxylate
Herbanate (commercial name)', null),
  (51, 'IFRA_STD_220', 'Tetramethyl bicyclo-2-heptene-2-propionaldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['33885-52-8']::text[], 'Tetramethyl bicyclo-2-heptene-2-propionaldehyde
.alpha.,.alpha.,6,6-Tetramethyl-2-norpinene-2-propionaldehyde
.alpha.,.alpha.,6,6-Tetramethylbicyclo[3.1.1]hept-2-ene-2-propionaldehyde
.α.,.α.,6,6-Tetramethyl-2-norpinene-2-propionaldehyde	
.α.,.α.,6,6-Tetramethylbicyclo[3.1.1]hept-2-ene-2-propionaldehyde
3-(6,6-Dimethylbicyclo[3.1.1]hept-2-en-2-yl)-2,2-dimethylpropanal
Bicyclo[3.1.1]hept-2-ene-2-propanal, .alpha.,.alpha.,6,6-tetramethyl-
Bicyclo[3.1.1]hept-2-ene-2-propanal, .α.,.α.,6,6-tetramethyl-
PIBA  (commercial name)
Pinyl iso butyraldehyde  (commercial name)', null),
  (51, 'IFRA_STD_221', '1-(2,2,6-Trimethylcyclohexyl)-3-hexanol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['70788-30-6']::text[], '1-(2,2,6-Trimethylcyclohexyl)-3-hexanol
1-(Trimethylcyclohexyl)-hexanol
2,2,6-Trimethyl-alpha-propylcyclohexanepropanol
2,2,6-Trimethyl-α-propylcyclohexanepropanol 
Cyclohexanepropanol, 2,2,6-trimethyl-.alpha.-propyl-
Cyclohexanepropanol, 2,2,6-trimethyl-.α.-propyl-
Norlimbanol (commercial name)
Norlimbanol Dextrol (commercial name)
Timberol (commercial name)
Karmawood (commercial name)', null),
  (51, 'IFRA_STD_222', '1-(2-tert.-Butyl cyclohexyloxy)-2-butanol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['139504-68-0']::text[], '1-(2-tert.-Butyl cyclohexyloxy)-2-butanol
1-(2-tert-Butylcyclohexyl)oxybutan-2-ol
1-[(2-tert-Butylcyclohexyl)oxy]butan-2-ol
1-(2-t.-Butyl cyclohexyloxy)-2-butanol
1-(2-t-Butylcyclohexyl)oxybutan-2-ol
1-[(2-t-Butylcyclohexyl)oxy]butan-2-ol
Amber Core (commercial name)
Coramber (commercial name)', null),
  (51, 'IFRA_STD_223', '3,6,7-Trimethyl-2,6-octadienal', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['1891-67-4']::text[], '3,6,7-Trimethyl-2,6-octadienal
2,​6-​Octadienal, 3,​6,​7-​trimethyl-', null),
  (51, 'IFRA_STD_224', '2,4,4,7-Tetramethyl-6-octen-3-one', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['74338-72-0']::text[], '2,4,4,7-Tetramethyl-6-octen-3-one
Claritone (commercial name)', null),
  (51, 'IFRA_STD_225', '2-Cyclohexylidene-2-ortho-tolylacetonitrile', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['916887-53-1']::text[], '2-Cyclohexylidene-2-ortho-tolylacetonitrile
2-Cyclohexylidene-2-o-tolylacetonitrile
Benzeneacetonitrile, alpha-cyclohexylidene-2-methyl-
Benzeneacetonitrile, α-cyclohexylidene-2-methyl-
Petalia (commercial name)', null),
  (51, 'IFRA_STD_226', 'Ethyl and Methyl furaneol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['27538-09-6', '27538-10-9']::text[], '2-Ethyl-4-hydroxy-5-methylfuran-3-one
Ethyl furaneol
Methyl furaneol
2-Ethyl-4-hydroxy-5-methyl-3(2H)-furanone
3(2H)-Furanone, 5-ethyl-4-hydroxy-2-methyl-
3(2H)-Furanone, 2-ethyl-4-hydroxy-5-methyl-
5-Ethyl-4-hydroxy-2-methyl-3(2H)-furanone
5-Ethyl-4-hydroxy-2-methylfuran-3(2H)-one
2-Ethyl-4-hydroxy-5-methylfuran-3(2H)-one
Homofuraneol
Maltarome (commercial name)
Homofuronol (commercial name)', null),
  (51, 'IFRA_STD_227', '2-Hexylidenecyclohexan-1-one', 'RESTRICTION', 'DERMAL SENSITIZATION', 51, array['16429-07-5']::text[], '2-Hexylidenecyclohexan-1-one
2-Hexylidenecyclohexanone
Cyclohexanone, 2-hexylidene-', null),
  (51, 'IFRA_STD_228', '2-Methyl-2-pentenal', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['623-36-9']::text[], '2-Methyl-2-pentenal 
2-Methylpent-2-enal
2-Pentenal, 2-methyl-
2,4-Dimethylcrotonaldehyde
α-Methyl-β-ethylacrolein
alpha-Methyl-beta-ethylacrolein', null),
  (51, 'IFRA_STD_229', '2-Octen-4-one', 'RESTRICTION', 'DERMAL SENSITIZATION', 51, array['4643-27-0']::text[], '2-Octen-4-one
Butyl propenyl ketone	
Oct-2-en-4-one
Propenyl butyl ketone
Strawbinone (commercial name)', null),
  (51, 'IFRA_STD_231', 'Methyl lavender ketone', 'RESTRICTION', 'DERMAL SENSITIZATION', 51, array['67633-95-8', '67801-33-6']::text[], 'Methyl lavender ketone
2-Nonanone, 3-(hydroxymethyl)-
3-(Hydroxymethyl)nonan-2-one
Herbal ketone
2-Acetyl-1-octanol
1-Hydroxydecan-3-one
3-Decanone, 1-hydroxy
1-Hydroxy-3-decanone
Ethyl hydroxyheptyl ketone', null),
  (51, 'IFRA_STD_232', '3,4,5,6,6-Pentamethylhept-3-en-2-one', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['81786-73-4', '81786-74-5', '81786-75-6', '86115-11-9']::text[], '3,4,5,6,6-Pentamethylhept-3-en-2-one
2-Heptanone, 3,5,6,6-tetramethyl-4-methylene-
3,5,6,6-Tetramethyl-4-methyleneheptan-2-one
3,5,6,6-Tetramethyl-4-methylideneheptan-2-one
(Z)-3,4,5,6,6-Pentamethylhept-3-en-2-one
3-Hepten-2-one, 3,4,5,6,6-pentamethyl-, (Z)-
3-Hepten-2-one, 3,4,5,6,6-pentamethyl-
(E)-3,4,5,6,6-Pentamethylhept-3-en-2-one
3-Hepten-2-one, 3,4,5,6,6-pentamethyl-, (E)-
Acetyl Diisoamylene (commercial name)
Koavone (commercial name)', null),
  (51, 'IFRA_STD_233', '3-Methyl-5-phenylpent-2-enenitrile', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['53243-59-7', '53243-60-0', '93893-89-1']::text[], '3-Methyl-5-phenylpent-2-enenitrile
2-Pentenenitrile, 3-methyl-5-phenyl- (isomer unspecified)
(Z)-3-Methyl-5-phenylpent-2-enenitrile
2-Pentenenitrile, 3-methyl-5-phenyl-, (Z)-
(E)-3-Methyl-5-phenylpent-2-enenitrile
2-Pentenenitrile, 3-methyl-5-phenyl-, (E)-
Citronitrile (commercial name)', null),
  (51, 'IFRA_STD_234', '3-Octen-2-one', 'RESTRICTION', 'DERMAL SENSITIZATION', 51, array['1669-44-9']::text[], '3-Octen-2-one
Oct-3-en-2-one
Methyl hexenyl ketone
1-Hexenyl methyl ketone', null),
  (51, 'IFRA_STD_235', 'Dimethyl octenone', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['2550-11-0']::text[], 'Dimethyl octenone
4,7-Dimethyloct-6-en-3-one
6-Octen-3-one, 4,7-dimethyl-', null),
  (51, 'IFRA_STD_236', 'Isopentylcyclohexanone', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['16587-71-6']::text[], 'Isopentylcyclohexanone
4-(1,1-Dimethylpropyl)cyclohexanone
4-t-Amylcyclohexanone
4-tert-Amylcyclohexanone
4-tert-Pentylcyclohexanone
Cyclohexanone, 4-(1,1-dimethylpropyl)-
p-tert Amyl cyclohexanone
Orris hexanone
4-(2-Methylbutan-2-yl)cyclohexan-1-one
Orivone (commercial name)', null),
  (51, 'IFRA_STD_237', 'Woody furan', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['338735-71-0', '351343-77-6']::text[], 'Woody furan
2,6,6,7,8,8-hexamethyldecahydro-2H-indeno[4,5-b]furan
Decahydro-2,6,6,7,8,8-hexamethyl-2H-indeno[4,5-b]furan
8H-Indeno(4,5-B)furan,2,3,3a,4,5,5a,6,7,8a,9-decahydro-2,6,6,7,8,8-hexamethyl (mixture of isomers)
1H-Indene, 2,3,3a,4,5,7a-hexahydro-1,1,2,3,3-pentamethyl-6-(2-propenyl)- 
Tris amber super (commercial name)
Trisamber (commercial name)', null),
  (51, 'IFRA_STD_238', 'Allyl 3-cyclohexylpropionate', 'RESTRICTION_SPECIFICATION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['2705-87-5']::text[], 'Allyl 3-cyclohexylpropionate
2-Propen-1-yl cyclohexanepropionate
Allyl 3-cyclohexylpropanoate
Allyl beta-cyclohexylpropionate
Allyl β-cyclohexylpropionate
Allyl cyclohexanepropionate
Allyl cyclohexylpropionate
Allyl hexahydrophenylpropionate
Cyclohexanepropionic acid, 2-propenyl ester
Prop-2-enyl 3-cyclohexylpropanoate
Cyclohexylpropionic acid allyl ester', '[Specified ingredients: notes] According to the IFRA Specification Standard of Allyl esters, Allyl esters should only be used when the level of free Allylalcohol in the ester is less than 0.1%. This recommendation is based on the delayed irritant potential of Allylalcohol.
Please also refer to the IFRA Specification Standard Allyl esters.'),
  (51, 'IFRA_STD_239', 'alpha-Amylcinnamicaldehyde diethyl acetal', 'RESTRICTION', 'DERMAL SENSITIZATION', 51, array['60763-41-9']::text[], 'alpha-Amylcinnamicaldehyde diethyl acetal
α-Amylcinnamicaldehyde diethyl acetal
[2-(Diethoxymethyl)hept-1-en-1-yl]benzene
1,1-Diethoxy-2-amyl-3-phenyl-2-propene
1,1-Diethoxy-2-amyl-3-phenylacrolein
2-Diethoxymethyl-1-phenylhept-1-ene
Benzene, [2-(diethoxymethyl)-1-heptenyl]-
2-(Diethoxymethyl)hept-1-enylbenzene', null),
  (51, 'IFRA_STD_240', 'alpha-Amylcinnamicaldehyde dimethyl acetal', 'RESTRICTION', 'DERMAL SENSITIZATION', 51, array['91-87-2']::text[], 'alpha-Amylcinnamicaldehyde dimethyl acetal
α-Amylcinnamicaldehyde dimethyl acetal
alpha-Amylcinnamaldehyde dimethyl acetal
α-Amylcinnamaldehyde dimethyl acetal
[2-(Dimethoxymethyl)hept-1-en-1-yl]benzene
1,1-Dimethoxy-2-amyl-3-phenyl-2-propene
1,1-Dimethoxy-2-benzylideneheptane
alpha-Amyl-beta-phenylacrolein dimethyl acetal
α-Amyl-β-phenylacrolein dimethyl acetal
alpha-Pentylcinnamaldehyde dimethyl acetal
α-Pentylcinnamaldehyde dimethyl acetal
Benzene, [2-(dimethoxymethyl)-1-heptenyl]-
[2-(Dimethoxymethyl)-1-heptenyl]benzene', null),
  (51, 'IFRA_STD_241', 'alpha-Cyclohexylidene benzeneacetonitrile', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['10461-98-0']::text[], 'alpha-Cyclohexylidene benzeneacetonitrile
α-Cyclohexylidene benzeneacetonitrile
.delta.1,.alpha.-Cyclohexaneacetonitrile, .alpha.-phenyl-
.δ.1,.α.-Cyclohexaneacetonitrile, .α.-phenyl-
2-Cyclohexylidene-2-phenylacetonitrile
Benzeneacetonitrile, alpha-cyclohexylidene-
Benzeneacetonitrile, α-cyclohexylidene-
Peonile (commercial name)
Rosinile (commercial name)
Sensinile (commercial name)', null),
  (51, 'IFRA_STD_242', '5-Hexen-1-yl 2-methylbutanoate', 'RESTRICTION', 'DERMAL SENSITIZATION', 51, array['155514-23-1']::text[], '5-Hexen-1-yl 2-methylbutanoate
Hex-5-en-1-yl 2-methylbutanoate
Butanoic acid, 2-​methyl-​, 5-​hexen-​1-​yl ester
Fructate (commercial name)', null),
  (51, 'IFRA_STD_243', 'Carvyl acetate', 'RESTRICTION', 'DERMAL SENSITIZATION', 51, array['1134-95-8', '1205-42-1', '97-42-7']::text[], 'Carvyl acetate
2-Cyclohexen-1-ol, 2-methyl-5-(1-methylethenyl)-, acetate
5-Isopropenyl-2-methylcyclohex-2-en-1-yl acetate
p-Mentha-6,8-dien-2-yl acetate
p-Mentha-6,8-dien-2-ol, acetate
2-Cyclohexen-1-ol, 2-methyl-5-(1-methylethenyl)-, acetate, cis-
5-Isopropenyl-2-methylcyclohex-2-en-1-yl acetate, cis-
p-Mentha-6,8-dien-2-ol, acetate, cis-
l-1-p-Mentha-6,8(9)-dien-2-yl acetate
cis-Carvyl acetate
laevo-Carvyl acetate
1-Carvyl acetate
cis-2-Methyl-5-(1-methylvinyl)cyclohex-2-en-1-yl acetate
2-Cyclohexen-1-ol, 2-methyl-5-(1-methylethenyl)-, acetate, trans-
5-Isopropenyl-2-methyl-2-cyclohexen-1-yl acetate, trans-
p-Mentha-6,8-dien-2-ol, acetate, trans-
trans-Carvyl acetate
(E)-Carvyl acetate
Carvyl acetate E', null),
  (51, 'IFRA_STD_244', 'cis-3-Heptenyl acetate', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['1576-78-9']::text[], 'cis-3-Heptenyl acetate
(Z)-Hept-3-enyl acetate
3-Hepten-1-ol, acetate, (Z)-
Hept-3-en-1-yl acetate
3-Hepten-1-yl acetate
(Z)-3-hepten-1-yl acetate
Violana (commercial name)', null),
  (51, 'IFRA_STD_245', 'cis-3-Hexenyl isovalerate', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['35154-45-1']::text[], 'cis-3-Hexenyl isovalerate
(Z)-Hex-3-enyl isovalerate
Hex-3-en-1-yl 3-methylbutanoate
Isovaleric acid, 3-hexenyl ester, (z)-
(Z)-3-Hexen-1-yl isovalerate', null),
  (51, 'IFRA_STD_246', 'cis-3-Hexenyl methyl carbonate', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['67633-96-9']::text[], 'cis-3-Hexenyl methyl carbonate
Carbonic acid, 3-hexenyl methyl ester, (Z)-
cis-3-Hexenyl carbonate
cis-3-Hexenyl methyl carbonate
Hex-3-en-1-yl methyl carbonate
Methyl cis-3-hexenyl carbonate
(Z)-3-Hexen-1-yl methyl carbonate
Liffarome (commercial name)
Leafovert (commercial name)
Vertelione (commercial name)', null),
  (51, 'IFRA_STD_247', 'cis-3-Nonenyl acetate', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['13049-88-2']::text[], 'cis-3-Nonenyl acetate
(Z)-3-Nonenyl acetate
3-Nonen-1-ol, acetate, (3Z)-
(Z)-3-Nonen-1-yl acetate
Acetic acid 3-nonenyl ester
Pear acetate (commercial name)', null),
  (51, 'IFRA_STD_248', 'Citronellyl acetate', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['141-11-7', '150-84-5', '67601-05-2']::text[], 'Citronellyl acetate
3,7-Dimethyl-6-octen-1-ol acetate
3,7-Dimethyl-6-octen-1-yl acetate
3,7-Dimethyloct-6-en-1-yl acetate
6-Octen-1-ol, 3,7-dimethyl-, acetate
Acetic acid, citronellyl ester
laevo-Citronellyl acetate
3,7-Dimethyloct-6-enyl acetate
6-Octen-1-ol, 3,7-dimethyl-, 1-acetate (3S)-
6-Octen-1-ol, 3,7-dimethyl-, acetate (S)-
(S)-3,7-Dimethyloct-6-en-1-yl acetate
(-)-3,7-dimethyloct-6-enyl acetate
alpha-Citronellyl acetate
3,7-Dimethyl-(6-or 7-)octen-1-yl acetate
3,7-Dimethyl-(6-or 7-)octen-1-yl ethanoate
3,7-Dimethyloct-7-en-1-yl acetate
7-Octen-1-ol, 3,7-dimethyl-, acetate
3,7-Dimethyl-7-octen-1-yl acetate
3,7-Dimethyl-7-octen-1-yl ethanoate
(S)-3,7-Dimethyloct-7-enyl acetate
Rhodinyl acetate
Rhodinyl ethanoate
l-Citronellyl acetate (commercial name)', null),
  (51, 'IFRA_STD_249', 'Cyclohexadecanone', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['2550-52-9']::text[], 'Cyclohexadecanone
Homoexaltone
Isomuscone (commercial name)', null),
  (51, 'IFRA_STD_250', 'Cyclohexadecenone', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['2550-59-6', '3100-36-5', '5120-20-7', '5365-06-0', '854373-70-9', '854373-71-0', '88642-03-9']::text[], 'Cyclohexadecenone
Cyclohexadec-2-en-1-one
Cyclohexadec-8(7)-en-1-one
8-Cyclohexadecen-1-one, (8E)
(Z)-Cyclohexadec-8-enone
7-Cyclohexadecen-1-one
8-Cyclohexadecen-1-one
Cyclohexadec-8-en-1-one mixture of cis and trans isomer
Cyclohexadec-8-en-1-one
8-Cyclohexadecen-1-one, (8Z)
8-Cyclohexadecen-1-one, (Z)
(Z)-8-Cyclohexadecen-1-one
8-Cyclohexadecenone
cis-Cyclohexadec-8-en-1-on
8-cis-Cyclohexadecen-1-on
7-Cyclohexadecen-1-one, (7Z)
7-Cyclohexadecen-1-one, (7E)
(E)-Cyclohexadec-7-enone
Globanone (commercial name)
Aurelione (commercial name)', null),
  (51, 'IFRA_STD_251', '1-(2,2,6-Trimethylcyclohexyl)-3-pentanol', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['60241-52-3', '60241-53-4']::text[], '1-(2,2,6-Trimethylcyclohexyl)-3-pentanol
Cyclohexanepropanol, α-ethyl-2,2,6-trimethyl-
Cyclohexanepropanol, alpha-ethyl-2,2,6-trimethyl-
alpha-Ethyl-2,2,6-trimethylcyclohexanepropanol
α-Ethyl-2,2,6-trimethylcyclohexanepropanol
.alpha.,.beta.,2,2,6-Pentamethylcyclohexanepropanol
.α.,.β.,2,2,6-Pentamethylcyclohexanepropanol
3-Methyl-4-(2,2,6-trimethylcyclohexyl)butan-2-ol
4-(2,6,6-Trimethylcyclohexyl)-3-methylbutan-2-ol
Cyclohexanepropanol, .α.,.β.,2,2,6-pentamethyl-
Cyclohexanepropanol, .alpha.,.beta.,2,2,6-pentamethyl-
Methyltetrahydroionol
Iso-methyl tetrahydroionol
Madranol (commercial name)', null),
  (51, 'IFRA_STD_252', '(Ethoxymethoxy)-cyclododecane', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['58567-11-6']::text[], '(Ethoxymethoxy)-cyclododecane
Cyclododecane, (ethoxymethoxy)-
Formaldehyde cyclododecyl ethyl acetal
Amber decane
Amberwood
2-Cyclododecyl propanol
Amberwood F (commercial name)
Boisambrene forte (commercial name)', null),
  (51, 'IFRA_STD_253', '6-Hydroxy-2,6-dimethylheptanal', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['62439-42-3']::text[], '6-Hydroxy-2,6-dimethylheptanal
Heptanal, 6-​hydroxy-​2,​6-​dimethyl-', null),
  (51, 'IFRA_STD_254', 'Isobutyl cinnamate', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['122-67-8']::text[], 'Isobutyl cinnamate
2-Methylpropyl 3-phenylpropenoate
2-Methylpropyl beta-phenylacrylate
2-Methylpropyl β-phenylacrylate
2-Methylpropyl cinnamate
2-Propenoic acid, 3-phenyl-, 2-methylpropyl ester
Isobutyl 3-phenylacrylate
Isobutyl 3-phenylpropenoate
Isobutyl beta-phenylacrylate
Labdanol
3-Phenylpropenoic acid isobutyl ester
2-methylpropyl (E)-3-phenylprop-2-enoate', null),
  (51, 'IFRA_STD_255', 'Isoeugenyl acetate', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['93-29-8']::text[], 'Isoeugenyl acetate
2-Methoxy-4-prop-1-en-1-ylphenyl acetate
2-Methoxy-4-propenylphenyl acetate
4-Acetoxy-3-methoxy-1-(1-propen-1-yl)benzene
Acetisoeugenol
Acetyl isoeugenol
Isoeugenol acetate
Phenol, 2-methoxy-4-(1-propenyl)-, acetate
1-Acetoxy-2-methoxy-4-(1-propenyl)benzene
Acetic acid isoeugenyl ester', null),
  (51, 'IFRA_STD_256', '4-Methyl-1-propan-2-ylbicyclo[2.2.2]oct-2-ene-8-carboxylate', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['68966-86-9']::text[], '4-Methyl-1-propan-2-ylbicyclo[2.2.2]oct-2-ene-8-carboxylate
Bicyclo[2.2.2]oct-5-ene-2-carboxylic acid, 1(or 4)-methyl-4(or 1)-(1-methylethyl)-, methyl ester
Methyl 4(or 1)-isopropyl-1(or 4)-methylbicyclo[2.2.2]oct-5-ene-2-carboxylate
Mahagonat  (commercial name)
Poivrol (commercial name)', null),
  (51, 'IFRA_STD_257', 'Methyl vanillyl ether', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['5533-03-9']::text[], 'Methyl vanillyl ether
2-Methoxy-4-(methoxymethyl)phenol
Phenol, 2-methoxy-4-(methoxymethyl)-
4-Hydroxy-3-methoxybenzyl methyl ether
Mevanyl (commercial name)
Vani-White (commercial name)', null),
  (51, 'IFRA_STD_258', 'Myraldyl acetate', 'RESTRICTION', 'DERMAL SENSITIZATION', 51, array['72403-67-9']::text[], 'Myraldyl acetate
3(or 4)-(4-Methylpenten-3-yl)cyclohex-3-ene-1-methyl acetate
3-Cyclohexene-1-methanol, 3(or 4)-(4-methyl-3-pentenyl)-, acetate
4(or 3)-(4-Methyl-3-pentenyl)-3-cyclohexenylmethyl acetate & isomers', null),
  (51, 'IFRA_STD_259', 'Octahydro-dimethylnaphthalene-2-carbaldehyde (mixed isomers)', 'RESTRICTION', 'DERMAL SENSITIZATION', 51, array['68738-94-3', '68738-96-5', '68991-96-8', '68991-97-9']::text[], '2-Naphthalenecarboxaldehyde, octahydro-8,8-dimethyl-
Dimethyloctahydro-2-naphthaldehyde
Octahydro-8,8-dimethyl-2-naphthalenecarboxaldehyde
Octahydro-8,8-dimethylnaphthalene-2-carbaldehyde
2-Naphthalenecarboxaldehyde, octahydro-5,5-dimethyl-
Octahydro-5,5-dimethylnaphthalene-2-carbaldehyde
1,2,3,4,5,6,7,8-Octahydro-5,5-dimethylnaphthalene-2-carbaldehyde
2-Naphthalenecarboxaldehyde, 1,2,3,4,5,6,7,8-octahydro-5,5-dimethyl-
5,5-Dimethyl-1,2,3,4,5,6,7,8-octahydro-2-naphthalenecarboxaldehyde
1,2,3,4,5,6,7,8-Octahydro-8,8-dimethyl-2-naphthaldehyde
2-Naphthalenecarboxaldehyde, 1,2,3,4,5,6,7,8-octahydro-8,8-dimethyl-
8,8-Dimethyl-1,2,3,4,5,6,7,8-octahydro-2-naphthalenecarboxaldehyde
Cyclomeral (commercial name)
Cyclomyral (commercial name)
Melafleur (commercial name)
Cyclemone A (commercial name)', null),
  (51, 'IFRA_STD_260', 'p-Cresol', 'RESTRICTION', 'DEPIGMENTATION', 51, array['106-44-5', '1319-77-3']::text[], '106-44-5:
p-Cresol
1-Hydroxy-4-methylbenzene
1-Methyl-4-hydroxybenzene
4-Cresol
4-Methylphenol
para-Cresol
p-Cresylic acid
Phenol, 4-methyl-
p-Hydroxytoluene
p-Methylphenol
1319-77-3:
Cresols
Cresol (mixed isomers)
Cresol, pure
Methylphenol
Mixed cresols
Phenol, methyl-', null),
  (51, 'IFRA_STD_261', 'Phenoxyacetaldehyde', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['2120-70-9']::text[], 'Phenoxyacetaldehyde
Acetaldehyde, phenoxy-
Cortex aldehyde 50
2-Phenoxyacetaldehyde
Acetaldehyde, 2-phenoxy-', null),
  (51, 'IFRA_STD_262', 'Carvomenthone', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['499-70-7', '59471-80-6']::text[], 'Carvomenthone
trans-p-Menthan-2-one
p-Menthan-2-one
trans-5-Isopropyl-2-methylcyclohexan-1-one
5-Isopropyl-2-methylcyclohexanone
Cyclohexanone, 2-methyl-5-(1-methylethyl)-, trans-
Tetrahydrocarvone
Cyclohexanone, 2-​methyl-​5-​(1-​methylethyl)​-', null),
  (51, 'IFRA_STD_263', '4-tert-Butylcyclohexanone', 'RESTRICTION', 'DERMAL SENSITIZATION AND SYSTEMIC TOXICITY', 51, array['98-53-3']::text[], '4-tert-Butylcyclohexanone
para-tert-Butylcyclohexanone
p-tert-Butylcyclohexanone
Cyclohexanone, 4-(1,1-dimethylethyl)-', null),
  (51, 'IFRA_STD_264', '7-Methoxy-3,7-dimethyloct-1-ene', 'RESTRICTION', 'SYSTEMIC TOXICITY', 51, array['53767-86-5']::text[], '7-Methoxy-3,7-dimethyloct-1-ene
1-Octene, 7-methoxy-3,7-dimethyl-', null),
  (51, 'IFRA_STD_265', 'Methoxycyclododecane', 'RESTRICTION', 'SYSTEMIC TOXICITY', 51, array['2986-54-1']::text[], 'Methoxycyclododecane
Cyclododecane, methoxy-
Cyclododecyl methyl ether
Palisandin', null),
  (51, 'IFRA_STD_266', '3-Acetyl-2,5-dimethylfuran', 'PROHIBITION', 'GENOTOXICITY', 51, array['10599-70-9']::text[], '3-Acetyl-2,5-dimethylfuran
1-(2,5-Dimethyl-3-furyl)ethanone
2,5-Dimethyl-3-acetylfuran
Ethanone, 1-(2,5-dimethyl-3-furanyl)-', '[Prohibited fragrance ingredients: notes] This material should not be used as a fragrance ingredient.'),
  (51, 'IFRA_STD_267', '2,5-Octadien-4-one, 5,6,7-trimethyl-, (2E)-', 'RESTRICTION', 'DERMAL SENSITIZATION', 51, array['357650-26-1', '358331-95-0', '847144-75-6']::text[], '2,5-Octadien-4-one, 5,6,7-trimethyl-, (2E)-
(2E,5Z)-5,6,7-Trimethylocta-2,5-dien-4-one
2,5-Octadien-4-one, 5,6,7-trimethyl-, (2E,5Z)-
2,5-Octadien-4-one, 5,6,7-trimethyl-, (2E,5E)-
(2E,5E)-5,6,7-Trimethylocta-2,5-dien-4-one
Pomarose (commercial name)', null);

insert into public.ifra_standard_cas (amendment, standard_key, cas) values
  (51, 'IFRA_STD_001', '144020-22-4'),
  (51, 'IFRA_STD_001', '28371-99-5'),
  (51, 'IFRA_STD_002', '62563-80-8'),
  (51, 'IFRA_STD_002', '68917-34-0'),
  (51, 'IFRA_STD_002', '73246-97-6'),
  (51, 'IFRA_STD_002', '84082-84-8'),
  (51, 'IFRA_STD_003', '7493-74-5'),
  (51, 'IFRA_STD_003', '863306-60-9'),
  (51, 'IFRA_STD_004', '101-85-9'),
  (51, 'IFRA_STD_005', '122-40-7'),
  (51, 'IFRA_STD_006', '105-13-5'),
  (51, 'IFRA_STD_006', '1331-81-3'),
  (51, 'IFRA_STD_007', '100-52-7'),
  (51, 'IFRA_STD_008', '100-51-6'),
  (51, 'IFRA_STD_009', '120-51-4'),
  (51, 'IFRA_STD_010', '103-41-3'),
  (51, 'IFRA_STD_011', '118-58-1'),
  (51, 'IFRA_STD_012', '7492-44-6'),
  (51, 'IFRA_STD_013', '62518-65-4'),
  (51, 'IFRA_STD_014', '18127-01-0'),
  (51, 'IFRA_STD_015', '80-54-6'),
  (51, 'IFRA_STD_016', '2244-16-8'),
  (51, 'IFRA_STD_016', '6485-40-1'),
  (51, 'IFRA_STD_016', '99-49-0'),
  (51, 'IFRA_STD_017', '104-54-1'),
  (51, 'IFRA_STD_018', '104-55-2'),
  (51, 'IFRA_STD_019', '4364-06-1'),
  (51, 'IFRA_STD_020', '1885-38-7'),
  (51, 'IFRA_STD_020', '4360-47-8'),
  (51, 'IFRA_STD_021', '106-26-3'),
  (51, 'IFRA_STD_021', '141-27-5'),
  (51, 'IFRA_STD_021', '5392-40-5'),
  (51, 'IFRA_STD_022', '106-22-9'),
  (51, 'IFRA_STD_022', '1117-61-9'),
  (51, 'IFRA_STD_022', '141-25-3'),
  (51, 'IFRA_STD_022', '26489-01-0'),
  (51, 'IFRA_STD_022', '6812-78-8'),
  (51, 'IFRA_STD_022', '7540-51-4'),
  (51, 'IFRA_STD_023', '91-64-5'),
  (51, 'IFRA_STD_024', '122-03-2'),
  (51, 'IFRA_STD_025', '103-95-7'),
  (51, 'IFRA_STD_026', '106-02-5'),
  (51, 'IFRA_STD_027', '103-50-4'),
  (51, 'IFRA_STD_028', '33704-61-9'),
  (51, 'IFRA_STD_029', '119-84-6'),
  (51, 'IFRA_STD_030', '27939-60-2'),
  (51, 'IFRA_STD_030', '35145-02-9'),
  (51, 'IFRA_STD_030', '36635-35-5'),
  (51, 'IFRA_STD_030', '67801-65-4'),
  (51, 'IFRA_STD_030', '68039-48-5'),
  (51, 'IFRA_STD_030', '68039-49-6'),
  (51, 'IFRA_STD_030', '68084-52-6'),
  (51, 'IFRA_STD_030', '68737-61-1'),
  (51, 'IFRA_STD_031', '56973-85-4'),
  (51, 'IFRA_STD_032', '103694-68-4'),
  (51, 'IFRA_STD_033', '2563-07-7'),
  (51, 'IFRA_STD_034', '4748-78-1'),
  (51, 'IFRA_STD_035', '97-53-0'),
  (51, 'IFRA_STD_036', '106-28-5'),
  (51, 'IFRA_STD_036', '16106-95-9'),
  (51, 'IFRA_STD_036', '3790-71-4'),
  (51, 'IFRA_STD_036', '3879-60-5'),
  (51, 'IFRA_STD_036', '4602-84-0'),
  (51, 'IFRA_STD_037', '106-24-1'),
  (51, 'IFRA_STD_038', '39189-74-7'),
  (51, 'IFRA_STD_039', '16635-54-4'),
  (51, 'IFRA_STD_039', '505-57-7'),
  (51, 'IFRA_STD_039', '6728-26-3'),
  (51, 'IFRA_STD_040', '101-86-0'),
  (51, 'IFRA_STD_041', '17373-89-6'),
  (51, 'IFRA_STD_042', '6259-76-3'),
  (51, 'IFRA_STD_043', '107-75-5'),
  (51, 'IFRA_STD_044', '31906-04-4'),
  (51, 'IFRA_STD_044', '51414-25-6'),
  (51, 'IFRA_STD_045', '6658-48-6'),
  (51, 'IFRA_STD_046', '1335-66-6'),
  (51, 'IFRA_STD_046', '1423-46-7'),
  (51, 'IFRA_STD_046', '67634-07-5'),
  (51, 'IFRA_STD_047', '68527-77-5'),
  (51, 'IFRA_STD_048', '5932-68-3'),
  (51, 'IFRA_STD_048', '97-54-1'),
  (51, 'IFRA_STD_049', '8022-96-6'),
  (51, 'IFRA_STD_049', '8024-43-9'),
  (51, 'IFRA_STD_049', '84776-64-7'),
  (51, 'IFRA_STD_049', '90045-94-6'),
  (51, 'IFRA_STD_050', '1034798-23-6'),
  (51, 'IFRA_STD_050', '91770-14-8'),
  (51, 'IFRA_STD_051', '8014-71-9'),
  (51, 'IFRA_STD_051', '84082-61-1'),
  (51, 'IFRA_STD_052', '2111-75-3'),
  (51, 'IFRA_STD_053', '68683-20-5'),
  (51, 'IFRA_STD_054', '123-11-5'),
  (51, 'IFRA_STD_055', '1504-74-1'),
  (51, 'IFRA_STD_056', '86803-90-9'),
  (51, 'IFRA_STD_057', '5462-06-6'),
  (51, 'IFRA_STD_058', '93-51-6'),
  (51, 'IFRA_STD_059', '1205-17-0'),
  (51, 'IFRA_STD_060', '101-39-3'),
  (51, 'IFRA_STD_061', '1604-28-0'),
  (51, 'IFRA_STD_062', '111-12-6'),
  (51, 'IFRA_STD_063', '127-42-4'),
  (51, 'IFRA_STD_063', '127-43-5'),
  (51, 'IFRA_STD_063', '127-51-5'),
  (51, 'IFRA_STD_063', '1335-46-2'),
  (51, 'IFRA_STD_063', '1335-94-0'),
  (51, 'IFRA_STD_063', '7779-30-8'),
  (51, 'IFRA_STD_063', '79-89-0'),
  (51, 'IFRA_STD_064', '111-80-8'),
  (51, 'IFRA_STD_065', '68922-13-4'),
  (51, 'IFRA_STD_066', '13257-44-8'),
  (51, 'IFRA_STD_067', '68917-10-2'),
  (51, 'IFRA_STD_067', '9000-50-4'),
  (51, 'IFRA_STD_067', '90028-68-5'),
  (51, 'IFRA_STD_068', '54464-57-2'),
  (51, 'IFRA_STD_068', '54464-59-4'),
  (51, 'IFRA_STD_068', '68155-66-8'),
  (51, 'IFRA_STD_068', '68155-67-9'),
  (51, 'IFRA_STD_069', '2442-10-6'),
  (51, 'IFRA_STD_070', '8021-36-1'),
  (51, 'IFRA_STD_070', '9000-78-6'),
  (51, 'IFRA_STD_070', '93384-32-8'),
  (51, 'IFRA_STD_071', '8007-00-9'),
  (51, 'IFRA_STD_072', '13144-88-2'),
  (51, 'IFRA_STD_073', '122-78-1'),
  (51, 'IFRA_STD_074', '16251-77-7'),
  (51, 'IFRA_STD_075', '1340-11-0'),
  (51, 'IFRA_STD_075', '34713-70-7'),
  (51, 'IFRA_STD_075', '93-53-8'),
  (51, 'IFRA_STD_076', '17369-59-4'),
  (51, 'IFRA_STD_077', '23696-85-7'),
  (51, 'IFRA_STD_077', '23726-91-2'),
  (51, 'IFRA_STD_077', '23726-92-3'),
  (51, 'IFRA_STD_077', '23726-93-4'),
  (51, 'IFRA_STD_077', '23726-94-5'),
  (51, 'IFRA_STD_077', '24720-09-0'),
  (51, 'IFRA_STD_077', '33673-71-1'),
  (51, 'IFRA_STD_077', '35044-68-9'),
  (51, 'IFRA_STD_077', '35087-49-1'),
  (51, 'IFRA_STD_077', '39872-57-6'),
  (51, 'IFRA_STD_077', '43052-87-5'),
  (51, 'IFRA_STD_077', '57378-68-4'),
  (51, 'IFRA_STD_077', '59739-63-8'),
  (51, 'IFRA_STD_077', '70266-48-7'),
  (51, 'IFRA_STD_077', '71048-82-3'),
  (51, 'IFRA_STD_077', '87064-19-5'),
  (51, 'IFRA_STD_078', '101227-15-0'),
  (51, 'IFRA_STD_078', '8024-01-9'),
  (51, 'IFRA_STD_078', '8046-19-3'),
  (51, 'IFRA_STD_078', '94891-27-7'),
  (51, 'IFRA_STD_078', '94891-28-8'),
  (51, 'IFRA_STD_079', '84650-60-2'),
  (51, 'IFRA_STD_080', '68648-41-9'),
  (51, 'IFRA_STD_080', '68917-40-8'),
  (51, 'IFRA_STD_080', '90028-67-4'),
  (51, 'IFRA_STD_081', '104-87-0'),
  (51, 'IFRA_STD_081', '1334-78-7'),
  (51, 'IFRA_STD_081', '529-20-4'),
  (51, 'IFRA_STD_081', '620-23-5'),
  (51, 'IFRA_STD_082', '116-26-7'),
  (51, 'IFRA_STD_083', '8024-12-2'),
  (51, 'IFRA_STD_083', '85116-63-8'),
  (51, 'IFRA_STD_084', '68606-83-7'),
  (51, 'IFRA_STD_084', '8006-81-3'),
  (51, 'IFRA_STD_084', '83863-30-3'),
  (51, 'IFRA_STD_085', '15323-35-0'),
  (51, 'IFRA_STD_086', '8015-64-3'),
  (51, 'IFRA_STD_086', '84775-41-7'),
  (51, 'IFRA_STD_087', '8007-75-8'),
  (51, 'IFRA_STD_087', '89957-91-5'),
  (51, 'IFRA_STD_088', '68916-04-1'),
  (51, 'IFRA_STD_088', '72968-50-4'),
  (51, 'IFRA_STD_090', '8014-13-9'),
  (51, 'IFRA_STD_090', '84775-51-9'),
  (51, 'IFRA_STD_091', '8016-20-4'),
  (51, 'IFRA_STD_091', '90045-43-5'),
  (51, 'IFRA_STD_092', '8008-56-8'),
  (51, 'IFRA_STD_092', '84929-31-7'),
  (51, 'IFRA_STD_093', '8008-26-2'),
  (51, 'IFRA_STD_093', '90063-52-8'),
  (51, 'IFRA_STD_094', '85-91-6'),
  (51, 'IFRA_STD_095', '93-08-3'),
  (51, 'IFRA_STD_096', '8014-29-7'),
  (51, 'IFRA_STD_096', '84929-47-5'),
  (51, 'IFRA_STD_097', '8016-84-0'),
  (51, 'IFRA_STD_097', '90131-43-4'),
  (51, 'IFRA_STD_097', '91722-29-1'),
  (51, 'IFRA_STD_097', '91770-75-1'),
  (51, 'IFRA_STD_098', '98-01-1'),
  (51, 'IFRA_STD_099', '140-67-0'),
  (51, 'IFRA_STD_099', '1407-27-8'),
  (51, 'IFRA_STD_099', '77525-18-9'),
  (51, 'IFRA_STD_100', '93-15-2'),
  (51, 'IFRA_STD_101', '41270-80-8'),
  (51, 'IFRA_STD_102', '1125-12-8'),
  (51, 'IFRA_STD_102', '471-15-8'),
  (51, 'IFRA_STD_102', '546-80-5'),
  (51, 'IFRA_STD_102', '76231-76-0'),
  (51, 'IFRA_STD_103', '88-29-9'),
  (51, 'IFRA_STD_104', '13706-86-0'),
  (51, 'IFRA_STD_105', '84012-20-4'),
  (51, 'IFRA_STD_105', '97676-35-2'),
  (51, 'IFRA_STD_106', '73157-43-4'),
  (51, 'IFRA_STD_107', '57-06-7'),
  (51, 'IFRA_STD_108', '25564-22-1'),
  (51, 'IFRA_STD_109', '943-88-4'),
  (51, 'IFRA_STD_110', '2883-98-9'),
  (51, 'IFRA_STD_110', '494-40-6'),
  (51, 'IFRA_STD_110', '5273-86-9'),
  (51, 'IFRA_STD_111', '71-43-2'),
  (51, 'IFRA_STD_112', '140-29-4'),
  (51, 'IFRA_STD_113', '122-57-6'),
  (51, 'IFRA_STD_114', '68917-50-0'),
  (51, 'IFRA_STD_114', '8001-88-5'),
  (51, 'IFRA_STD_114', '84012-15-7'),
  (51, 'IFRA_STD_114', '85251-66-7'),
  (51, 'IFRA_STD_114', '85940-29-0'),
  (51, 'IFRA_STD_114', '91745-85-6'),
  (51, 'IFRA_STD_115', '8022-81-9'),
  (51, 'IFRA_STD_115', '84649-96-7'),
  (51, 'IFRA_STD_116', '76-29-9'),
  (51, 'IFRA_STD_117', '103-64-0'),
  (51, 'IFRA_STD_118', '98-54-4'),
  (51, 'IFRA_STD_119', '8013-10-3'),
  (51, 'IFRA_STD_119', '90046-02-9'),
  (51, 'IFRA_STD_120', '33204-74-9'),
  (51, 'IFRA_STD_121', '8006-99-3'),
  (51, 'IFRA_STD_121', '8024-11-1'),
  (51, 'IFRA_STD_121', '89997-47-7'),
  (51, 'IFRA_STD_122', '4173-44-8'),
  (51, 'IFRA_STD_123', '8050-09-7'),
  (51, 'IFRA_STD_124', '8023-88-9'),
  (51, 'IFRA_STD_124', '90106-55-1'),
  (51, 'IFRA_STD_125', '4756-19-8'),
  (51, 'IFRA_STD_126', '63697-53-0'),
  (51, 'IFRA_STD_127', '62265-99-0'),
  (51, 'IFRA_STD_128', '3591-42-2'),
  (51, 'IFRA_STD_129', '13162-46-4'),
  (51, 'IFRA_STD_129', '142-83-6'),
  (51, 'IFRA_STD_129', '20432-40-0'),
  (51, 'IFRA_STD_129', '21662-16-8'),
  (51, 'IFRA_STD_129', '2363-88-4'),
  (51, 'IFRA_STD_129', '25152-84-5'),
  (51, 'IFRA_STD_129', '30361-28-5'),
  (51, 'IFRA_STD_129', '30361-29-6'),
  (51, 'IFRA_STD_129', '4313-03-5'),
  (51, 'IFRA_STD_129', '4488-48-6'),
  (51, 'IFRA_STD_129', '5577-44-6'),
  (51, 'IFRA_STD_129', '5910-85-0'),
  (51, 'IFRA_STD_129', '5910-87-2'),
  (51, 'IFRA_STD_129', '6750-03-4'),
  (51, 'IFRA_STD_129', '764-40-9'),
  (51, 'IFRA_STD_129', '80466-34-8'),
  (51, 'IFRA_STD_130', '141-05-9'),
  (51, 'IFRA_STD_131', '6248-20-0'),
  (51, 'IFRA_STD_132', '17874-34-9'),
  (51, 'IFRA_STD_133', '40607-48-5'),
  (51, 'IFRA_STD_134', '617-54-9'),
  (51, 'IFRA_STD_135', '122-39-4'),
  (51, 'IFRA_STD_136', '18485-38-6'),
  (51, 'IFRA_STD_137', '10031-92-2'),
  (51, 'IFRA_STD_138', '10484-32-9'),
  (51, 'IFRA_STD_138', '10519-20-7'),
  (51, 'IFRA_STD_139', '140-88-5'),
  (51, 'IFRA_STD_140', '110-80-5'),
  (51, 'IFRA_STD_140', '111-15-9'),
  (51, 'IFRA_STD_141', '109-86-4'),
  (51, 'IFRA_STD_141', '110-49-6'),
  (51, 'IFRA_STD_142', '68916-52-9'),
  (51, 'IFRA_STD_142', '90028-74-3'),
  (51, 'IFRA_STD_143', '98-00-0'),
  (51, 'IFRA_STD_144', '623-15-4'),
  (51, 'IFRA_STD_145', '31983-27-4'),
  (51, 'IFRA_STD_145', '5146-66-7'),
  (51, 'IFRA_STD_145', '5585-39-7'),
  (51, 'IFRA_STD_146', '18829-55-5'),
  (51, 'IFRA_STD_147', '111-28-4'),
  (51, 'IFRA_STD_147', '17102-64-6'),
  (51, 'IFRA_STD_148', '700-82-3'),
  (51, 'IFRA_STD_149', '67746-30-9'),
  (51, 'IFRA_STD_150', '18318-83-7'),
  (51, 'IFRA_STD_151', '1333-89-7'),
  (51, 'IFRA_STD_151', '13393-93-6'),
  (51, 'IFRA_STD_151', '26266-77-3'),
  (51, 'IFRA_STD_152', '622-62-8'),
  (51, 'IFRA_STD_153', '150-76-5'),
  (51, 'IFRA_STD_154', '78-59-1'),
  (51, 'IFRA_STD_155', '34131-99-2'),
  (51, 'IFRA_STD_156', '85085-26-3'),
  (51, 'IFRA_STD_157', '51154-96-2'),
  (51, 'IFRA_STD_157', '54814-64-1'),
  (51, 'IFRA_STD_158', '531-59-9'),
  (51, 'IFRA_STD_159', '104-27-8'),
  (51, 'IFRA_STD_160', '92-48-8'),
  (51, 'IFRA_STD_161', '2445-83-2'),
  (51, 'IFRA_STD_162', '623-43-8'),
  (51, 'IFRA_STD_163', '87-05-8'),
  (51, 'IFRA_STD_164', '5406-12-2'),
  (51, 'IFRA_STD_165', '80-62-6'),
  (51, 'IFRA_STD_166', '53153-66-5'),
  (51, 'IFRA_STD_167', '116-66-5'),
  (51, 'IFRA_STD_168', '83-66-9'),
  (51, 'IFRA_STD_169', '145-39-1'),
  (51, 'IFRA_STD_170', '81-15-2'),
  (51, 'IFRA_STD_171', '98-95-3'),
  (51, 'IFRA_STD_172', '25677-40-1'),
  (51, 'IFRA_STD_174', '103-79-7'),
  (51, 'IFRA_STD_175', '93-99-2'),
  (51, 'IFRA_STD_176', '141-10-6'),
  (51, 'IFRA_STD_177', '1117-41-5'),
  (51, 'IFRA_STD_177', '26651-96-7'),
  (51, 'IFRA_STD_177', '72968-25-3'),
  (51, 'IFRA_STD_178', '91-22-5'),
  (51, 'IFRA_STD_179', '120-58-1'),
  (51, 'IFRA_STD_179', '94-58-6'),
  (51, 'IFRA_STD_179', '94-59-7'),
  (51, 'IFRA_STD_180', '84961-58-0'),
  (51, 'IFRA_STD_181', '68916-94-9'),
  (51, 'IFRA_STD_181', '8024-00-8'),
  (51, 'IFRA_STD_181', '90046-03-0'),
  (51, 'IFRA_STD_181', '90046-04-1'),
  (51, 'IFRA_STD_182', '108-88-3'),
  (51, 'IFRA_STD_183', '515-03-7'),
  (51, 'IFRA_STD_185', '4674-50-4'),
  (51, 'IFRA_STD_186', '138-86-3'),
  (51, 'IFRA_STD_186', '5989-27-5'),
  (51, 'IFRA_STD_186', '5989-54-8'),
  (51, 'IFRA_STD_186', '7705-14-8'),
  (51, 'IFRA_STD_187', '126-90-9'),
  (51, 'IFRA_STD_187', '126-91-0'),
  (51, 'IFRA_STD_187', '78-70-6'),
  (51, 'IFRA_STD_189', '81-14-1'),
  (51, 'IFRA_STD_190', '63477-41-8'),
  (51, 'IFRA_STD_190', '94-86-0'),
  (51, 'IFRA_STD_191', '2785-87-7'),
  (51, 'IFRA_STD_192', '23089-26-1'),
  (51, 'IFRA_STD_192', '23178-88-3'),
  (51, 'IFRA_STD_192', '515-69-5'),
  (51, 'IFRA_STD_192', '72691-24-8'),
  (51, 'IFRA_STD_192', '76738-75-5'),
  (51, 'IFRA_STD_192', '78148-59-1'),
  (51, 'IFRA_STD_193', '589-18-4'),
  (51, 'IFRA_STD_194', '536-60-7'),
  (51, 'IFRA_STD_195', '1018832-07-9'),
  (51, 'IFRA_STD_195', '1373932-23-0'),
  (51, 'IFRA_STD_195', '185019-19-6'),
  (51, 'IFRA_STD_195', '24048-14-4'),
  (51, 'IFRA_STD_195', '58001-87-9'),
  (51, 'IFRA_STD_195', '58001-88-0'),
  (51, 'IFRA_STD_197', '11028-42-5'),
  (51, 'IFRA_STD_197', '469-61-4'),
  (51, 'IFRA_STD_197', '546-28-1'),
  (51, 'IFRA_STD_198', '17488-65-2'),
  (51, 'IFRA_STD_199', '16846-09-6'),
  (51, 'IFRA_STD_199', '19067-29-9'),
  (51, 'IFRA_STD_199', '475-20-7'),
  (51, 'IFRA_STD_201', '3658-77-3'),
  (51, 'IFRA_STD_202', '19317-11-4'),
  (51, 'IFRA_STD_203', '41448-29-7'),
  (51, 'IFRA_STD_204', '762-26-5'),
  (51, 'IFRA_STD_205', '1754-00-3'),
  (51, 'IFRA_STD_205', '55722-59-3'),
  (51, 'IFRA_STD_205', '72203-97-5'),
  (51, 'IFRA_STD_205', '72203-98-6'),
  (51, 'IFRA_STD_206', '106-23-0'),
  (51, 'IFRA_STD_206', '5949-05-3'),
  (51, 'IFRA_STD_207', '71077-31-1'),
  (51, 'IFRA_STD_208', '13674-19-6'),
  (51, 'IFRA_STD_208', '13828-37-0'),
  (51, 'IFRA_STD_208', '5502-75-0'),
  (51, 'IFRA_STD_209', '67634-03-1'),
  (51, 'IFRA_STD_210', '68480-15-9'),
  (51, 'IFRA_STD_211', '107898-54-4'),
  (51, 'IFRA_STD_212', '65113-99-7'),
  (51, 'IFRA_STD_213', '65114-03-6'),
  (51, 'IFRA_STD_214', '65505-24-0'),
  (51, 'IFRA_STD_215', '91-61-2'),
  (51, 'IFRA_STD_216', '19343-78-3'),
  (51, 'IFRA_STD_217', '5471-51-2'),
  (51, 'IFRA_STD_218', '13341-72-5'),
  (51, 'IFRA_STD_218', '38049-04-6'),
  (51, 'IFRA_STD_219', '116044-44-1'),
  (51, 'IFRA_STD_219', '116126-82-0'),
  (51, 'IFRA_STD_220', '33885-52-8'),
  (51, 'IFRA_STD_221', '70788-30-6'),
  (51, 'IFRA_STD_222', '139504-68-0'),
  (51, 'IFRA_STD_223', '1891-67-4'),
  (51, 'IFRA_STD_224', '74338-72-0'),
  (51, 'IFRA_STD_225', '916887-53-1'),
  (51, 'IFRA_STD_226', '27538-09-6'),
  (51, 'IFRA_STD_226', '27538-10-9'),
  (51, 'IFRA_STD_227', '16429-07-5'),
  (51, 'IFRA_STD_228', '623-36-9'),
  (51, 'IFRA_STD_229', '4643-27-0'),
  (51, 'IFRA_STD_231', '67633-95-8'),
  (51, 'IFRA_STD_231', '67801-33-6'),
  (51, 'IFRA_STD_232', '81786-73-4'),
  (51, 'IFRA_STD_232', '81786-74-5'),
  (51, 'IFRA_STD_232', '81786-75-6'),
  (51, 'IFRA_STD_232', '86115-11-9'),
  (51, 'IFRA_STD_233', '53243-59-7'),
  (51, 'IFRA_STD_233', '53243-60-0'),
  (51, 'IFRA_STD_233', '93893-89-1'),
  (51, 'IFRA_STD_234', '1669-44-9'),
  (51, 'IFRA_STD_235', '2550-11-0'),
  (51, 'IFRA_STD_236', '16587-71-6'),
  (51, 'IFRA_STD_237', '338735-71-0'),
  (51, 'IFRA_STD_237', '351343-77-6'),
  (51, 'IFRA_STD_238', '2705-87-5'),
  (51, 'IFRA_STD_239', '60763-41-9'),
  (51, 'IFRA_STD_240', '91-87-2'),
  (51, 'IFRA_STD_241', '10461-98-0'),
  (51, 'IFRA_STD_242', '155514-23-1'),
  (51, 'IFRA_STD_243', '1134-95-8'),
  (51, 'IFRA_STD_243', '1205-42-1'),
  (51, 'IFRA_STD_243', '97-42-7'),
  (51, 'IFRA_STD_244', '1576-78-9'),
  (51, 'IFRA_STD_245', '35154-45-1'),
  (51, 'IFRA_STD_246', '67633-96-9'),
  (51, 'IFRA_STD_247', '13049-88-2'),
  (51, 'IFRA_STD_248', '141-11-7'),
  (51, 'IFRA_STD_248', '150-84-5'),
  (51, 'IFRA_STD_248', '67601-05-2'),
  (51, 'IFRA_STD_249', '2550-52-9'),
  (51, 'IFRA_STD_250', '2550-59-6'),
  (51, 'IFRA_STD_250', '3100-36-5'),
  (51, 'IFRA_STD_250', '5120-20-7'),
  (51, 'IFRA_STD_250', '5365-06-0'),
  (51, 'IFRA_STD_250', '854373-70-9'),
  (51, 'IFRA_STD_250', '854373-71-0'),
  (51, 'IFRA_STD_250', '88642-03-9'),
  (51, 'IFRA_STD_251', '60241-52-3'),
  (51, 'IFRA_STD_251', '60241-53-4'),
  (51, 'IFRA_STD_252', '58567-11-6'),
  (51, 'IFRA_STD_253', '62439-42-3'),
  (51, 'IFRA_STD_254', '122-67-8'),
  (51, 'IFRA_STD_255', '93-29-8'),
  (51, 'IFRA_STD_256', '68966-86-9'),
  (51, 'IFRA_STD_257', '5533-03-9'),
  (51, 'IFRA_STD_258', '72403-67-9'),
  (51, 'IFRA_STD_259', '68738-94-3'),
  (51, 'IFRA_STD_259', '68738-96-5'),
  (51, 'IFRA_STD_259', '68991-96-8'),
  (51, 'IFRA_STD_259', '68991-97-9'),
  (51, 'IFRA_STD_260', '106-44-5'),
  (51, 'IFRA_STD_260', '1319-77-3'),
  (51, 'IFRA_STD_261', '2120-70-9'),
  (51, 'IFRA_STD_262', '499-70-7'),
  (51, 'IFRA_STD_262', '59471-80-6'),
  (51, 'IFRA_STD_263', '98-53-3'),
  (51, 'IFRA_STD_264', '53767-86-5'),
  (51, 'IFRA_STD_265', '2986-54-1'),
  (51, 'IFRA_STD_266', '10599-70-9'),
  (51, 'IFRA_STD_267', '357650-26-1'),
  (51, 'IFRA_STD_267', '358331-95-0'),
  (51, 'IFRA_STD_267', '847144-75-6');

insert into public.ifra_limits (amendment, standard_key, category, raw_value, limit_kind, limit_pct, needs_review) values
  (51, 'IFRA_STD_001', '1', '0.00016', 'limit', 0.00016, false),
  (51, 'IFRA_STD_001', '2', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_001', '3', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_001', '4', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_001', '5A', '0.6', 'limit', 0.6, false),
  (51, 'IFRA_STD_001', '5B', '0.52', 'limit', 0.52, false),
  (51, 'IFRA_STD_001', '5C', '0.6', 'limit', 0.6, false),
  (51, 'IFRA_STD_001', '5D', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_001', '6', '0.00016', 'limit', 0.00016, false),
  (51, 'IFRA_STD_001', '7A', '0.87', 'limit', 0.87, false),
  (51, 'IFRA_STD_001', '7B', '0.87', 'limit', 0.87, false),
  (51, 'IFRA_STD_001', '8', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_001', '9', '2.2', 'limit', 2.2, false),
  (51, 'IFRA_STD_001', '10A', '2.2', 'limit', 2.2, false),
  (51, 'IFRA_STD_001', '10B', '4.4', 'limit', 4.4, false),
  (51, 'IFRA_STD_001', '11A', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_001', '11B', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_001', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_002', '1', '0.05', 'limit', 0.05, false),
  (51, 'IFRA_STD_002', '2', '0.05', 'limit', 0.05, false),
  (51, 'IFRA_STD_002', '3', '0.05', 'limit', 0.05, false),
  (51, 'IFRA_STD_002', '4', '0.9', 'limit', 0.9, false),
  (51, 'IFRA_STD_002', '5A', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_002', '5B', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_002', '5C', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_002', '5D', '0.033', 'limit', 0.033, false),
  (51, 'IFRA_STD_002', '6', '0.098', 'limit', 0.098, false),
  (51, 'IFRA_STD_002', '7A', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_002', '7B', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_002', '8', '0.033', 'limit', 0.033, false),
  (51, 'IFRA_STD_002', '9', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_002', '10A', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_002', '10B', '3.8', 'limit', 3.8, false),
  (51, 'IFRA_STD_002', '11A', '0.033', 'limit', 0.033, false),
  (51, 'IFRA_STD_002', '11B', '0.033', 'limit', 0.033, false),
  (51, 'IFRA_STD_002', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_003', '1', '0.054', 'limit', 0.054, false),
  (51, 'IFRA_STD_003', '2', '0.016', 'limit', 0.016, false),
  (51, 'IFRA_STD_003', '3', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_003', '4', '0.3', 'limit', 0.3, false),
  (51, 'IFRA_STD_003', '5A', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_003', '5B', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_003', '5C', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_003', '5D', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_003', '6', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_003', '7A', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_003', '7B', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_003', '8', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_003', '9', '0.59', 'limit', 0.59, false),
  (51, 'IFRA_STD_003', '10A', '0.59', 'limit', 0.59, false),
  (51, 'IFRA_STD_003', '10B', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_003', '11A', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_003', '11B', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_003', '12', '52', 'limit', 52, false),
  (51, 'IFRA_STD_004', '1', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_004', '2', '0.08', 'limit', 0.08, false),
  (51, 'IFRA_STD_004', '3', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_004', '4', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_004', '5A', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_004', '5B', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_004', '5C', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_004', '5D', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_004', '6', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_004', '7A', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_004', '7B', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_004', '8', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_004', '9', '1.6', 'limit', 1.6, false),
  (51, 'IFRA_STD_004', '10A', '1.6', 'limit', 1.6, false),
  (51, 'IFRA_STD_004', '10B', '3.5', 'limit', 3.5, false),
  (51, 'IFRA_STD_004', '11A', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_004', '11B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_004', '12', '79', 'limit', 79, false),
  (51, 'IFRA_STD_005', '1', '0.58', 'limit', 0.58, false),
  (51, 'IFRA_STD_005', '2', '0.53', 'limit', 0.53, false),
  (51, 'IFRA_STD_005', '3', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_005', '4', '7', 'limit', 7, false),
  (51, 'IFRA_STD_005', '5A', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_005', '5B', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_005', '5C', '0.45', 'limit', 0.45, false),
  (51, 'IFRA_STD_005', '5D', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_005', '6', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_005', '7A', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_005', '7B', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_005', '8', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_005', '9', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_005', '10A', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_005', '10B', '3.5', 'limit', 3.5, false),
  (51, 'IFRA_STD_005', '11A', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_005', '11B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_005', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_006', '1', '0.0028', 'limit', 0.0028, false),
  (51, 'IFRA_STD_006', '2', '0.039', 'limit', 0.039, false),
  (51, 'IFRA_STD_006', '3', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_006', '4', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_006', '5A', '0.041', 'limit', 0.041, false),
  (51, 'IFRA_STD_006', '5B', '0.0055', 'limit', 0.0055, false),
  (51, 'IFRA_STD_006', '5C', '0.033', 'limit', 0.033, false),
  (51, 'IFRA_STD_006', '5D', '0.002', 'limit', 0.002, false),
  (51, 'IFRA_STD_006', '6', '0.091', 'limit', 0.091, false),
  (51, 'IFRA_STD_006', '7A', '0.033', 'limit', 0.033, false),
  (51, 'IFRA_STD_006', '7B', '0.033', 'limit', 0.033, false),
  (51, 'IFRA_STD_006', '8', '0.002', 'limit', 0.002, false),
  (51, 'IFRA_STD_006', '9', '0.099', 'limit', 0.099, false),
  (51, 'IFRA_STD_006', '10A', '0.099', 'limit', 0.099, false),
  (51, 'IFRA_STD_006', '10B', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_006', '11A', '0.002', 'limit', 0.002, false),
  (51, 'IFRA_STD_006', '11B', '0.002', 'limit', 0.002, false),
  (51, 'IFRA_STD_006', '12', '14', 'limit', 14, false),
  (51, 'IFRA_STD_007', '1', '0.045', 'limit', 0.045, false),
  (51, 'IFRA_STD_007', '2', '0.014', 'limit', 0.014, false),
  (51, 'IFRA_STD_007', '3', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_007', '4', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_007', '5A', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_007', '5B', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_007', '5C', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_007', '5D', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_007', '6', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_007', '7A', '0.52', 'limit', 0.52, false),
  (51, 'IFRA_STD_007', '7B', '0.52', 'limit', 0.52, false),
  (51, 'IFRA_STD_007', '8', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_007', '9', '0.49', 'limit', 0.49, false),
  (51, 'IFRA_STD_007', '10A', '0.49', 'limit', 0.49, false),
  (51, 'IFRA_STD_007', '10B', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_007', '11A', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_007', '11B', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_007', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_008', '1', '0.45', 'limit', 0.45, false),
  (51, 'IFRA_STD_008', '2', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_008', '3', '0.34', 'limit', 0.34, false),
  (51, 'IFRA_STD_008', '4', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_008', '5A', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_008', '5B', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_008', '5C', '0.34', 'limit', 0.34, false),
  (51, 'IFRA_STD_008', '5D', '0.057', 'limit', 0.057, false),
  (51, 'IFRA_STD_008', '6', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_008', '7A', '0.68', 'limit', 0.68, false),
  (51, 'IFRA_STD_008', '7B', '0.68', 'limit', 0.68, false),
  (51, 'IFRA_STD_008', '8', '0.057', 'limit', 0.057, false),
  (51, 'IFRA_STD_008', '9', '2.2', 'limit', 2.2, false),
  (51, 'IFRA_STD_008', '10A', '2.2', 'limit', 2.2, false),
  (51, 'IFRA_STD_008', '10B', '8.5', 'limit', 8.5, false),
  (51, 'IFRA_STD_008', '11A', '0.057', 'limit', 0.057, false),
  (51, 'IFRA_STD_008', '11B', '0.057', 'limit', 0.057, false),
  (51, 'IFRA_STD_008', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_009', '1', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_009', '2', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_009', '3', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_009', '4', '4.8', 'limit', 4.8, false),
  (51, 'IFRA_STD_009', '5A', '4.3', 'limit', 4.3, false),
  (51, 'IFRA_STD_009', '5B', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_009', '5C', '0.83', 'limit', 0.83, false),
  (51, 'IFRA_STD_009', '5D', '0.07', 'limit', 0.07, false),
  (51, 'IFRA_STD_009', '6', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_009', '7A', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_009', '7B', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_009', '8', '0.07', 'limit', 0.07, false),
  (51, 'IFRA_STD_009', '9', '1.9', 'limit', 1.9, false),
  (51, 'IFRA_STD_009', '10A', '1.9', 'limit', 1.9, false),
  (51, 'IFRA_STD_009', '10B', '12', 'limit', 12, false),
  (51, 'IFRA_STD_009', '11A', '0.07', 'limit', 0.07, false),
  (51, 'IFRA_STD_009', '11B', '0.07', 'limit', 0.07, false),
  (51, 'IFRA_STD_009', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_010', '1', '0.36', 'limit', 0.36, false),
  (51, 'IFRA_STD_010', '2', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_010', '3', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_010', '4', '2', 'limit', 2, false),
  (51, 'IFRA_STD_010', '5A', '0.51', 'limit', 0.51, false),
  (51, 'IFRA_STD_010', '5B', '0.51', 'limit', 0.51, false),
  (51, 'IFRA_STD_010', '5C', '0.51', 'limit', 0.51, false),
  (51, 'IFRA_STD_010', '5D', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_010', '6', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_010', '7A', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_010', '7B', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_010', '8', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_010', '9', '3.9', 'limit', 3.9, false),
  (51, 'IFRA_STD_010', '10A', '3.9', 'limit', 3.9, false),
  (51, 'IFRA_STD_010', '10B', '14', 'limit', 14, false),
  (51, 'IFRA_STD_010', '11A', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_010', '11B', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_010', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_011', '1', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_011', '2', '0.39', 'limit', 0.39, false),
  (51, 'IFRA_STD_011', '3', '7.8', 'limit', 7.8, false),
  (51, 'IFRA_STD_011', '4', '7.3', 'limit', 7.3, false),
  (51, 'IFRA_STD_011', '5A', '1.9', 'limit', 1.9, false),
  (51, 'IFRA_STD_011', '5B', '1.9', 'limit', 1.9, false),
  (51, 'IFRA_STD_011', '5C', '1.9', 'limit', 1.9, false),
  (51, 'IFRA_STD_011', '5D', '1.9', 'limit', 1.9, false),
  (51, 'IFRA_STD_011', '6', '4.3', 'limit', 4.3, false),
  (51, 'IFRA_STD_011', '7A', '15', 'limit', 15, false),
  (51, 'IFRA_STD_011', '7B', '15', 'limit', 15, false),
  (51, 'IFRA_STD_011', '8', '0.77', 'limit', 0.77, false),
  (51, 'IFRA_STD_011', '9', '14', 'limit', 14, false),
  (51, 'IFRA_STD_011', '10A', '51', 'limit', 51, false),
  (51, 'IFRA_STD_011', '10B', '51', 'limit', 51, false),
  (51, 'IFRA_STD_011', '11A', '28', 'limit', 28, false),
  (51, 'IFRA_STD_011', '11B', '28', 'limit', 28, false),
  (51, 'IFRA_STD_011', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_012', '1', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_012', '2', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_012', '3', '0.46', 'limit', 0.46, false),
  (51, 'IFRA_STD_012', '4', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_012', '5A', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_012', '5B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_012', '5C', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_012', '5D', '0.036', 'limit', 0.036, false),
  (51, 'IFRA_STD_012', '6', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_012', '7A', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_012', '7B', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_012', '8', '0.036', 'limit', 0.036, false),
  (51, 'IFRA_STD_012', '9', '0.84', 'limit', 0.84, false),
  (51, 'IFRA_STD_012', '10A', '0.84', 'limit', 0.84, false),
  (51, 'IFRA_STD_012', '10B', '3', 'limit', 3, false),
  (51, 'IFRA_STD_012', '11A', '0.036', 'limit', 0.036, false),
  (51, 'IFRA_STD_012', '11B', '0.036', 'limit', 0.036, false),
  (51, 'IFRA_STD_012', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_013', '1', '0.0086', 'limit', 0.0086, false),
  (51, 'IFRA_STD_013', '2', '0.094', 'limit', 0.094, false),
  (51, 'IFRA_STD_013', '3', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_013', '4', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_013', '5A', '0.45', 'limit', 0.45, false),
  (51, 'IFRA_STD_013', '5B', '0.28', 'limit', 0.28, false),
  (51, 'IFRA_STD_013', '5C', '0.42', 'limit', 0.42, false),
  (51, 'IFRA_STD_013', '5D', '0.094', 'limit', 0.094, false),
  (51, 'IFRA_STD_013', '6', '0.0086', 'limit', 0.0086, false),
  (51, 'IFRA_STD_013', '7A', '0.37', 'limit', 0.37, false),
  (51, 'IFRA_STD_013', '7B', '0.37', 'limit', 0.37, false),
  (51, 'IFRA_STD_013', '8', '0.094', 'limit', 0.094, false),
  (51, 'IFRA_STD_013', '9', '0.96', 'limit', 0.96, false),
  (51, 'IFRA_STD_013', '10A', '0.96', 'limit', 0.96, false),
  (51, 'IFRA_STD_013', '10B', '3.1', 'limit', 3.1, false),
  (51, 'IFRA_STD_013', '11A', '0.094', 'limit', 0.094, false),
  (51, 'IFRA_STD_013', '11B', '0.094', 'limit', 0.094, false),
  (51, 'IFRA_STD_013', '12', '64', 'limit', 64, false),
  (51, 'IFRA_STD_014', '1', '0.0041', 'limit', 0.0041, false),
  (51, 'IFRA_STD_014', '2', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_014', '3', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_014', '4', '0.47', 'limit', 0.47, false),
  (51, 'IFRA_STD_014', '5A', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_014', '5B', '0.029', 'limit', 0.029, false),
  (51, 'IFRA_STD_014', '5C', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_014', '5D', '0.0096', 'limit', 0.0096, false),
  (51, 'IFRA_STD_014', '6', '0.087', 'limit', 0.087, false),
  (51, 'IFRA_STD_014', '7A', '0.029', 'limit', 0.029, false),
  (51, 'IFRA_STD_014', '7B', '0.029', 'limit', 0.029, false),
  (51, 'IFRA_STD_014', '8', '0.0096', 'limit', 0.0096, false),
  (51, 'IFRA_STD_014', '9', '0.099', 'limit', 0.099, false),
  (51, 'IFRA_STD_014', '10A', '0.099', 'limit', 0.099, false),
  (51, 'IFRA_STD_014', '10B', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_014', '11A', '0.0096', 'limit', 0.0096, false),
  (51, 'IFRA_STD_014', '11B', '0.0096', 'limit', 0.0096, false),
  (51, 'IFRA_STD_014', '12', '6.9', 'limit', 6.9, false),
  (51, 'IFRA_STD_015', '1', '0.0 (Prohibited)', 'prohibited', 0, false),
  (51, 'IFRA_STD_015', '2', '0.09', 'limit', 0.09, false),
  (51, 'IFRA_STD_015', '3', '0.04', 'limit', 0.04, false),
  (51, 'IFRA_STD_015', '4', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_015', '5A', '0.06', 'limit', 0.06, false),
  (51, 'IFRA_STD_015', '5B', '0.05', 'limit', 0.05, false),
  (51, 'IFRA_STD_015', '5C', '0.05', 'limit', 0.05, false),
  (51, 'IFRA_STD_015', '5D', '0.017', 'limit', 0.017, false),
  (51, 'IFRA_STD_015', '6', '0.0 (Prohibited)', 'prohibited', 0, false),
  (51, 'IFRA_STD_015', '7A', '0.04', 'limit', 0.04, false),
  (51, 'IFRA_STD_015', '7B', '0.04', 'limit', 0.04, false),
  (51, 'IFRA_STD_015', '8', '0.017', 'limit', 0.017, false),
  (51, 'IFRA_STD_015', '9', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_015', '10A', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_015', '10B', '0.63', 'limit', 0.63, false),
  (51, 'IFRA_STD_015', '11A', '0.017', 'limit', 0.017, false),
  (51, 'IFRA_STD_015', '11B', '0.017', 'limit', 0.017, false),
  (51, 'IFRA_STD_015', '12', '16', 'limit', 16, false),
  (51, 'IFRA_STD_016', '1', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_016', '2', '0.06', 'limit', 0.06, false),
  (51, 'IFRA_STD_016', '3', '0.02', 'limit', 0.02, false),
  (51, 'IFRA_STD_016', '4', '0.59', 'limit', 0.59, false),
  (51, 'IFRA_STD_016', '5A', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_016', '5B', '0.039', 'limit', 0.039, false),
  (51, 'IFRA_STD_016', '5C', '0.059', 'limit', 0.059, false),
  (51, 'IFRA_STD_016', '5D', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_016', '6', '0.66', 'limit', 0.66, false),
  (51, 'IFRA_STD_016', '7A', '0.039', 'limit', 0.039, false),
  (51, 'IFRA_STD_016', '7B', '0.039', 'limit', 0.039, false),
  (51, 'IFRA_STD_016', '8', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_016', '9', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_016', '10A', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_016', '10B', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_016', '11A', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_016', '11B', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_016', '12', '17', 'limit', 17, false),
  (51, 'IFRA_STD_017', '1', '0.22', 'limit', 0.22, false),
  (51, 'IFRA_STD_017', '2', '0.067', 'limit', 0.067, false),
  (51, 'IFRA_STD_017', '3', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_017', '4', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_017', '5A', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_017', '5B', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_017', '5C', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_017', '5D', '0.085', 'limit', 0.085, false),
  (51, 'IFRA_STD_017', '6', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_017', '7A', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_017', '7B', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_017', '8', '0.085', 'limit', 0.085, false),
  (51, 'IFRA_STD_017', '9', '0.76', 'limit', 0.76, false),
  (51, 'IFRA_STD_017', '10A', '0.76', 'limit', 0.76, false),
  (51, 'IFRA_STD_017', '10B', '2', 'limit', 2, false),
  (51, 'IFRA_STD_017', '11A', '0.085', 'limit', 0.085, false),
  (51, 'IFRA_STD_017', '11B', '0.085', 'limit', 0.085, false),
  (51, 'IFRA_STD_017', '12', '51', 'limit', 51, false),
  (51, 'IFRA_STD_018', '1', '0.045', 'limit', 0.045, false),
  (51, 'IFRA_STD_018', '2', '0.014', 'limit', 0.014, false),
  (51, 'IFRA_STD_018', '3', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_018', '4', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_018', '5A', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_018', '5B', '0.042', 'limit', 0.042, false),
  (51, 'IFRA_STD_018', '5C', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_018', '5D', '0.014', 'limit', 0.014, false),
  (51, 'IFRA_STD_018', '6', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_018', '7A', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_018', '7B', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_018', '8', '0.014', 'limit', 0.014, false),
  (51, 'IFRA_STD_018', '9', '0.49', 'limit', 0.49, false),
  (51, 'IFRA_STD_018', '10A', '0.49', 'limit', 0.49, false),
  (51, 'IFRA_STD_018', '10B', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_018', '11A', '0.014', 'limit', 0.014, false),
  (51, 'IFRA_STD_018', '11B', '0.014', 'limit', 0.014, false),
  (51, 'IFRA_STD_018', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_019', '1', '0.063', 'limit', 0.063, false),
  (51, 'IFRA_STD_019', '2', '0.019', 'limit', 0.019, false),
  (51, 'IFRA_STD_019', '3', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_019', '4', '0.35', 'limit', 0.35, false),
  (51, 'IFRA_STD_019', '5A', '0.089', 'limit', 0.089, false),
  (51, 'IFRA_STD_019', '5B', '0.089', 'limit', 0.089, false),
  (51, 'IFRA_STD_019', '5C', '0.089', 'limit', 0.089, false),
  (51, 'IFRA_STD_019', '5D', '0.089', 'limit', 0.089, false),
  (51, 'IFRA_STD_019', '6', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_019', '7A', '0.72', 'limit', 0.72, false),
  (51, 'IFRA_STD_019', '7B', '0.72', 'limit', 0.72, false),
  (51, 'IFRA_STD_019', '8', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_019', '9', '0.69', 'limit', 0.69, false),
  (51, 'IFRA_STD_019', '10A', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_019', '10B', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_019', '11A', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_019', '11B', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_019', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_020', '1', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_020', '2', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_020', '3', '0.46', 'limit', 0.46, false),
  (51, 'IFRA_STD_020', '4', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_020', '5A', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_020', '5B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_020', '5C', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_020', '5D', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_020', '6', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_020', '7A', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_020', '7B', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_020', '8', '0.045', 'limit', 0.045, false),
  (51, 'IFRA_STD_020', '9', '0.84', 'limit', 0.84, false),
  (51, 'IFRA_STD_020', '10A', '3', 'limit', 3, false),
  (51, 'IFRA_STD_020', '10B', '3', 'limit', 3, false),
  (51, 'IFRA_STD_020', '11A', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_020', '11B', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_020', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_021', '1', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_021', '2', '0.032', 'limit', 0.032, false),
  (51, 'IFRA_STD_021', '3', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_021', '4', '0.6', 'limit', 0.6, false),
  (51, 'IFRA_STD_021', '5A', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_021', '5B', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_021', '5C', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_021', '5D', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_021', '6', '0.35', 'limit', 0.35, false),
  (51, 'IFRA_STD_021', '7A', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_021', '7B', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_021', '8', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_021', '9', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_021', '10A', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_021', '10B', '4.2', 'limit', 4.2, false),
  (51, 'IFRA_STD_021', '11A', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_021', '11B', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_021', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_022', '1', '2.2', 'limit', 2.2, false),
  (51, 'IFRA_STD_022', '2', '0.67', 'limit', 0.67, false),
  (51, 'IFRA_STD_022', '3', '13', 'limit', 13, false),
  (51, 'IFRA_STD_022', '4', '12', 'limit', 12, false),
  (51, 'IFRA_STD_022', '5A', '3.2', 'limit', 3.2, false),
  (51, 'IFRA_STD_022', '5B', '3.2', 'limit', 3.2, false),
  (51, 'IFRA_STD_022', '5C', '3.2', 'limit', 3.2, false),
  (51, 'IFRA_STD_022', '5D', '3.2', 'limit', 3.2, false),
  (51, 'IFRA_STD_022', '6', '7.3', 'limit', 7.3, false),
  (51, 'IFRA_STD_022', '7A', '25', 'limit', 25, false),
  (51, 'IFRA_STD_022', '7B', '25', 'limit', 25, false),
  (51, 'IFRA_STD_022', '8', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_022', '9', '24', 'limit', 24, false),
  (51, 'IFRA_STD_022', '10A', '87', 'limit', 87, false),
  (51, 'IFRA_STD_022', '10B', '87', 'limit', 87, false),
  (51, 'IFRA_STD_022', '11A', '48', 'limit', 48, false),
  (51, 'IFRA_STD_022', '11B', '48', 'limit', 48, false),
  (51, 'IFRA_STD_022', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_023', '1', '0.089', 'limit', 0.089, false),
  (51, 'IFRA_STD_023', '2', '0.08', 'limit', 0.08, false),
  (51, 'IFRA_STD_023', '3', '0.089', 'limit', 0.089, false),
  (51, 'IFRA_STD_023', '4', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_023', '5A', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_023', '5B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_023', '5C', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_023', '5D', '0.035', 'limit', 0.035, false),
  (51, 'IFRA_STD_023', '6', '0.0024', 'limit', 0.0024, false),
  (51, 'IFRA_STD_023', '7A', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_023', '7B', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_023', '8', '0.035', 'limit', 0.035, false),
  (51, 'IFRA_STD_023', '9', '0.52', 'limit', 0.52, false),
  (51, 'IFRA_STD_023', '10A', '0.52', 'limit', 0.52, false),
  (51, 'IFRA_STD_023', '10B', '1.6', 'limit', 1.6, false),
  (51, 'IFRA_STD_023', '11A', '0.035', 'limit', 0.035, false),
  (51, 'IFRA_STD_023', '11B', '0.035', 'limit', 0.035, false),
  (51, 'IFRA_STD_023', '12', '33', 'limit', 33, false),
  (51, 'IFRA_STD_024', '1', '0.085', 'limit', 0.085, false),
  (51, 'IFRA_STD_024', '2', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_024', '3', '0.51', 'limit', 0.51, false),
  (51, 'IFRA_STD_024', '4', '0.47', 'limit', 0.47, false),
  (51, 'IFRA_STD_024', '5A', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_024', '5B', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_024', '5C', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_024', '5D', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_024', '6', '0.28', 'limit', 0.28, false),
  (51, 'IFRA_STD_024', '7A', '0.96', 'limit', 0.96, false),
  (51, 'IFRA_STD_024', '7B', '0.96', 'limit', 0.96, false),
  (51, 'IFRA_STD_024', '8', '0.05', 'limit', 0.05, false),
  (51, 'IFRA_STD_024', '9', '0.92', 'limit', 0.92, false),
  (51, 'IFRA_STD_024', '10A', '3.3', 'limit', 3.3, false),
  (51, 'IFRA_STD_024', '10B', '3.3', 'limit', 3.3, false),
  (51, 'IFRA_STD_024', '11A', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_024', '11B', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_024', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_025', '1', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_025', '2', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_025', '3', '0.038', 'limit', 0.038, false),
  (51, 'IFRA_STD_025', '4', '0.95', 'limit', 0.95, false),
  (51, 'IFRA_STD_025', '5A', '0.45', 'limit', 0.45, false),
  (51, 'IFRA_STD_025', '5B', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_025', '5C', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_025', '5D', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_025', '6', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_025', '7A', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_025', '7B', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_025', '8', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_025', '9', '0.23', 'limit', 0.23, false),
  (51, 'IFRA_STD_025', '10A', '0.23', 'limit', 0.23, false),
  (51, 'IFRA_STD_025', '10B', '0.72', 'limit', 0.72, false),
  (51, 'IFRA_STD_025', '11A', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_025', '11B', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_025', '12', '16', 'limit', 16, false),
  (51, 'IFRA_STD_026', '1', '0.42', 'limit', 0.42, false),
  (51, 'IFRA_STD_026', '2', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_026', '3', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_026', '4', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_026', '5A', '0.6', 'limit', 0.6, false),
  (51, 'IFRA_STD_026', '5B', '0.6', 'limit', 0.6, false),
  (51, 'IFRA_STD_026', '5C', '0.6', 'limit', 0.6, false),
  (51, 'IFRA_STD_026', '5D', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_026', '6', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_026', '7A', '4.8', 'limit', 4.8, false),
  (51, 'IFRA_STD_026', '7B', '4.8', 'limit', 4.8, false),
  (51, 'IFRA_STD_026', '8', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_026', '9', '4.6', 'limit', 4.6, false),
  (51, 'IFRA_STD_026', '10A', '4.6', 'limit', 4.6, false),
  (51, 'IFRA_STD_026', '10B', '17', 'limit', 17, false),
  (51, 'IFRA_STD_026', '11A', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_026', '11B', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_026', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_027', '1', '0.00004', 'limit', 0.00004, false),
  (51, 'IFRA_STD_027', '2', '0.0028', 'limit', 0.0028, false),
  (51, 'IFRA_STD_027', '3', '0.0002', 'limit', 0.0002, false),
  (51, 'IFRA_STD_027', '4', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_027', '5A', '0.0023', 'limit', 0.0023, false),
  (51, 'IFRA_STD_027', '5B', '0.00024', 'limit', 0.00024, false),
  (51, 'IFRA_STD_027', '5C', '0.00032', 'limit', 0.00032, false),
  (51, 'IFRA_STD_027', '5D', '0.000081', 'limit', 0.000081, false),
  (51, 'IFRA_STD_027', '6', '0.0023', 'limit', 0.0023, false),
  (51, 'IFRA_STD_027', '7A', '0.00093', 'limit', 0.00093, false),
  (51, 'IFRA_STD_027', '7B', '0.00093', 'limit', 0.00093, false),
  (51, 'IFRA_STD_027', '8', '0.000081', 'limit', 0.000081, false),
  (51, 'IFRA_STD_027', '9', '0.0037', 'limit', 0.0037, false),
  (51, 'IFRA_STD_027', '10A', '0.0037', 'limit', 0.0037, false),
  (51, 'IFRA_STD_027', '10B', '0.0037', 'limit', 0.0037, false),
  (51, 'IFRA_STD_027', '11A', '0.000081', 'limit', 0.000081, false),
  (51, 'IFRA_STD_027', '11B', '0.000081', 'limit', 0.000081, false),
  (51, 'IFRA_STD_027', '12', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_028', '1', '0.0063', 'limit', 0.0063, false),
  (51, 'IFRA_STD_028', '2', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_028', '3', '0.019', 'limit', 0.019, false),
  (51, 'IFRA_STD_028', '4', '3.8', 'limit', 3.8, false),
  (51, 'IFRA_STD_028', '5A', '0.31', 'limit', 0.31, false),
  (51, 'IFRA_STD_028', '5B', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_028', '5C', '0.038', 'limit', 0.038, false),
  (51, 'IFRA_STD_028', '5D', '0.0084', 'limit', 0.0084, false),
  (51, 'IFRA_STD_028', '6', '0.0063', 'limit', 0.0063, false),
  (51, 'IFRA_STD_028', '7A', '0.031', 'limit', 0.031, false),
  (51, 'IFRA_STD_028', '7B', '0.031', 'limit', 0.031, false),
  (51, 'IFRA_STD_028', '8', '0.0084', 'limit', 0.0084, false),
  (51, 'IFRA_STD_028', '9', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_028', '10A', '0.13', 'limit', 0.13, false);
insert into public.ifra_limits (amendment, standard_key, category, raw_value, limit_kind, limit_pct, needs_review) values
  (51, 'IFRA_STD_028', '10B', '0.28', 'limit', 0.28, false),
  (51, 'IFRA_STD_028', '11A', '0.0084', 'limit', 0.0084, false),
  (51, 'IFRA_STD_028', '11B', '0.0084', 'limit', 0.0084, false),
  (51, 'IFRA_STD_028', '12', '9.4', 'limit', 9.4, false),
  (51, 'IFRA_STD_029', '1', '0.038', 'limit', 0.038, false),
  (51, 'IFRA_STD_029', '2', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_029', '3', '0.23', 'limit', 0.23, false),
  (51, 'IFRA_STD_029', '4', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_029', '5A', '0.053', 'limit', 0.053, false),
  (51, 'IFRA_STD_029', '5B', '0.053', 'limit', 0.053, false),
  (51, 'IFRA_STD_029', '5C', '0.053', 'limit', 0.053, false),
  (51, 'IFRA_STD_029', '5D', '0.018', 'limit', 0.018, false),
  (51, 'IFRA_STD_029', '6', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_029', '7A', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_029', '7B', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_029', '8', '0.018', 'limit', 0.018, false),
  (51, 'IFRA_STD_029', '9', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_029', '10A', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_029', '10B', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_029', '11A', '0.018', 'limit', 0.018, false),
  (51, 'IFRA_STD_029', '11B', '0.018', 'limit', 0.018, false),
  (51, 'IFRA_STD_029', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_030', '1', '0.45', 'limit', 0.45, false),
  (51, 'IFRA_STD_030', '2', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_030', '3', '2.7', 'limit', 2.7, false),
  (51, 'IFRA_STD_030', '4', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_030', '5A', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_030', '5B', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_030', '5C', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_030', '5D', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_030', '6', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_030', '7A', '5.2', 'limit', 5.2, false),
  (51, 'IFRA_STD_030', '7B', '5.2', 'limit', 5.2, false),
  (51, 'IFRA_STD_030', '8', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_030', '9', '4.9', 'limit', 4.9, false),
  (51, 'IFRA_STD_030', '10A', '18', 'limit', 18, false),
  (51, 'IFRA_STD_030', '10B', '18', 'limit', 18, false),
  (51, 'IFRA_STD_030', '11A', '9.8', 'limit', 9.8, false),
  (51, 'IFRA_STD_030', '11B', '9.8', 'limit', 9.8, false),
  (51, 'IFRA_STD_030', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_031', '1', '0.19', 'limit', 0.19, false),
  (51, 'IFRA_STD_031', '2', '0.057', 'limit', 0.057, false),
  (51, 'IFRA_STD_031', '3', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_031', '4', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_031', '5A', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_031', '5B', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_031', '5C', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_031', '5D', '0.091', 'limit', 0.091, false),
  (51, 'IFRA_STD_031', '6', '0.54', 'limit', 0.54, false),
  (51, 'IFRA_STD_031', '7A', '0.54', 'limit', 0.54, false),
  (51, 'IFRA_STD_031', '7B', '0.54', 'limit', 0.54, false),
  (51, 'IFRA_STD_031', '8', '0.091', 'limit', 0.091, false),
  (51, 'IFRA_STD_031', '9', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_031', '10A', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_031', '10B', '3.4', 'limit', 3.4, false),
  (51, 'IFRA_STD_031', '11A', '0.091', 'limit', 0.091, false),
  (51, 'IFRA_STD_031', '11B', '0.091', 'limit', 0.091, false),
  (51, 'IFRA_STD_031', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_032', '1', '0.034', 'limit', 0.034, false),
  (51, 'IFRA_STD_032', '2', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_032', '3', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_032', '4', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_032', '5A', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_032', '5B', '0.061', 'limit', 0.061, false),
  (51, 'IFRA_STD_032', '5C', '0.039', 'limit', 0.039, false),
  (51, 'IFRA_STD_032', '5D', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_032', '6', '0.0025', 'limit', 0.0025, false),
  (51, 'IFRA_STD_032', '7A', '0.052', 'limit', 0.052, false),
  (51, 'IFRA_STD_032', '7B', '0.052', 'limit', 0.052, false),
  (51, 'IFRA_STD_032', '8', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_032', '9', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_032', '10A', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_032', '10B', '0.3', 'limit', 0.3, false),
  (51, 'IFRA_STD_032', '11A', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_032', '11B', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_032', '12', '8.6', 'limit', 8.6, false),
  (51, 'IFRA_STD_033', '1', '0.0087', 'limit', 0.0087, false),
  (51, 'IFRA_STD_033', '2', '0.0053', 'limit', 0.0053, false),
  (51, 'IFRA_STD_033', '3', '0.017', 'limit', 0.017, false),
  (51, 'IFRA_STD_033', '4', '0.099', 'limit', 0.099, false),
  (51, 'IFRA_STD_033', '5A', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_033', '5B', '0.017', 'limit', 0.017, false),
  (51, 'IFRA_STD_033', '5C', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_033', '5D', '0.0058', 'limit', 0.0058, false),
  (51, 'IFRA_STD_033', '6', '0.0087', 'limit', 0.0087, false),
  (51, 'IFRA_STD_033', '7A', '0.044', 'limit', 0.044, false),
  (51, 'IFRA_STD_033', '7B', '0.044', 'limit', 0.044, false),
  (51, 'IFRA_STD_033', '8', '0.0058', 'limit', 0.0058, false),
  (51, 'IFRA_STD_033', '9', '0.052', 'limit', 0.052, false),
  (51, 'IFRA_STD_033', '10A', '0.052', 'limit', 0.052, false),
  (51, 'IFRA_STD_033', '10B', '0.052', 'limit', 0.052, false),
  (51, 'IFRA_STD_033', '11A', '0.0058', 'limit', 0.0058, false),
  (51, 'IFRA_STD_033', '11B', '0.0058', 'limit', 0.0058, false),
  (51, 'IFRA_STD_033', '12', '4.2', 'limit', 4.2, false),
  (51, 'IFRA_STD_034', '1', '0.085', 'limit', 0.085, false),
  (51, 'IFRA_STD_034', '2', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_034', '3', '0.51', 'limit', 0.51, false),
  (51, 'IFRA_STD_034', '4', '0.47', 'limit', 0.47, false),
  (51, 'IFRA_STD_034', '5A', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_034', '5B', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_034', '5C', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_034', '5D', '0.04', 'limit', 0.04, false),
  (51, 'IFRA_STD_034', '6', '0.28', 'limit', 0.28, false),
  (51, 'IFRA_STD_034', '7A', '0.96', 'limit', 0.96, false),
  (51, 'IFRA_STD_034', '7B', '0.96', 'limit', 0.96, false),
  (51, 'IFRA_STD_034', '8', '0.04', 'limit', 0.04, false),
  (51, 'IFRA_STD_034', '9', '0.92', 'limit', 0.92, false),
  (51, 'IFRA_STD_034', '10A', '0.92', 'limit', 0.92, false),
  (51, 'IFRA_STD_034', '10B', '3.3', 'limit', 3.3, false),
  (51, 'IFRA_STD_034', '11A', '0.04', 'limit', 0.04, false),
  (51, 'IFRA_STD_034', '11B', '0.04', 'limit', 0.04, false),
  (51, 'IFRA_STD_034', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_035', '1', '0.45', 'limit', 0.45, false),
  (51, 'IFRA_STD_035', '2', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_035', '3', '1,0', 'limit', 1, false),
  (51, 'IFRA_STD_035', '4', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_035', '5A', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_035', '5B', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_035', '5C', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_035', '5D', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_035', '6', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_035', '7A', '2,0', 'limit', 2, false),
  (51, 'IFRA_STD_035', '7B', '2,0', 'limit', 2, false),
  (51, 'IFRA_STD_035', '8', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_035', '9', '4.9', 'limit', 4.9, false),
  (51, 'IFRA_STD_035', '10A', '4,0', 'limit', 4, false),
  (51, 'IFRA_STD_035', '10B', '18', 'limit', 18, false),
  (51, 'IFRA_STD_035', '11A', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_035', '11B', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_035', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_036', '1', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_036', '2', '0.062', 'limit', 0.062, false),
  (51, 'IFRA_STD_036', '3', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_036', '4', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_036', '5A', '0.29', 'limit', 0.29, false),
  (51, 'IFRA_STD_036', '5B', '0.29', 'limit', 0.29, false),
  (51, 'IFRA_STD_036', '5C', '0.29', 'limit', 0.29, false),
  (51, 'IFRA_STD_036', '5D', '0.29', 'limit', 0.29, false),
  (51, 'IFRA_STD_036', '6', '0.68', 'limit', 0.68, false),
  (51, 'IFRA_STD_036', '7A', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_036', '7B', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_036', '8', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_036', '9', '2.3', 'limit', 2.3, false),
  (51, 'IFRA_STD_036', '10A', '8.1', 'limit', 8.1, false),
  (51, 'IFRA_STD_036', '10B', '8.1', 'limit', 8.1, false),
  (51, 'IFRA_STD_036', '11A', '4.5', 'limit', 4.5, false),
  (51, 'IFRA_STD_036', '11B', '4.5', 'limit', 4.5, false),
  (51, 'IFRA_STD_036', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_037', '1', '0.78', 'limit', 0.78, false),
  (51, 'IFRA_STD_037', '2', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_037', '3', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_037', '4', '4.7', 'limit', 4.7, false),
  (51, 'IFRA_STD_037', '5A', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_037', '5B', '0.78', 'limit', 0.78, false),
  (51, 'IFRA_STD_037', '5C', '0.94', 'limit', 0.94, false),
  (51, 'IFRA_STD_037', '5D', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_037', '6', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_037', '7A', '0.78', 'limit', 0.78, false),
  (51, 'IFRA_STD_037', '7B', '0.78', 'limit', 0.78, false),
  (51, 'IFRA_STD_037', '8', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_037', '9', '2.8', 'limit', 2.8, false),
  (51, 'IFRA_STD_037', '10A', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_037', '10B', '5.3', 'limit', 5.3, false),
  (51, 'IFRA_STD_037', '11A', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_037', '11B', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_037', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_038', '1', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_038', '2', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_038', '3', '0.46', 'limit', 0.46, false),
  (51, 'IFRA_STD_038', '4', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_038', '5A', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_038', '5B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_038', '5C', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_038', '5D', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_038', '6', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_038', '7A', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_038', '7B', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_038', '8', '0.045', 'limit', 0.045, false),
  (51, 'IFRA_STD_038', '9', '0.84', 'limit', 0.84, false),
  (51, 'IFRA_STD_038', '10A', '3', 'limit', 3, false),
  (51, 'IFRA_STD_038', '10B', '3', 'limit', 3, false),
  (51, 'IFRA_STD_038', '11A', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_038', '11B', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_038', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_039', '1', '0.0014', 'limit', 0.0014, false),
  (51, 'IFRA_STD_039', '2', '0.00041', 'limit', 0.00041, false),
  (51, 'IFRA_STD_039', '3', '0.0083', 'limit', 0.0083, false),
  (51, 'IFRA_STD_039', '4', '0.0077', 'limit', 0.0077, false),
  (51, 'IFRA_STD_039', '5A', '0,0020', 'limit', 0.002, false),
  (51, 'IFRA_STD_039', '5B', '0,0020', 'limit', 0.002, false),
  (51, 'IFRA_STD_039', '5C', '0,0020', 'limit', 0.002, false),
  (51, 'IFRA_STD_039', '5D', '0.00067', 'limit', 0.00067, false),
  (51, 'IFRA_STD_039', '6', '0.0045', 'limit', 0.0045, false),
  (51, 'IFRA_STD_039', '7A', '0.016', 'limit', 0.016, false),
  (51, 'IFRA_STD_039', '7B', '0.016', 'limit', 0.016, false),
  (51, 'IFRA_STD_039', '8', '0.00067', 'limit', 0.00067, false),
  (51, 'IFRA_STD_039', '9', '0.015', 'limit', 0.015, false),
  (51, 'IFRA_STD_039', '10A', '0.054', 'limit', 0.054, false),
  (51, 'IFRA_STD_039', '10B', '0.054', 'limit', 0.054, false),
  (51, 'IFRA_STD_039', '11A', '0.00067', 'limit', 0.00067, false),
  (51, 'IFRA_STD_039', '11B', '0.00067', 'limit', 0.00067, false),
  (51, 'IFRA_STD_039', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_040', '1', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_040', '2', '0.53', 'limit', 0.53, false),
  (51, 'IFRA_STD_040', '3', '11', 'limit', 11, false),
  (51, 'IFRA_STD_040', '4', '9.9', 'limit', 9.9, false),
  (51, 'IFRA_STD_040', '5A', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_040', '5B', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_040', '5C', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_040', '5D', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_040', '6', '5.8', 'limit', 5.8, false),
  (51, 'IFRA_STD_040', '7A', '20', 'limit', 20, false),
  (51, 'IFRA_STD_040', '7B', '20', 'limit', 20, false),
  (51, 'IFRA_STD_040', '8', '1', 'limit', 1, false),
  (51, 'IFRA_STD_040', '9', '19', 'limit', 19, false),
  (51, 'IFRA_STD_040', '10A', '69', 'limit', 69, false),
  (51, 'IFRA_STD_040', '10B', '69', 'limit', 69, false),
  (51, 'IFRA_STD_040', '11A', '38', 'limit', 38, false),
  (51, 'IFRA_STD_040', '11B', '38', 'limit', 38, false),
  (51, 'IFRA_STD_040', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_041', '1', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_041', '2', '0.0069', 'limit', 0.0069, false),
  (51, 'IFRA_STD_041', '3', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_041', '4', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_041', '5A', '0.033', 'limit', 0.033, false),
  (51, 'IFRA_STD_041', '5B', '0.033', 'limit', 0.033, false),
  (51, 'IFRA_STD_041', '5C', '0.033', 'limit', 0.033, false),
  (51, 'IFRA_STD_041', '5D', '0.033', 'limit', 0.033, false),
  (51, 'IFRA_STD_041', '6', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_041', '7A', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_041', '7B', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_041', '8', '0.014', 'limit', 0.014, false),
  (51, 'IFRA_STD_041', '9', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_041', '10A', '0.9', 'limit', 0.9, false),
  (51, 'IFRA_STD_041', '10B', '0.9', 'limit', 0.9, false),
  (51, 'IFRA_STD_041', '11A', '0.5', 'limit', 0.5, false),
  (51, 'IFRA_STD_041', '11B', '0.5', 'limit', 0.5, false),
  (51, 'IFRA_STD_041', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_042', '1', '0.092', 'limit', 0.092, false),
  (51, 'IFRA_STD_042', '2', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_042', '3', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_042', '4', '6.5', 'limit', 6.5, false),
  (51, 'IFRA_STD_042', '5A', '2.7', 'limit', 2.7, false),
  (51, 'IFRA_STD_042', '5B', '0.3', 'limit', 0.3, false),
  (51, 'IFRA_STD_042', '5C', '0.46', 'limit', 0.46, false),
  (51, 'IFRA_STD_042', '5D', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_042', '6', '0.0092', 'limit', 0.0092, false),
  (51, 'IFRA_STD_042', '7A', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_042', '7B', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_042', '8', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_042', '9', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_042', '10A', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_042', '10B', '2.2', 'limit', 2.2, false),
  (51, 'IFRA_STD_042', '11A', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_042', '11B', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_042', '12', '64', 'limit', 64, false),
  (51, 'IFRA_STD_043', '1', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_043', '2', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_043', '3', '2.3', 'limit', 2.3, false),
  (51, 'IFRA_STD_043', '4', '2.1', 'limit', 2.1, false),
  (51, 'IFRA_STD_043', '5A', '0.53', 'limit', 0.53, false),
  (51, 'IFRA_STD_043', '5B', '0.53', 'limit', 0.53, false),
  (51, 'IFRA_STD_043', '5C', '0.53', 'limit', 0.53, false),
  (51, 'IFRA_STD_043', '5D', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_043', '6', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_043', '7A', '1.6', 'limit', 1.6, false),
  (51, 'IFRA_STD_043', '7B', '1.6', 'limit', 1.6, false),
  (51, 'IFRA_STD_043', '8', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_043', '9', '4.1', 'limit', 4.1, false),
  (51, 'IFRA_STD_043', '10A', '0.78', 'limit', 0.78, false),
  (51, 'IFRA_STD_043', '10B', '7.8', 'limit', 7.8, false),
  (51, 'IFRA_STD_043', '11A', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_043', '11B', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_043', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_044', '1', '0.02', 'limit', 0.02, false),
  (51, 'IFRA_STD_044', '2', '0.02', 'limit', 0.02, false),
  (51, 'IFRA_STD_044', '3', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_044', '4', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_044', '5A', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_044', '5B', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_044', '5C', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_044', '5D', '0.067', 'limit', 0.067, false),
  (51, 'IFRA_STD_044', '6', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_044', '7A', '0.02', 'limit', 0.02, false),
  (51, 'IFRA_STD_044', '7B', '0.02', 'limit', 0.02, false),
  (51, 'IFRA_STD_044', '8', '0.067', 'limit', 0.067, false),
  (51, 'IFRA_STD_044', '9', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_044', '10A', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_044', '10B', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_044', '11A', '0.067', 'limit', 0.067, false),
  (51, 'IFRA_STD_044', '11B', '0.067', 'limit', 0.067, false),
  (51, 'IFRA_STD_044', '12', '91', 'limit', 91, false),
  (51, 'IFRA_STD_045', '1', '0.08', 'limit', 0.08, false),
  (51, 'IFRA_STD_045', '2', '0.053', 'limit', 0.053, false),
  (51, 'IFRA_STD_045', '3', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_045', '4', '0.99', 'limit', 0.99, false),
  (51, 'IFRA_STD_045', '5A', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_045', '5B', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_045', '5C', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_045', '5D', '0.083', 'limit', 0.083, false),
  (51, 'IFRA_STD_045', '6', '0.08', 'limit', 0.08, false),
  (51, 'IFRA_STD_045', '7A', '0.72', 'limit', 0.72, false),
  (51, 'IFRA_STD_045', '7B', '0.72', 'limit', 0.72, false),
  (51, 'IFRA_STD_045', '8', '0.083', 'limit', 0.083, false),
  (51, 'IFRA_STD_045', '9', '1.9', 'limit', 1.9, false),
  (51, 'IFRA_STD_045', '10A', '1.9', 'limit', 1.9, false),
  (51, 'IFRA_STD_045', '10B', '5.4', 'limit', 5.4, false),
  (51, 'IFRA_STD_045', '11A', '0.083', 'limit', 0.083, false),
  (51, 'IFRA_STD_045', '11B', '0.083', 'limit', 0.083, false),
  (51, 'IFRA_STD_045', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_046', '1', '0.54', 'limit', 0.54, false),
  (51, 'IFRA_STD_046', '2', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_046', '3', '3.2', 'limit', 3.2, false),
  (51, 'IFRA_STD_046', '4', '3', 'limit', 3, false),
  (51, 'IFRA_STD_046', '5A', '0.76', 'limit', 0.76, false),
  (51, 'IFRA_STD_046', '5B', '0.76', 'limit', 0.76, false),
  (51, 'IFRA_STD_046', '5C', '0.76', 'limit', 0.76, false),
  (51, 'IFRA_STD_046', '5D', '0.76', 'limit', 0.76, false),
  (51, 'IFRA_STD_046', '6', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_046', '7A', '6.1', 'limit', 6.1, false),
  (51, 'IFRA_STD_046', '7B', '6.1', 'limit', 6.1, false),
  (51, 'IFRA_STD_046', '8', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_046', '9', '5.9', 'limit', 5.9, false),
  (51, 'IFRA_STD_046', '10A', '21', 'limit', 21, false),
  (51, 'IFRA_STD_046', '10B', '21', 'limit', 21, false),
  (51, 'IFRA_STD_046', '11A', '12', 'limit', 12, false),
  (51, 'IFRA_STD_046', '11B', '12', 'limit', 12, false),
  (51, 'IFRA_STD_046', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_047', '1', '0.29', 'limit', 0.29, false),
  (51, 'IFRA_STD_047', '2', '0.087', 'limit', 0.087, false),
  (51, 'IFRA_STD_047', '3', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_047', '4', '1.6', 'limit', 1.6, false),
  (51, 'IFRA_STD_047', '5A', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_047', '5B', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_047', '5C', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_047', '5D', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_047', '6', '0.96', 'limit', 0.96, false),
  (51, 'IFRA_STD_047', '7A', '3.3', 'limit', 3.3, false),
  (51, 'IFRA_STD_047', '7B', '3.3', 'limit', 3.3, false),
  (51, 'IFRA_STD_047', '8', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_047', '9', '3.2', 'limit', 3.2, false),
  (51, 'IFRA_STD_047', '10A', '11', 'limit', 11, false),
  (51, 'IFRA_STD_047', '10B', '11', 'limit', 11, false),
  (51, 'IFRA_STD_047', '11A', '6.3', 'limit', 6.3, false),
  (51, 'IFRA_STD_047', '11B', '6.3', 'limit', 6.3, false),
  (51, 'IFRA_STD_047', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_048', '1', '0.019', 'limit', 0.019, false),
  (51, 'IFRA_STD_048', '2', '0.0057', 'limit', 0.0057, false),
  (51, 'IFRA_STD_048', '3', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_048', '4', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_048', '5A', '0.027', 'limit', 0.027, false),
  (51, 'IFRA_STD_048', '5B', '0.027', 'limit', 0.027, false),
  (51, 'IFRA_STD_048', '5C', '0.027', 'limit', 0.027, false),
  (51, 'IFRA_STD_048', '5D', '0.009', 'limit', 0.009, false),
  (51, 'IFRA_STD_048', '6', '0.063', 'limit', 0.063, false),
  (51, 'IFRA_STD_048', '7A', '0.22', 'limit', 0.22, false),
  (51, 'IFRA_STD_048', '7B', '0.22', 'limit', 0.22, false),
  (51, 'IFRA_STD_048', '8', '0.009', 'limit', 0.009, false),
  (51, 'IFRA_STD_048', '9', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_048', '10A', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_048', '10B', '0.75', 'limit', 0.75, false),
  (51, 'IFRA_STD_048', '11A', '0.009', 'limit', 0.009, false),
  (51, 'IFRA_STD_048', '11B', '0.009', 'limit', 0.009, false),
  (51, 'IFRA_STD_048', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_049', '1', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_049', '2', '0.032', 'limit', 0.032, false),
  (51, 'IFRA_STD_049', '3', '0.65', 'limit', 0.65, false),
  (51, 'IFRA_STD_049', '4', '0.6', 'limit', 0.6, false),
  (51, 'IFRA_STD_049', '5A', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_049', '5B', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_049', '5C', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_049', '5D', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_049', '6', '0.35', 'limit', 0.35, false),
  (51, 'IFRA_STD_049', '7A', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_049', '7B', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_049', '8', '0.063', 'limit', 0.063, false),
  (51, 'IFRA_STD_049', '9', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_049', '10A', '4.2', 'limit', 4.2, false),
  (51, 'IFRA_STD_049', '10B', '4.2', 'limit', 4.2, false),
  (51, 'IFRA_STD_049', '11A', '2.3', 'limit', 2.3, false),
  (51, 'IFRA_STD_049', '11B', '2.3', 'limit', 2.3, false),
  (51, 'IFRA_STD_049', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_050', '1', '0.68', 'limit', 0.68, false),
  (51, 'IFRA_STD_050', '2', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_050', '3', '4.1', 'limit', 4.1, false),
  (51, 'IFRA_STD_050', '4', '3.8', 'limit', 3.8, false),
  (51, 'IFRA_STD_050', '5A', '0.96', 'limit', 0.96, false),
  (51, 'IFRA_STD_050', '5B', '0.96', 'limit', 0.96, false),
  (51, 'IFRA_STD_050', '5C', '0.96', 'limit', 0.96, false),
  (51, 'IFRA_STD_050', '5D', '0.96', 'limit', 0.96, false),
  (51, 'IFRA_STD_050', '6', '2.2', 'limit', 2.2, false),
  (51, 'IFRA_STD_050', '7A', '7.7', 'limit', 7.7, false),
  (51, 'IFRA_STD_050', '7B', '7.7', 'limit', 7.7, false),
  (51, 'IFRA_STD_050', '8', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_050', '9', '7.4', 'limit', 7.4, false),
  (51, 'IFRA_STD_050', '10A', '26', 'limit', 26, false),
  (51, 'IFRA_STD_050', '10B', '26', 'limit', 26, false),
  (51, 'IFRA_STD_050', '11A', '15', 'limit', 15, false),
  (51, 'IFRA_STD_050', '11B', '15', 'limit', 15, false),
  (51, 'IFRA_STD_050', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_051', '1', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_051', '2', '0.032', 'limit', 0.032, false),
  (51, 'IFRA_STD_051', '3', '0.65', 'limit', 0.65, false),
  (51, 'IFRA_STD_051', '4', '0.6', 'limit', 0.6, false),
  (51, 'IFRA_STD_051', '5A', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_051', '5B', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_051', '5C', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_051', '5D', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_051', '6', '0.35', 'limit', 0.35, false),
  (51, 'IFRA_STD_051', '7A', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_051', '7B', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_051', '8', '0.063', 'limit', 0.063, false),
  (51, 'IFRA_STD_051', '9', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_051', '10A', '4.2', 'limit', 4.2, false),
  (51, 'IFRA_STD_051', '10B', '4.2', 'limit', 4.2, false),
  (51, 'IFRA_STD_051', '11A', '2.3', 'limit', 2.3, false),
  (51, 'IFRA_STD_051', '11B', '2.3', 'limit', 2.3, false),
  (51, 'IFRA_STD_051', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_052', '1', '0.054', 'limit', 0.054, false),
  (51, 'IFRA_STD_052', '2', '0.016', 'limit', 0.016, false),
  (51, 'IFRA_STD_052', '3', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_052', '4', '0.3', 'limit', 0.3, false),
  (51, 'IFRA_STD_052', '5A', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_052', '5B', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_052', '5C', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_052', '5D', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_052', '6', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_052', '7A', '0.61', 'limit', 0.61, false),
  (51, 'IFRA_STD_052', '7B', '0.61', 'limit', 0.61, false),
  (51, 'IFRA_STD_052', '8', '0.032', 'limit', 0.032, false),
  (51, 'IFRA_STD_052', '9', '0.59', 'limit', 0.59, false),
  (51, 'IFRA_STD_052', '10A', '2.1', 'limit', 2.1, false),
  (51, 'IFRA_STD_052', '10B', '2.1', 'limit', 2.1, false),
  (51, 'IFRA_STD_052', '11A', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_052', '11B', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_052', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_053', '1', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_053', '2', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_053', '3', '0.46', 'limit', 0.46, false),
  (51, 'IFRA_STD_053', '4', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_053', '5A', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_053', '5B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_053', '5C', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_053', '5D', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_053', '6', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_053', '7A', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_053', '7B', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_053', '8', '0.045', 'limit', 0.045, false),
  (51, 'IFRA_STD_053', '9', '0.84', 'limit', 0.84, false),
  (51, 'IFRA_STD_053', '10A', '3', 'limit', 3, false),
  (51, 'IFRA_STD_053', '10B', '3', 'limit', 3, false),
  (51, 'IFRA_STD_053', '11A', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_053', '11B', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_053', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_054', '1', '0.23', 'limit', 0.23, false),
  (51, 'IFRA_STD_054', '2', '0,080', 'limit', 0.08, false),
  (51, 'IFRA_STD_054', '3', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_054', '4', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_054', '5A', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_054', '5B', '0.093', 'limit', 0.093, false),
  (51, 'IFRA_STD_054', '5C', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_054', '5D', '0.031', 'limit', 0.031, false),
  (51, 'IFRA_STD_054', '6', '0.047', 'limit', 0.047, false),
  (51, 'IFRA_STD_054', '7A', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_054', '7B', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_054', '8', '0.031', 'limit', 0.031, false),
  (51, 'IFRA_STD_054', '9', '0.42', 'limit', 0.42, false),
  (51, 'IFRA_STD_054', '10A', '0.19', 'limit', 0.19, false),
  (51, 'IFRA_STD_054', '10B', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_054', '11A', '0.031', 'limit', 0.031, false),
  (51, 'IFRA_STD_054', '11B', '0.031', 'limit', 0.031, false),
  (51, 'IFRA_STD_054', '12', '31', 'limit', 31, false),
  (51, 'IFRA_STD_055', '1', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_055', '2', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_055', '3', '0.46', 'limit', 0.46, false),
  (51, 'IFRA_STD_055', '4', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_055', '5A', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_055', '5B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_055', '5C', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_055', '5D', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_055', '6', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_055', '7A', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_055', '7B', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_055', '8', '0.045', 'limit', 0.045, false),
  (51, 'IFRA_STD_055', '9', '0.84', 'limit', 0.84, false),
  (51, 'IFRA_STD_055', '10A', '3', 'limit', 3, false),
  (51, 'IFRA_STD_055', '10B', '3', 'limit', 3, false),
  (51, 'IFRA_STD_055', '11A', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_055', '11B', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_055', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_056', '1', '0.19', 'limit', 0.19, false),
  (51, 'IFRA_STD_056', '2', '0.057', 'limit', 0.057, false),
  (51, 'IFRA_STD_056', '3', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_056', '4', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_056', '5A', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_056', '5B', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_056', '5C', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_056', '5D', '0.091', 'limit', 0.091, false),
  (51, 'IFRA_STD_056', '6', '0.63', 'limit', 0.63, false),
  (51, 'IFRA_STD_056', '7A', '2.2', 'limit', 2.2, false);
insert into public.ifra_limits (amendment, standard_key, category, raw_value, limit_kind, limit_pct, needs_review) values
  (51, 'IFRA_STD_056', '7B', '2.2', 'limit', 2.2, false),
  (51, 'IFRA_STD_056', '8', '0.091', 'limit', 0.091, false),
  (51, 'IFRA_STD_056', '9', '2.1', 'limit', 2.1, false),
  (51, 'IFRA_STD_056', '10A', '2.1', 'limit', 2.1, false),
  (51, 'IFRA_STD_056', '10B', '7.5', 'limit', 7.5, false),
  (51, 'IFRA_STD_056', '11A', '0.091', 'limit', 0.091, false),
  (51, 'IFRA_STD_056', '11B', '0.091', 'limit', 0.091, false),
  (51, 'IFRA_STD_056', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_057', '1', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_057', '2', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_057', '3', '0.75', 'limit', 0.75, false),
  (51, 'IFRA_STD_057', '4', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_057', '5A', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_057', '5B', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_057', '5C', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_057', '5D', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_057', '6', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_057', '7A', '0.86', 'limit', 0.86, false),
  (51, 'IFRA_STD_057', '7B', '0.86', 'limit', 0.86, false),
  (51, 'IFRA_STD_057', '8', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_057', '9', '2.7', 'limit', 2.7, false),
  (51, 'IFRA_STD_057', '10A', '0.75', 'limit', 0.75, false),
  (51, 'IFRA_STD_057', '10B', '4.1', 'limit', 4.1, false),
  (51, 'IFRA_STD_057', '11A', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_057', '11B', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_057', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_058', '1', '0.0085', 'limit', 0.0085, false),
  (51, 'IFRA_STD_058', '2', '0.0025', 'limit', 0.0025, false),
  (51, 'IFRA_STD_058', '3', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_058', '4', '0.047', 'limit', 0.047, false),
  (51, 'IFRA_STD_058', '5A', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_058', '5B', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_058', '5C', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_058', '5D', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_058', '6', '0.028', 'limit', 0.028, false),
  (51, 'IFRA_STD_058', '7A', '0.096', 'limit', 0.096, false),
  (51, 'IFRA_STD_058', '7B', '0.096', 'limit', 0.096, false),
  (51, 'IFRA_STD_058', '8', '0.005', 'limit', 0.005, false),
  (51, 'IFRA_STD_058', '9', '0.092', 'limit', 0.092, false),
  (51, 'IFRA_STD_058', '10A', '0.33', 'limit', 0.33, false),
  (51, 'IFRA_STD_058', '10B', '0.33', 'limit', 0.33, false),
  (51, 'IFRA_STD_058', '11A', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_058', '11B', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_058', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_059', '1', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_059', '2', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_059', '3', '0.039', 'limit', 0.039, false),
  (51, 'IFRA_STD_059', '4', '2.6', 'limit', 2.6, false),
  (51, 'IFRA_STD_059', '5A', '0.39', 'limit', 0.39, false),
  (51, 'IFRA_STD_059', '5B', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_059', '5C', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_059', '5D', '0.026', 'limit', 0.026, false),
  (51, 'IFRA_STD_059', '6', '0.62', 'limit', 0.62, false),
  (51, 'IFRA_STD_059', '7A', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_059', '7B', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_059', '8', '0.026', 'limit', 0.026, false),
  (51, 'IFRA_STD_059', '9', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_059', '10A', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_059', '10B', '0.62', 'limit', 0.62, false),
  (51, 'IFRA_STD_059', '11A', '0.026', 'limit', 0.026, false),
  (51, 'IFRA_STD_059', '11B', '0.026', 'limit', 0.026, false),
  (51, 'IFRA_STD_059', '12', '12', 'limit', 12, false),
  (51, 'IFRA_STD_060', '1', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_060', '2', '0.08', 'limit', 0.08, false),
  (51, 'IFRA_STD_060', '3', '1.6', 'limit', 1.6, false),
  (51, 'IFRA_STD_060', '4', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_060', '5A', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_060', '5B', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_060', '5C', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_060', '5D', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_060', '6', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_060', '7A', '3.1', 'limit', 3.1, false),
  (51, 'IFRA_STD_060', '7B', '3.1', 'limit', 3.1, false),
  (51, 'IFRA_STD_060', '8', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_060', '9', '2.9', 'limit', 2.9, false),
  (51, 'IFRA_STD_060', '10A', '11', 'limit', 11, false),
  (51, 'IFRA_STD_060', '10B', '11', 'limit', 11, false),
  (51, 'IFRA_STD_060', '11A', '5.8', 'limit', 5.8, false),
  (51, 'IFRA_STD_060', '11B', '5.8', 'limit', 5.8, false),
  (51, 'IFRA_STD_060', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_061', '1', '0.0085', 'limit', 0.0085, false),
  (51, 'IFRA_STD_061', '2', '0.0025', 'limit', 0.0025, false),
  (51, 'IFRA_STD_061', '3', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_061', '4', '0.047', 'limit', 0.047, false),
  (51, 'IFRA_STD_061', '5A', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_061', '5B', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_061', '5C', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_061', '5D', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_061', '6', '0.028', 'limit', 0.028, false),
  (51, 'IFRA_STD_061', '7A', '0.096', 'limit', 0.096, false),
  (51, 'IFRA_STD_061', '7B', '0.096', 'limit', 0.096, false),
  (51, 'IFRA_STD_061', '8', '0.005', 'limit', 0.005, false),
  (51, 'IFRA_STD_061', '9', '0.092', 'limit', 0.092, false),
  (51, 'IFRA_STD_061', '10A', '0.33', 'limit', 0.33, false),
  (51, 'IFRA_STD_061', '10B', '0.33', 'limit', 0.33, false),
  (51, 'IFRA_STD_061', '11A', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_061', '11B', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_061', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_062', '1', '0.0085', 'limit', 0.0085, false),
  (51, 'IFRA_STD_062', '2', '0.0025', 'limit', 0.0025, false),
  (51, 'IFRA_STD_062', '3', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_062', '4', '0.047', 'limit', 0.047, false),
  (51, 'IFRA_STD_062', '5A', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_062', '5B', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_062', '5C', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_062', '5D', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_062', '6', '0.028', 'limit', 0.028, false),
  (51, 'IFRA_STD_062', '7A', '0.096', 'limit', 0.096, false),
  (51, 'IFRA_STD_062', '7B', '0.096', 'limit', 0.096, false),
  (51, 'IFRA_STD_062', '8', '0.005', 'limit', 0.005, false),
  (51, 'IFRA_STD_062', '9', '0.092', 'limit', 0.092, false),
  (51, 'IFRA_STD_062', '10A', '0.33', 'limit', 0.33, false),
  (51, 'IFRA_STD_062', '10B', '0.33', 'limit', 0.33, false),
  (51, 'IFRA_STD_062', '11A', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_062', '11B', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_062', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_063', '1', '5.4', 'limit', 5.4, false),
  (51, 'IFRA_STD_063', '2', '1.6', 'limit', 1.6, false),
  (51, 'IFRA_STD_063', '3', '32', 'limit', 32, false),
  (51, 'IFRA_STD_063', '4', '30', 'limit', 30, false),
  (51, 'IFRA_STD_063', '5A', '7.6', 'limit', 7.6, false),
  (51, 'IFRA_STD_063', '5B', '7.6', 'limit', 7.6, false),
  (51, 'IFRA_STD_063', '5C', '7.6', 'limit', 7.6, false),
  (51, 'IFRA_STD_063', '5D', '7.6', 'limit', 7.6, false),
  (51, 'IFRA_STD_063', '6', '18', 'limit', 18, false),
  (51, 'IFRA_STD_063', '7A', '61', 'limit', 61, false),
  (51, 'IFRA_STD_063', '7B', '61', 'limit', 61, false),
  (51, 'IFRA_STD_063', '8', '3.2', 'limit', 3.2, false),
  (51, 'IFRA_STD_063', '9', '59', 'limit', 59, false),
  (51, 'IFRA_STD_063', '10A', '100', 'limit', 100, false),
  (51, 'IFRA_STD_063', '10B', '100', 'limit', 100, false),
  (51, 'IFRA_STD_063', '11A', '100', 'limit', 100, false),
  (51, 'IFRA_STD_063', '11B', '100', 'limit', 100, false),
  (51, 'IFRA_STD_063', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_064', '1', '0.0018', 'limit', 0.0018, false),
  (51, 'IFRA_STD_064', '2', '0.00055', 'limit', 0.00055, false),
  (51, 'IFRA_STD_064', '3', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_064', '4', '0.01', 'limit', 0.01, false),
  (51, 'IFRA_STD_064', '5A', '0.0026', 'limit', 0.0026, false),
  (51, 'IFRA_STD_064', '5B', '0.0026', 'limit', 0.0026, false),
  (51, 'IFRA_STD_064', '5C', '0.0026', 'limit', 0.0026, false),
  (51, 'IFRA_STD_064', '5D', '0.0026', 'limit', 0.0026, false),
  (51, 'IFRA_STD_064', '6', '0.0061', 'limit', 0.0061, false),
  (51, 'IFRA_STD_064', '7A', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_064', '7B', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_064', '8', '0.0011', 'limit', 0.0011, false),
  (51, 'IFRA_STD_064', '9', '0.02', 'limit', 0.02, false),
  (51, 'IFRA_STD_064', '10A', '0.072', 'limit', 0.072, false),
  (51, 'IFRA_STD_064', '10B', '0.072', 'limit', 0.072, false),
  (51, 'IFRA_STD_064', '11A', '0.04', 'limit', 0.04, false),
  (51, 'IFRA_STD_064', '11B', '0.04', 'limit', 0.04, false),
  (51, 'IFRA_STD_064', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_065', '1', '0.085', 'limit', 0.085, false),
  (51, 'IFRA_STD_065', '2', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_065', '3', '0.51', 'limit', 0.51, false),
  (51, 'IFRA_STD_065', '4', '0.47', 'limit', 0.47, false),
  (51, 'IFRA_STD_065', '5A', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_065', '5B', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_065', '5C', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_065', '5D', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_065', '6', '0.28', 'limit', 0.28, false),
  (51, 'IFRA_STD_065', '7A', '0.96', 'limit', 0.96, false),
  (51, 'IFRA_STD_065', '7B', '0.96', 'limit', 0.96, false),
  (51, 'IFRA_STD_065', '8', '0.05', 'limit', 0.05, false),
  (51, 'IFRA_STD_065', '9', '0.92', 'limit', 0.92, false),
  (51, 'IFRA_STD_065', '10A', '3.3', 'limit', 3.3, false),
  (51, 'IFRA_STD_065', '10B', '3.3', 'limit', 3.3, false),
  (51, 'IFRA_STD_065', '11A', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_065', '11B', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_065', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_066', '1', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_066', '2', '0.53', 'limit', 0.53, false),
  (51, 'IFRA_STD_066', '3', '11', 'limit', 11, false),
  (51, 'IFRA_STD_066', '4', '9.9', 'limit', 9.9, false),
  (51, 'IFRA_STD_066', '5A', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_066', '5B', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_066', '5C', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_066', '5D', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_066', '6', '5.8', 'limit', 5.8, false),
  (51, 'IFRA_STD_066', '7A', '20', 'limit', 20, false),
  (51, 'IFRA_STD_066', '7B', '20', 'limit', 20, false),
  (51, 'IFRA_STD_066', '8', '1', 'limit', 1, false),
  (51, 'IFRA_STD_066', '9', '19', 'limit', 19, false),
  (51, 'IFRA_STD_066', '10A', '69', 'limit', 69, false),
  (51, 'IFRA_STD_066', '10B', '69', 'limit', 69, false),
  (51, 'IFRA_STD_066', '11A', '38', 'limit', 38, false),
  (51, 'IFRA_STD_066', '11B', '38', 'limit', 38, false),
  (51, 'IFRA_STD_066', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_067', '1', '0.02', 'limit', 0.02, false),
  (51, 'IFRA_STD_067', '2', '0.016', 'limit', 0.016, false),
  (51, 'IFRA_STD_067', '3', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_067', '4', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_067', '5A', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_067', '5B', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_067', '5C', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_067', '5D', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_067', '6', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_067', '7A', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_067', '7B', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_067', '8', '0.032', 'limit', 0.032, false),
  (51, 'IFRA_STD_067', '9', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_067', '10A', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_067', '10B', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_067', '11A', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_067', '11B', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_067', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_068', '1', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_068', '2', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_068', '3', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_068', '4', '20', 'limit', 20, false),
  (51, 'IFRA_STD_068', '5A', '5.1', 'limit', 5.1, false),
  (51, 'IFRA_STD_068', '5B', '0.56', 'limit', 0.56, false),
  (51, 'IFRA_STD_068', '5C', '0.76', 'limit', 0.76, false),
  (51, 'IFRA_STD_068', '5D', '0.19', 'limit', 0.19, false),
  (51, 'IFRA_STD_068', '6', '0.0093', 'limit', 0.0093, false),
  (51, 'IFRA_STD_068', '7A', '0.67', 'limit', 0.67, false),
  (51, 'IFRA_STD_068', '7B', '0.67', 'limit', 0.67, false),
  (51, 'IFRA_STD_068', '8', '0.19', 'limit', 0.19, false),
  (51, 'IFRA_STD_068', '9', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_068', '10A', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_068', '10B', '6.6', 'limit', 6.6, false),
  (51, 'IFRA_STD_068', '11A', '0.19', 'limit', 0.19, false),
  (51, 'IFRA_STD_068', '11B', '0.19', 'limit', 0.19, false),
  (51, 'IFRA_STD_068', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_069', '1', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_069', '2', '0.08', 'limit', 0.08, false),
  (51, 'IFRA_STD_069', '3', '1.6', 'limit', 1.6, false),
  (51, 'IFRA_STD_069', '4', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_069', '5A', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_069', '5B', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_069', '5C', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_069', '5D', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_069', '6', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_069', '7A', '3.1', 'limit', 3.1, false),
  (51, 'IFRA_STD_069', '7B', '3.1', 'limit', 3.1, false),
  (51, 'IFRA_STD_069', '8', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_069', '9', '2.9', 'limit', 2.9, false),
  (51, 'IFRA_STD_069', '10A', '11', 'limit', 11, false),
  (51, 'IFRA_STD_069', '10B', '11', 'limit', 11, false),
  (51, 'IFRA_STD_069', '11A', '5.8', 'limit', 5.8, false),
  (51, 'IFRA_STD_069', '11B', '5.8', 'limit', 5.8, false),
  (51, 'IFRA_STD_069', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_070', '1', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_070', '2', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_070', '3', '0.46', 'limit', 0.46, false),
  (51, 'IFRA_STD_070', '4', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_070', '5A', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_070', '5B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_070', '5C', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_070', '5D', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_070', '6', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_070', '7A', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_070', '7B', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_070', '8', '0.045', 'limit', 0.045, false),
  (51, 'IFRA_STD_070', '9', '0.84', 'limit', 0.84, false),
  (51, 'IFRA_STD_070', '10A', '3', 'limit', 3, false),
  (51, 'IFRA_STD_070', '10B', '3', 'limit', 3, false),
  (51, 'IFRA_STD_070', '11A', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_070', '11B', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_070', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_071', '1', '0.073', 'limit', 0.073, false),
  (51, 'IFRA_STD_071', '2', '0.022', 'limit', 0.022, false),
  (51, 'IFRA_STD_071', '3', '0.44', 'limit', 0.44, false),
  (51, 'IFRA_STD_071', '4', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_071', '5A', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_071', '5B', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_071', '5C', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_071', '5D', '0.034', 'limit', 0.034, false),
  (51, 'IFRA_STD_071', '6', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_071', '7A', '0.83', 'limit', 0.83, false),
  (51, 'IFRA_STD_071', '7B', '0.83', 'limit', 0.83, false),
  (51, 'IFRA_STD_071', '8', '0.034', 'limit', 0.034, false),
  (51, 'IFRA_STD_071', '9', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_071', '10A', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_071', '10B', '2.9', 'limit', 2.9, false),
  (51, 'IFRA_STD_071', '11A', '0.034', 'limit', 0.034, false),
  (51, 'IFRA_STD_071', '11B', '0.034', 'limit', 0.034, false),
  (51, 'IFRA_STD_071', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_072', '1', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_072', '2', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_072', '3', '0.46', 'limit', 0.46, false),
  (51, 'IFRA_STD_072', '4', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_072', '5A', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_072', '5B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_072', '5C', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_072', '5D', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_072', '6', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_072', '7A', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_072', '7B', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_072', '8', '0.045', 'limit', 0.045, false),
  (51, 'IFRA_STD_072', '9', '0.84', 'limit', 0.84, false),
  (51, 'IFRA_STD_072', '10A', '3', 'limit', 3, false),
  (51, 'IFRA_STD_072', '10B', '3', 'limit', 3, false),
  (51, 'IFRA_STD_072', '11A', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_072', '11B', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_072', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_073', '1', '0.045', 'limit', 0.045, false),
  (51, 'IFRA_STD_073', '2', '0.014', 'limit', 0.014, false),
  (51, 'IFRA_STD_073', '3', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_073', '4', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_073', '5A', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_073', '5B', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_073', '5C', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_073', '5D', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_073', '6', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_073', '7A', '0.52', 'limit', 0.52, false),
  (51, 'IFRA_STD_073', '7B', '0.52', 'limit', 0.52, false),
  (51, 'IFRA_STD_073', '8', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_073', '9', '0.49', 'limit', 0.49, false),
  (51, 'IFRA_STD_073', '10A', '0.49', 'limit', 0.49, false),
  (51, 'IFRA_STD_073', '10B', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_073', '11A', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_073', '11B', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_073', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_074', '1', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_074', '2', '0.069', 'limit', 0.069, false),
  (51, 'IFRA_STD_074', '3', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_074', '4', '0.44', 'limit', 0.44, false),
  (51, 'IFRA_STD_074', '5A', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_074', '5B', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_074', '5C', '0.034', 'limit', 0.034, false),
  (51, 'IFRA_STD_074', '5D', '0.0076', 'limit', 0.0076, false),
  (51, 'IFRA_STD_074', '6', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_074', '7A', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_074', '7B', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_074', '8', '0.0076', 'limit', 0.0076, false),
  (51, 'IFRA_STD_074', '9', '0.08', 'limit', 0.08, false),
  (51, 'IFRA_STD_074', '10A', '0.08', 'limit', 0.08, false),
  (51, 'IFRA_STD_074', '10B', '0.36', 'limit', 0.36, false),
  (51, 'IFRA_STD_074', '11A', '0.0076', 'limit', 0.0076, false),
  (51, 'IFRA_STD_074', '11B', '0.0076', 'limit', 0.0076, false),
  (51, 'IFRA_STD_074', '12', '9.6', 'limit', 9.6, false),
  (51, 'IFRA_STD_075', '1', '0.029', 'limit', 0.029, false),
  (51, 'IFRA_STD_075', '2', '0.0087', 'limit', 0.0087, false),
  (51, 'IFRA_STD_075', '3', '0.096', 'limit', 0.096, false),
  (51, 'IFRA_STD_075', '4', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_075', '5A', '0.041', 'limit', 0.041, false),
  (51, 'IFRA_STD_075', '5B', '0.041', 'limit', 0.041, false),
  (51, 'IFRA_STD_075', '5C', '0.041', 'limit', 0.041, false),
  (51, 'IFRA_STD_075', '5D', '0.014', 'limit', 0.014, false),
  (51, 'IFRA_STD_075', '6', '0.096', 'limit', 0.096, false),
  (51, 'IFRA_STD_075', '7A', '0.19', 'limit', 0.19, false),
  (51, 'IFRA_STD_075', '7B', '0.19', 'limit', 0.19, false),
  (51, 'IFRA_STD_075', '8', '0.014', 'limit', 0.014, false),
  (51, 'IFRA_STD_075', '9', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_075', '10A', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_075', '10B', '0.77', 'limit', 0.77, false),
  (51, 'IFRA_STD_075', '11A', '0.014', 'limit', 0.014, false),
  (51, 'IFRA_STD_075', '11B', '0.014', 'limit', 0.014, false),
  (51, 'IFRA_STD_075', '12', '31', 'limit', 31, false),
  (51, 'IFRA_STD_076', '1', '0.072', 'limit', 0.072, false),
  (51, 'IFRA_STD_076', '2', '0.022', 'limit', 0.022, false),
  (51, 'IFRA_STD_076', '3', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_076', '4', '0,40', 'limit', 0.4, false),
  (51, 'IFRA_STD_076', '5A', '0,10', 'limit', 0.1, false),
  (51, 'IFRA_STD_076', '5B', '0,10', 'limit', 0.1, false),
  (51, 'IFRA_STD_076', '5C', '0,10', 'limit', 0.1, false),
  (51, 'IFRA_STD_076', '5D', '0,10', 'limit', 0.1, false),
  (51, 'IFRA_STD_076', '6', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_076', '7A', '0.82', 'limit', 0.82, false),
  (51, 'IFRA_STD_076', '7B', '0.82', 'limit', 0.82, false),
  (51, 'IFRA_STD_076', '8', '0.042', 'limit', 0.042, false),
  (51, 'IFRA_STD_076', '9', '0.79', 'limit', 0.79, false),
  (51, 'IFRA_STD_076', '10A', '2.8', 'limit', 2.8, false),
  (51, 'IFRA_STD_076', '10B', '2.8', 'limit', 2.8, false),
  (51, 'IFRA_STD_076', '11A', '1.6', 'limit', 1.6, false),
  (51, 'IFRA_STD_076', '11B', '1.6', 'limit', 1.6, false),
  (51, 'IFRA_STD_076', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_077', '1', '0.0077', 'limit', 0.0077, false),
  (51, 'IFRA_STD_077', '2', '0.0023', 'limit', 0.0023, false),
  (51, 'IFRA_STD_077', '3', '0.046', 'limit', 0.046, false),
  (51, 'IFRA_STD_077', '4', '0.043', 'limit', 0.043, false),
  (51, 'IFRA_STD_077', '5A', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_077', '5B', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_077', '5C', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_077', '5D', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_077', '6', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_077', '7A', '0.088', 'limit', 0.088, false),
  (51, 'IFRA_STD_077', '7B', '0.088', 'limit', 0.088, false),
  (51, 'IFRA_STD_077', '8', '0.0045', 'limit', 0.0045, false),
  (51, 'IFRA_STD_077', '9', '0.084', 'limit', 0.084, false),
  (51, 'IFRA_STD_077', '10A', '0.3', 'limit', 0.3, false),
  (51, 'IFRA_STD_077', '10B', '0.3', 'limit', 0.3, false),
  (51, 'IFRA_STD_077', '11A', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_077', '11B', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_077', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_078', '1', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_078', '2', '0.034', 'limit', 0.034, false),
  (51, 'IFRA_STD_078', '3', '0.69', 'limit', 0.69, false),
  (51, 'IFRA_STD_078', '4', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_078', '5A', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_078', '5B', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_078', '5C', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_078', '5D', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_078', '6', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_078', '7A', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_078', '7B', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_078', '8', '0.068', 'limit', 0.068, false),
  (51, 'IFRA_STD_078', '9', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_078', '10A', '4.5', 'limit', 4.5, false),
  (51, 'IFRA_STD_078', '10B', '4.5', 'limit', 4.5, false),
  (51, 'IFRA_STD_078', '11A', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_078', '11B', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_078', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_079', '1', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_079', '2', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_079', '3', '0.22', 'limit', 0.22, false),
  (51, 'IFRA_STD_079', '4', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_079', '5A', '0.052', 'limit', 0.052, false),
  (51, 'IFRA_STD_079', '5B', '0.052', 'limit', 0.052, false),
  (51, 'IFRA_STD_079', '5C', '0.052', 'limit', 0.052, false),
  (51, 'IFRA_STD_079', '5D', '0.052', 'limit', 0.052, false),
  (51, 'IFRA_STD_079', '6', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_079', '7A', '0.42', 'limit', 0.42, false),
  (51, 'IFRA_STD_079', '7B', '0.42', 'limit', 0.42, false),
  (51, 'IFRA_STD_079', '8', '0.022', 'limit', 0.022, false),
  (51, 'IFRA_STD_079', '9', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_079', '10A', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_079', '10B', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_079', '11A', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_079', '11B', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_079', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_080', '1', '0.02', 'limit', 0.02, false),
  (51, 'IFRA_STD_080', '2', '0.016', 'limit', 0.016, false),
  (51, 'IFRA_STD_080', '3', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_080', '4', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_080', '5A', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_080', '5B', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_080', '5C', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_080', '5D', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_080', '6', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_080', '7A', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_080', '7B', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_080', '8', '0.032', 'limit', 0.032, false),
  (51, 'IFRA_STD_080', '9', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_080', '10A', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_080', '10B', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_080', '11A', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_080', '11B', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_080', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_081', '1', '0.085', 'limit', 0.085, false),
  (51, 'IFRA_STD_081', '2', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_081', '3', '0.51', 'limit', 0.51, false),
  (51, 'IFRA_STD_081', '4', '0.47', 'limit', 0.47, false),
  (51, 'IFRA_STD_081', '5A', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_081', '5B', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_081', '5C', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_081', '5D', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_081', '6', '0.28', 'limit', 0.28, false),
  (51, 'IFRA_STD_081', '7A', '0.96', 'limit', 0.96, false),
  (51, 'IFRA_STD_081', '7B', '0.96', 'limit', 0.96, false),
  (51, 'IFRA_STD_081', '8', '0.05', 'limit', 0.05, false),
  (51, 'IFRA_STD_081', '9', '0.92', 'limit', 0.92, false),
  (51, 'IFRA_STD_081', '10A', '3.3', 'limit', 3.3, false),
  (51, 'IFRA_STD_081', '10B', '3.3', 'limit', 3.3, false),
  (51, 'IFRA_STD_081', '11A', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_081', '11B', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_081', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_082', '1', '0.0022', 'limit', 0.0022, false),
  (51, 'IFRA_STD_082', '2', '0.00066', 'limit', 0.00066, false),
  (51, 'IFRA_STD_082', '3', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_082', '4', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_082', '5A', '0.0032', 'limit', 0.0032, false),
  (51, 'IFRA_STD_082', '5B', '0.0032', 'limit', 0.0032, false),
  (51, 'IFRA_STD_082', '5C', '0.0032', 'limit', 0.0032, false),
  (51, 'IFRA_STD_082', '5D', '0.0032', 'limit', 0.0032, false),
  (51, 'IFRA_STD_082', '6', '0.0073', 'limit', 0.0073, false),
  (51, 'IFRA_STD_082', '7A', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_082', '7B', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_082', '8', '0.0013', 'limit', 0.0013, false),
  (51, 'IFRA_STD_082', '9', '0.024', 'limit', 0.024, false),
  (51, 'IFRA_STD_082', '10A', '0.087', 'limit', 0.087, false),
  (51, 'IFRA_STD_082', '10B', '0.087', 'limit', 0.087, false),
  (51, 'IFRA_STD_082', '11A', '0.048', 'limit', 0.048, false),
  (51, 'IFRA_STD_082', '11B', '0.048', 'limit', 0.048, false),
  (51, 'IFRA_STD_082', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_083', '1', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_083', '2', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_083', '3', '0.74', 'limit', 0.74, false),
  (51, 'IFRA_STD_083', '4', '0.69', 'limit', 0.69, false),
  (51, 'IFRA_STD_083', '5A', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_083', '5B', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_083', '5C', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_083', '5D', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_083', '6', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_083', '7A', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_083', '7B', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_083', '8', '0.072', 'limit', 0.072, false),
  (51, 'IFRA_STD_083', '9', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_083', '10A', '4.8', 'limit', 4.8, false),
  (51, 'IFRA_STD_083', '10B', '4.8', 'limit', 4.8, false),
  (51, 'IFRA_STD_083', '11A', '2.7', 'limit', 2.7, false),
  (51, 'IFRA_STD_083', '11B', '2.7', 'limit', 2.7, false),
  (51, 'IFRA_STD_083', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_084', '1', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_084', '2', '0.039', 'limit', 0.039, false),
  (51, 'IFRA_STD_084', '3', '0.78', 'limit', 0.78, false),
  (51, 'IFRA_STD_084', '4', '0.73', 'limit', 0.73, false),
  (51, 'IFRA_STD_084', '5A', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_084', '5B', '0.18', 'limit', 0.18, false);
insert into public.ifra_limits (amendment, standard_key, category, raw_value, limit_kind, limit_pct, needs_review) values
  (51, 'IFRA_STD_084', '5C', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_084', '5D', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_084', '6', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_084', '7A', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_084', '7B', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_084', '8', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_084', '9', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_084', '10A', '5.1', 'limit', 5.1, false),
  (51, 'IFRA_STD_084', '10B', '5.1', 'limit', 5.1, false),
  (51, 'IFRA_STD_084', '11A', '2.8', 'limit', 2.8, false),
  (51, 'IFRA_STD_084', '11B', '2.8', 'limit', 2.8, false),
  (51, 'IFRA_STD_084', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_085', '1', '2', 'limit', 2, false),
  (51, 'IFRA_STD_085', '2', '2', 'limit', 2, false),
  (51, 'IFRA_STD_085', '3', '2', 'limit', 2, false),
  (51, 'IFRA_STD_085', '4', '2', 'limit', 2, false),
  (51, 'IFRA_STD_085', '5A', '2', 'limit', 2, false),
  (51, 'IFRA_STD_085', '5B', '2', 'limit', 2, false),
  (51, 'IFRA_STD_085', '5C', '2', 'limit', 2, false),
  (51, 'IFRA_STD_085', '5D', '2', 'limit', 2, false),
  (51, 'IFRA_STD_085', '6', '2', 'limit', 2, false),
  (51, 'IFRA_STD_085', '7A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_085', '7B', '2', 'limit', 2, false),
  (51, 'IFRA_STD_085', '8', '2', 'limit', 2, false),
  (51, 'IFRA_STD_085', '9', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_085', '10A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_085', '10B', '2', 'limit', 2, false),
  (51, 'IFRA_STD_085', '11A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_085', '11B', '2', 'limit', 2, false),
  (51, 'IFRA_STD_085', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_086', '1', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_086', '2', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_086', '3', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_086', '4', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_086', '5A', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_086', '5B', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_086', '5C', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_086', '5D', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_086', '6', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_086', '7A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_086', '7B', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_086', '8', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_086', '9', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_086', '10A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_086', '10B', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_086', '11A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_086', '11B', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_086', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_087', '1', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_087', '2', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_087', '3', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_087', '4', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_087', '5A', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_087', '5B', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_087', '5C', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_087', '5D', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_087', '6', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_087', '7A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_087', '7B', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_087', '8', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_087', '9', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_087', '10A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_087', '10B', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_087', '11A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_087', '11B', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_087', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_088', '1', '1.25', 'limit', 1.25, false),
  (51, 'IFRA_STD_088', '2', '1.25', 'limit', 1.25, false),
  (51, 'IFRA_STD_088', '3', '1.25', 'limit', 1.25, false),
  (51, 'IFRA_STD_088', '4', '1.25', 'limit', 1.25, false),
  (51, 'IFRA_STD_088', '5A', '1.25', 'limit', 1.25, false),
  (51, 'IFRA_STD_088', '5B', '1.25', 'limit', 1.25, false),
  (51, 'IFRA_STD_088', '5C', '1.25', 'limit', 1.25, false),
  (51, 'IFRA_STD_088', '5D', '1.25', 'limit', 1.25, false),
  (51, 'IFRA_STD_088', '6', '1.25', 'limit', 1.25, false),
  (51, 'IFRA_STD_088', '7A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_088', '7B', '1.25', 'limit', 1.25, false),
  (51, 'IFRA_STD_088', '8', '1.25', 'limit', 1.25, false),
  (51, 'IFRA_STD_088', '9', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_088', '10A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_088', '10B', '1.25', 'limit', 1.25, false),
  (51, 'IFRA_STD_088', '11A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_088', '11B', '1.25', 'limit', 1.25, false),
  (51, 'IFRA_STD_088', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_089', '1', '0.0015 (5-MOP)', 'annotated', 0.0015, true),
  (51, 'IFRA_STD_089', '2', '0.0015 (5-MOP)', 'annotated', 0.0015, true),
  (51, 'IFRA_STD_089', '3', '0.0015 (5-MOP)', 'annotated', 0.0015, true),
  (51, 'IFRA_STD_089', '4', '0.0015 (5-MOP)', 'annotated', 0.0015, true),
  (51, 'IFRA_STD_089', '5A', '0.0015 (5-MOP)', 'annotated', 0.0015, true),
  (51, 'IFRA_STD_089', '5B', '0.0015 (5-MOP)', 'annotated', 0.0015, true),
  (51, 'IFRA_STD_089', '5C', '0.0015 (5-MOP)', 'annotated', 0.0015, true),
  (51, 'IFRA_STD_089', '5D', '0.0015 (5-MOP)', 'annotated', 0.0015, true),
  (51, 'IFRA_STD_089', '6', '0.0015 (5-MOP)', 'annotated', 0.0015, true),
  (51, 'IFRA_STD_089', '7A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_089', '7B', '0.0015 (5-MOP)', 'annotated', 0.0015, true),
  (51, 'IFRA_STD_089', '8', '0.0015 (5-MOP)', 'annotated', 0.0015, true),
  (51, 'IFRA_STD_089', '9', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_089', '10A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_089', '10B', '0.0015 (5-MOP)', 'annotated', 0.0015, true),
  (51, 'IFRA_STD_089', '11A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_089', '11B', '0.0015 (5-MOP)', 'annotated', 0.0015, true),
  (51, 'IFRA_STD_089', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_090', '1', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_090', '2', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_090', '3', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_090', '4', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_090', '5A', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_090', '5B', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_090', '5C', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_090', '5D', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_090', '6', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_090', '7A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_090', '7B', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_090', '8', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_090', '9', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_090', '10A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_090', '10B', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_090', '11A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_090', '11B', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_090', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_091', '1', '4', 'limit', 4, false),
  (51, 'IFRA_STD_091', '2', '4', 'limit', 4, false),
  (51, 'IFRA_STD_091', '3', '4', 'limit', 4, false),
  (51, 'IFRA_STD_091', '4', '4', 'limit', 4, false),
  (51, 'IFRA_STD_091', '5A', '4', 'limit', 4, false),
  (51, 'IFRA_STD_091', '5B', '4', 'limit', 4, false),
  (51, 'IFRA_STD_091', '5C', '4', 'limit', 4, false),
  (51, 'IFRA_STD_091', '5D', '4', 'limit', 4, false),
  (51, 'IFRA_STD_091', '6', '4', 'limit', 4, false),
  (51, 'IFRA_STD_091', '7A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_091', '7B', '4', 'limit', 4, false),
  (51, 'IFRA_STD_091', '8', '4', 'limit', 4, false),
  (51, 'IFRA_STD_091', '9', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_091', '10A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_091', '10B', '4', 'limit', 4, false),
  (51, 'IFRA_STD_091', '11A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_091', '11B', '4', 'limit', 4, false),
  (51, 'IFRA_STD_091', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_092', '1', '2', 'limit', 2, false),
  (51, 'IFRA_STD_092', '2', '2', 'limit', 2, false),
  (51, 'IFRA_STD_092', '3', '2', 'limit', 2, false),
  (51, 'IFRA_STD_092', '4', '2', 'limit', 2, false),
  (51, 'IFRA_STD_092', '5A', '2', 'limit', 2, false),
  (51, 'IFRA_STD_092', '5B', '2', 'limit', 2, false),
  (51, 'IFRA_STD_092', '5C', '2', 'limit', 2, false),
  (51, 'IFRA_STD_092', '5D', '2', 'limit', 2, false),
  (51, 'IFRA_STD_092', '6', '2', 'limit', 2, false),
  (51, 'IFRA_STD_092', '7A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_092', '7B', '2', 'limit', 2, false),
  (51, 'IFRA_STD_092', '8', '2', 'limit', 2, false),
  (51, 'IFRA_STD_092', '9', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_092', '10A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_092', '10B', '2', 'limit', 2, false),
  (51, 'IFRA_STD_092', '11A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_092', '11B', '2', 'limit', 2, false),
  (51, 'IFRA_STD_092', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_093', '1', '0.7', 'limit', 0.7, false),
  (51, 'IFRA_STD_093', '2', '0.7', 'limit', 0.7, false),
  (51, 'IFRA_STD_093', '3', '0.7', 'limit', 0.7, false),
  (51, 'IFRA_STD_093', '4', '0.7', 'limit', 0.7, false),
  (51, 'IFRA_STD_093', '5A', '0.7', 'limit', 0.7, false),
  (51, 'IFRA_STD_093', '5B', '0.7', 'limit', 0.7, false),
  (51, 'IFRA_STD_093', '5C', '0.7', 'limit', 0.7, false),
  (51, 'IFRA_STD_093', '5D', '0.7', 'limit', 0.7, false),
  (51, 'IFRA_STD_093', '6', '0.7', 'limit', 0.7, false),
  (51, 'IFRA_STD_093', '7A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_093', '7B', '0.7', 'limit', 0.7, false),
  (51, 'IFRA_STD_093', '8', '0.7', 'limit', 0.7, false),
  (51, 'IFRA_STD_093', '9', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_093', '10A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_093', '10B', '0.7', 'limit', 0.7, false),
  (51, 'IFRA_STD_093', '11A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_093', '11B', '0.7', 'limit', 0.7, false),
  (51, 'IFRA_STD_093', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_094', '1', '0,10', 'limit', 0.1, false),
  (51, 'IFRA_STD_094', '2', '0,10', 'limit', 0.1, false),
  (51, 'IFRA_STD_094', '3', '0,10', 'limit', 0.1, false),
  (51, 'IFRA_STD_094', '4', '0,10', 'limit', 0.1, false),
  (51, 'IFRA_STD_094', '5A', '0,10', 'limit', 0.1, false),
  (51, 'IFRA_STD_094', '5B', '0,10', 'limit', 0.1, false),
  (51, 'IFRA_STD_094', '5C', '0,10', 'limit', 0.1, false),
  (51, 'IFRA_STD_094', '5D', '0,10', 'limit', 0.1, false),
  (51, 'IFRA_STD_094', '6', '0,50', 'limit', 0.5, false),
  (51, 'IFRA_STD_094', '7A', '0,50', 'limit', 0.5, false),
  (51, 'IFRA_STD_094', '7B', '0,10', 'limit', 0.1, false),
  (51, 'IFRA_STD_094', '8', '0,10', 'limit', 0.1, false),
  (51, 'IFRA_STD_094', '9', '0,50', 'limit', 0.5, false),
  (51, 'IFRA_STD_094', '10A', '0,50', 'limit', 0.5, false),
  (51, 'IFRA_STD_094', '10B', '0,10', 'limit', 0.1, false),
  (51, 'IFRA_STD_094', '11A', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_094', '11B', '0,10', 'limit', 0.1, false),
  (51, 'IFRA_STD_094', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_095', '1', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_095', '2', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_095', '3', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_095', '4', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_095', '5A', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_095', '5B', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_095', '5C', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_095', '5D', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_095', '6', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_095', '7A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_095', '7B', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_095', '8', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_095', '9', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_095', '10A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_095', '10B', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_095', '11A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_095', '11B', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_095', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_096', '1', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_096', '2', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_096', '3', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_096', '4', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_096', '5A', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_096', '5B', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_096', '5C', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_096', '5D', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_096', '6', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_096', '7A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_096', '7B', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_096', '8', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_096', '9', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_096', '10A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_096', '10B', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_096', '11A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_096', '11B', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_096', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_097', '1', '0.01', 'limit', 0.01, false),
  (51, 'IFRA_STD_097', '2', '0.01', 'limit', 0.01, false),
  (51, 'IFRA_STD_097', '3', '0.01', 'limit', 0.01, false),
  (51, 'IFRA_STD_097', '4', '0.01', 'limit', 0.01, false),
  (51, 'IFRA_STD_097', '5A', '0.01', 'limit', 0.01, false),
  (51, 'IFRA_STD_097', '5B', '0.01', 'limit', 0.01, false),
  (51, 'IFRA_STD_097', '5C', '0.01', 'limit', 0.01, false),
  (51, 'IFRA_STD_097', '5D', '0.01', 'limit', 0.01, false),
  (51, 'IFRA_STD_097', '6', '0,1', 'limit', 0.1, false),
  (51, 'IFRA_STD_097', '7A', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_097', '7B', '0.01', 'limit', 0.01, false),
  (51, 'IFRA_STD_097', '8', '0.01', 'limit', 0.01, false),
  (51, 'IFRA_STD_097', '9', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_097', '10A', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_097', '10B', '0.01', 'limit', 0.01, false),
  (51, 'IFRA_STD_097', '11A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_097', '11B', '0.010', 'limit', 0.01, false),
  (51, 'IFRA_STD_097', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_098', '1', '0.001', 'limit', 0.001, false),
  (51, 'IFRA_STD_098', '2', '0.001', 'limit', 0.001, false),
  (51, 'IFRA_STD_098', '3', '0.001', 'limit', 0.001, false),
  (51, 'IFRA_STD_098', '4', '0.001', 'limit', 0.001, false),
  (51, 'IFRA_STD_098', '5A', '0.001', 'limit', 0.001, false),
  (51, 'IFRA_STD_098', '5B', '0.001', 'limit', 0.001, false),
  (51, 'IFRA_STD_098', '5C', '0.001', 'limit', 0.001, false),
  (51, 'IFRA_STD_098', '5D', '0.001', 'limit', 0.001, false),
  (51, 'IFRA_STD_098', '6', '0.001', 'limit', 0.001, false),
  (51, 'IFRA_STD_098', '7A', '0.001', 'limit', 0.001, false),
  (51, 'IFRA_STD_098', '7B', '0.001', 'limit', 0.001, false),
  (51, 'IFRA_STD_098', '8', '0.001', 'limit', 0.001, false),
  (51, 'IFRA_STD_098', '9', '0.001', 'limit', 0.001, false),
  (51, 'IFRA_STD_098', '10A', '0.001', 'limit', 0.001, false),
  (51, 'IFRA_STD_098', '10B', '0.001', 'limit', 0.001, false),
  (51, 'IFRA_STD_098', '11A', '0.001', 'limit', 0.001, false),
  (51, 'IFRA_STD_098', '11B', '0.0010', 'limit', 0.001, false),
  (51, 'IFRA_STD_098', '12', '0.05', 'limit', 0.05, false),
  (51, 'IFRA_STD_099', '1', '0.00031', 'limit', 0.00031, false),
  (51, 'IFRA_STD_099', '2', '0.0025', 'limit', 0.0025, false),
  (51, 'IFRA_STD_099', '3', '0.00063', 'limit', 0.00063, false),
  (51, 'IFRA_STD_099', '4', '0.014', 'limit', 0.014, false),
  (51, 'IFRA_STD_099', '5A', '0.0022', 'limit', 0.0022, false),
  (51, 'IFRA_STD_099', '5B', '0.00063', 'limit', 0.00063, false),
  (51, 'IFRA_STD_099', '5C', '0.00063', 'limit', 0.00063, false),
  (51, 'IFRA_STD_099', '5D', '0.00021', 'limit', 0.00021, false),
  (51, 'IFRA_STD_099', '6', '0.0019', 'limit', 0.0019, false),
  (51, 'IFRA_STD_099', '7A', '0.00063', 'limit', 0.00063, false),
  (51, 'IFRA_STD_099', '7B', '0.00063', 'limit', 0.00063, false),
  (51, 'IFRA_STD_099', '8', '0.00021', 'limit', 0.00021, false),
  (51, 'IFRA_STD_099', '9', '0.0041', 'limit', 0.0041, false),
  (51, 'IFRA_STD_099', '10A', '0.00094', 'limit', 0.00094, false),
  (51, 'IFRA_STD_099', '10B', '0.0022', 'limit', 0.0022, false),
  (51, 'IFRA_STD_099', '11A', '0.00021', 'limit', 0.00021, false),
  (51, 'IFRA_STD_099', '11B', '0.00021', 'limit', 0.00021, false),
  (51, 'IFRA_STD_099', '12', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_100', '1', '0.00042', 'limit', 0.00042, false),
  (51, 'IFRA_STD_100', '2', '0.0015', 'limit', 0.0015, false),
  (51, 'IFRA_STD_100', '3', '0.00042', 'limit', 0.00042, false),
  (51, 'IFRA_STD_100', '4', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_100', '5A', '0.0015', 'limit', 0.0015, false),
  (51, 'IFRA_STD_100', '5B', '0.00021', 'limit', 0.00021, false),
  (51, 'IFRA_STD_100', '5C', '0.00042', 'limit', 0.00042, false),
  (51, 'IFRA_STD_100', '5D', '0.000069', 'limit', 0.000069, false),
  (51, 'IFRA_STD_100', '6', '0,0010', 'limit', 0.001, false),
  (51, 'IFRA_STD_100', '7A', '0.00042', 'limit', 0.00042, false),
  (51, 'IFRA_STD_100', '7B', '0.00042', 'limit', 0.00042, false),
  (51, 'IFRA_STD_100', '8', '0.000069', 'limit', 0.000069, false),
  (51, 'IFRA_STD_100', '9', '0.0017', 'limit', 0.0017, false),
  (51, 'IFRA_STD_100', '10A', '0.00062', 'limit', 0.00062, false),
  (51, 'IFRA_STD_100', '10B', '0.0021', 'limit', 0.0021, false),
  (51, 'IFRA_STD_100', '11A', '0.000069', 'limit', 0.000069, false),
  (51, 'IFRA_STD_100', '11B', '0.000069', 'limit', 0.000069, false),
  (51, 'IFRA_STD_100', '12', '0.066', 'limit', 0.066, false),
  (51, 'IFRA_STD_101', '1', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_101', '2', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_101', '3', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_101', '4', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_101', '5A', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_101', '5B', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_101', '5C', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_101', '5D', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_101', '6', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_101', '7A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_101', '7B', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_101', '8', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_101', '9', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_101', '10A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_101', '10B', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_101', '11A', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_101', '11B', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_101', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_102', '1', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_102', '2', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_102', '3', '0.032', 'limit', 0.032, false),
  (51, 'IFRA_STD_102', '4', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_102', '5A', '0.095', 'limit', 0.095, false),
  (51, 'IFRA_STD_102', '5B', '0.032', 'limit', 0.032, false),
  (51, 'IFRA_STD_102', '5C', '0.016', 'limit', 0.016, false),
  (51, 'IFRA_STD_102', '5D', '0.0053', 'limit', 0.0053, false),
  (51, 'IFRA_STD_102', '6', '0.095', 'limit', 0.095, false),
  (51, 'IFRA_STD_102', '7A', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_102', '7B', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_102', '8', '0.0053', 'limit', 0.0053, false),
  (51, 'IFRA_STD_102', '9', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_102', '10A', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_102', '10B', '0.22', 'limit', 0.22, false),
  (51, 'IFRA_STD_102', '11A', '0.0053', 'limit', 0.0053, false),
  (51, 'IFRA_STD_102', '11B', '0.0053', 'limit', 0.0053, false),
  (51, 'IFRA_STD_102', '12', '9.5', 'limit', 9.5, false),
  (51, 'IFRA_STD_103', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_103', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_103', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_103', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_103', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_103', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_103', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_103', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_103', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_103', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_103', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_103', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_103', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_103', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_103', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_103', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_103', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_103', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_104', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_105', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_106', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_107', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_108', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_109', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_110', '1', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_110', '2', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_110', '3', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_110', '4', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_110', '5A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_110', '5B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_110', '5C', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_110', '5D', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_110', '6', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_110', '7A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_110', '7B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_110', '8', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_110', '9', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_110', '10A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_110', '10B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_110', '11A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_110', '11B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_110', '12', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_111', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_111', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_111', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_111', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_111', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_111', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_111', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_111', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_111', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_111', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_111', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_111', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_111', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_111', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_111', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_111', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_111', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_111', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_112', '1', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_112', '2', 'See Notebox', 'see_notebox', null, true);
insert into public.ifra_limits (amendment, standard_key, category, raw_value, limit_kind, limit_pct, needs_review) values
  (51, 'IFRA_STD_112', '3', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_112', '4', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_112', '5A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_112', '5B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_112', '5C', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_112', '5D', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_112', '6', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_112', '7A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_112', '7B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_112', '8', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_112', '9', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_112', '10A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_112', '10B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_112', '11A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_112', '11B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_112', '12', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_113', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_113', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_113', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_113', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_113', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_113', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_113', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_113', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_113', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_113', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_113', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_113', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_113', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_113', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_113', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_113', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_113', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_113', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_114', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_115', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_116', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_117', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_118', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_119', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_120', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_121', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_122', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_123', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_124', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_125', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_126', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_127', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_128', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_129', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_130', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_131', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_132', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_133', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_134', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_135', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_136', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_137', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_138', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_139', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_139', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_139', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_139', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_139', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_139', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_139', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_139', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_139', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_139', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_139', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_139', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_139', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_139', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_139', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_139', '11A', null, 'prohibited', 0, false);
insert into public.ifra_limits (amendment, standard_key, category, raw_value, limit_kind, limit_pct, needs_review) values
  (51, 'IFRA_STD_139', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_139', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_140', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_141', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_142', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_143', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_144', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_145', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_146', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_147', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_148', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_149', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_150', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_151', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_152', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_153', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_154', '1', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_154', '2', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_154', '3', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_154', '4', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_154', '5A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_154', '5B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_154', '5C', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_154', '5D', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_154', '6', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_154', '7A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_154', '7B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_154', '8', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_154', '9', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_154', '10A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_154', '10B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_154', '11A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_154', '11B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_154', '12', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_155', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_155', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_155', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_155', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_155', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_155', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_155', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_155', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_155', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_155', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_155', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_155', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_155', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_155', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_155', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_155', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_155', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_155', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_156', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_157', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_158', '1', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_158', '2', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_158', '3', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_158', '4', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_158', '5A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_158', '5B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_158', '5C', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_158', '5D', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_158', '6', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_158', '7A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_158', '7B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_158', '8', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_158', '9', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_158', '10A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_158', '10B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_158', '11A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_158', '11B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_158', '12', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_159', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_159', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_159', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_159', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_159', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_159', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_159', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_159', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_159', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_159', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_159', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_159', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_159', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_159', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_159', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_159', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_159', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_159', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_160', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_161', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_162', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_163', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_164', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_165', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_166', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_167', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_167', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_167', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_167', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_167', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_167', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_167', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_167', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_167', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_167', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_167', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_167', '8', null, 'prohibited', 0, false);
insert into public.ifra_limits (amendment, standard_key, category, raw_value, limit_kind, limit_pct, needs_review) values
  (51, 'IFRA_STD_167', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_167', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_167', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_167', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_167', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_167', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_168', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_169', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_170', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_171', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_172', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_174', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_175', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_176', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_177', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_178', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_179', '1', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_179', '2', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_179', '3', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_179', '4', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_179', '5A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_179', '5B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_179', '5C', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_179', '5D', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_179', '6', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_179', '7A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_179', '7B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_179', '8', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_179', '9', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_179', '10A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_179', '10B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_179', '11A', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_179', '11B', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_179', '12', 'See Notebox', 'see_notebox', null, true),
  (51, 'IFRA_STD_180', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_180', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_180', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_180', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_180', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_180', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_180', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_180', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_180', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_180', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_180', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_180', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_180', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_180', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_180', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_180', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_180', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_180', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_181', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_182', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_183', '1', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_183', '2', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_183', '3', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_183', '4', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_183', '5A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_183', '5B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_183', '5C', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_183', '5D', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_183', '6', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_183', '7A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_183', '7B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_183', '8', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_183', '9', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_183', '10A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_183', '10B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_183', '11A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_183', '11B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_183', '12', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '1', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '2', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '3', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '4', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '5A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '5B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '5C', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '5D', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '6', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '7A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '7B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '8', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '9', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '10A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '10B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '11A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '11B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_184', '12', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '1', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '2', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '3', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '4', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '5A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '5B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '5C', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '5D', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '6', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '7A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '7B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '8', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '9', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '10A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '10B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '11A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '11B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_185', '12', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '1', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '2', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '3', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '4', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '5A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '5B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '5C', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '5D', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '6', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '7A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '7B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '8', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '9', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '10A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '10B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '11A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '11B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_186', '12', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '1', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '2', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '3', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '4', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '5A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '5B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '5C', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '5D', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '6', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '7A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '7B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '8', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '9', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '10A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '10B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '11A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '11B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_187', '12', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '1', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '2', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '3', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '4', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '5A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '5B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '5C', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '5D', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '6', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '7A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '7B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '8', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '9', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '10A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '10B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '11A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '11B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_188', '12', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '1', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '2', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '3', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '4', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '5A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '5B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '5C', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '5D', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '6', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '7A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '7B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '8', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '9', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '10A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '10B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '11A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '11B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_189', '12', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_190', '1', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_190', '2', '0.053', 'limit', 0.053, false),
  (51, 'IFRA_STD_190', '3', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_190', '4', '0.99', 'limit', 0.99, false),
  (51, 'IFRA_STD_190', '5A', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_190', '5B', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_190', '5C', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_190', '5D', '0.071', 'limit', 0.071, false),
  (51, 'IFRA_STD_190', '6', '0.58', 'limit', 0.58, false),
  (51, 'IFRA_STD_190', '7A', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_190', '7B', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_190', '8', '0.071', 'limit', 0.071, false),
  (51, 'IFRA_STD_190', '9', '0.75', 'limit', 0.75, false),
  (51, 'IFRA_STD_190', '10A', '0.75', 'limit', 0.75, false),
  (51, 'IFRA_STD_190', '10B', '3.7', 'limit', 3.7, false),
  (51, 'IFRA_STD_190', '11A', '0.071', 'limit', 0.071, false),
  (51, 'IFRA_STD_190', '11B', '0.071', 'limit', 0.071, false),
  (51, 'IFRA_STD_190', '12', '58', 'limit', 58, false),
  (51, 'IFRA_STD_191', '1', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_191', '2', '0.039', 'limit', 0.039, false),
  (51, 'IFRA_STD_191', '3', '0.78', 'limit', 0.78, false),
  (51, 'IFRA_STD_191', '4', '0.73', 'limit', 0.73, false),
  (51, 'IFRA_STD_191', '5A', '0.19', 'limit', 0.19, false),
  (51, 'IFRA_STD_191', '5B', '0.19', 'limit', 0.19, false),
  (51, 'IFRA_STD_191', '5C', '0.19', 'limit', 0.19, false),
  (51, 'IFRA_STD_191', '5D', '0.062', 'limit', 0.062, false),
  (51, 'IFRA_STD_191', '6', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_191', '7A', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_191', '7B', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_191', '8', '0.062', 'limit', 0.062, false),
  (51, 'IFRA_STD_191', '9', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_191', '10A', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_191', '10B', '5.1', 'limit', 5.1, false),
  (51, 'IFRA_STD_191', '11A', '0.062', 'limit', 0.062, false),
  (51, 'IFRA_STD_191', '11B', '0.062', 'limit', 0.062, false),
  (51, 'IFRA_STD_191', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_192', '1', '0.42', 'limit', 0.42, false),
  (51, 'IFRA_STD_192', '2', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_192', '3', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_192', '4', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_192', '5A', '0.6', 'limit', 0.6, false),
  (51, 'IFRA_STD_192', '5B', '0.6', 'limit', 0.6, false),
  (51, 'IFRA_STD_192', '5C', '0.6', 'limit', 0.6, false),
  (51, 'IFRA_STD_192', '5D', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_192', '6', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_192', '7A', '3', 'limit', 3, false),
  (51, 'IFRA_STD_192', '7B', '3', 'limit', 3, false),
  (51, 'IFRA_STD_192', '8', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_192', '9', '4.6', 'limit', 4.6, false),
  (51, 'IFRA_STD_192', '10A', '4.6', 'limit', 4.6, false),
  (51, 'IFRA_STD_192', '10B', '17', 'limit', 17, false),
  (51, 'IFRA_STD_192', '11A', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_192', '11B', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_192', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_193', '1', '0.048', 'limit', 0.048, false),
  (51, 'IFRA_STD_193', '2', '0.048', 'limit', 0.048, false),
  (51, 'IFRA_STD_193', '3', '0.048', 'limit', 0.048, false),
  (51, 'IFRA_STD_193', '4', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_193', '5A', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_193', '5B', '0.048', 'limit', 0.048, false),
  (51, 'IFRA_STD_193', '5C', '0.048', 'limit', 0.048, false),
  (51, 'IFRA_STD_193', '5D', '0.016', 'limit', 0.016, false),
  (51, 'IFRA_STD_193', '6', '0.048', 'limit', 0.048, false),
  (51, 'IFRA_STD_193', '7A', '0.048', 'limit', 0.048, false),
  (51, 'IFRA_STD_193', '7B', '0.048', 'limit', 0.048, false),
  (51, 'IFRA_STD_193', '8', '0.016', 'limit', 0.016, false),
  (51, 'IFRA_STD_193', '9', '0.53', 'limit', 0.53, false),
  (51, 'IFRA_STD_193', '10A', '0.53', 'limit', 0.53, false),
  (51, 'IFRA_STD_193', '10B', '0.048', 'limit', 0.048, false),
  (51, 'IFRA_STD_193', '11A', '0.016', 'limit', 0.016, false),
  (51, 'IFRA_STD_193', '11B', '0.016', 'limit', 0.016, false),
  (51, 'IFRA_STD_193', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_194', '1', '0.45', 'limit', 0.45, false),
  (51, 'IFRA_STD_194', '2', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_194', '3', '0.4', 'limit', 0.4, false),
  (51, 'IFRA_STD_194', '4', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_194', '5A', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_194', '5B', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_194', '5C', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_194', '5D', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_194', '6', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_194', '7A', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_194', '7B', '0.8', 'limit', 0.8, false),
  (51, 'IFRA_STD_194', '8', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_194', '9', '2', 'limit', 2, false),
  (51, 'IFRA_STD_194', '10A', '2', 'limit', 2, false),
  (51, 'IFRA_STD_194', '10B', '4.8', 'limit', 4.8, false),
  (51, 'IFRA_STD_194', '11A', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_194', '11B', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_194', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_195', '1', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_195', '2', '0.062', 'limit', 0.062, false),
  (51, 'IFRA_STD_195', '3', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_195', '4', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_195', '5A', '0.29', 'limit', 0.29, false),
  (51, 'IFRA_STD_195', '5B', '0.29', 'limit', 0.29, false),
  (51, 'IFRA_STD_195', '5C', '0.29', 'limit', 0.29, false),
  (51, 'IFRA_STD_195', '5D', '0.29', 'limit', 0.29, false),
  (51, 'IFRA_STD_195', '6', '0.68', 'limit', 0.68, false),
  (51, 'IFRA_STD_195', '7A', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_195', '7B', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_195', '8', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_195', '9', '2.3', 'limit', 2.3, false),
  (51, 'IFRA_STD_195', '10A', '8.1', 'limit', 8.1, false),
  (51, 'IFRA_STD_195', '10B', '8.1', 'limit', 8.1, false),
  (51, 'IFRA_STD_195', '11A', '4.5', 'limit', 4.5, false),
  (51, 'IFRA_STD_195', '11B', '4.5', 'limit', 4.5, false),
  (51, 'IFRA_STD_195', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_197', '1', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_197', '2', '0.08', 'limit', 0.08, false),
  (51, 'IFRA_STD_197', '3', '1.6', 'limit', 1.6, false),
  (51, 'IFRA_STD_197', '4', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_197', '5A', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_197', '5B', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_197', '5C', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_197', '5D', '0.38', 'limit', 0.38, false);
insert into public.ifra_limits (amendment, standard_key, category, raw_value, limit_kind, limit_pct, needs_review) values
  (51, 'IFRA_STD_197', '6', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_197', '7A', '3.1', 'limit', 3.1, false),
  (51, 'IFRA_STD_197', '7B', '3.1', 'limit', 3.1, false),
  (51, 'IFRA_STD_197', '8', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_197', '9', '2.9', 'limit', 2.9, false),
  (51, 'IFRA_STD_197', '10A', '11', 'limit', 11, false),
  (51, 'IFRA_STD_197', '10B', '11', 'limit', 11, false),
  (51, 'IFRA_STD_197', '11A', '5.8', 'limit', 5.8, false),
  (51, 'IFRA_STD_197', '11B', '5.8', 'limit', 5.8, false),
  (51, 'IFRA_STD_197', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_198', '1', '0.22', 'limit', 0.22, false),
  (51, 'IFRA_STD_198', '2', '0.066', 'limit', 0.066, false),
  (51, 'IFRA_STD_198', '3', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_198', '4', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_198', '5A', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_198', '5B', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_198', '5C', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_198', '5D', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_198', '6', '0.73', 'limit', 0.73, false),
  (51, 'IFRA_STD_198', '7A', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_198', '7B', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_198', '8', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_198', '9', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_198', '10A', '8.7', 'limit', 8.7, false),
  (51, 'IFRA_STD_198', '10B', '8.7', 'limit', 8.7, false),
  (51, 'IFRA_STD_198', '11A', '4.8', 'limit', 4.8, false),
  (51, 'IFRA_STD_198', '11B', '4.8', 'limit', 4.8, false),
  (51, 'IFRA_STD_198', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_199', '1', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_199', '2', '0.08', 'limit', 0.08, false),
  (51, 'IFRA_STD_199', '3', '1.6', 'limit', 1.6, false),
  (51, 'IFRA_STD_199', '4', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_199', '5A', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_199', '5B', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_199', '5C', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_199', '5D', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_199', '6', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_199', '7A', '3.1', 'limit', 3.1, false),
  (51, 'IFRA_STD_199', '7B', '3.1', 'limit', 3.1, false),
  (51, 'IFRA_STD_199', '8', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_199', '9', '2.9', 'limit', 2.9, false),
  (51, 'IFRA_STD_199', '10A', '11', 'limit', 11, false),
  (51, 'IFRA_STD_199', '10B', '11', 'limit', 11, false),
  (51, 'IFRA_STD_199', '11A', '5.8', 'limit', 5.8, false),
  (51, 'IFRA_STD_199', '11B', '5.8', 'limit', 5.8, false),
  (51, 'IFRA_STD_199', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_201', '1', '0.045', 'limit', 0.045, false),
  (51, 'IFRA_STD_201', '2', '0.014', 'limit', 0.014, false),
  (51, 'IFRA_STD_201', '3', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_201', '4', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_201', '5A', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_201', '5B', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_201', '5C', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_201', '5D', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_201', '6', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_201', '7A', '0.52', 'limit', 0.52, false),
  (51, 'IFRA_STD_201', '7B', '0.52', 'limit', 0.52, false),
  (51, 'IFRA_STD_201', '8', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_201', '9', '0.49', 'limit', 0.49, false),
  (51, 'IFRA_STD_201', '10A', '0.49', 'limit', 0.49, false),
  (51, 'IFRA_STD_201', '10B', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_201', '11A', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_201', '11B', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_201', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_202', '1', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_202', '2', '0.032', 'limit', 0.032, false),
  (51, 'IFRA_STD_202', '3', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_202', '4', '0.6', 'limit', 0.6, false),
  (51, 'IFRA_STD_202', '5A', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_202', '5B', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_202', '5C', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_202', '5D', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_202', '6', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_202', '7A', '0.34', 'limit', 0.34, false),
  (51, 'IFRA_STD_202', '7B', '0.34', 'limit', 0.34, false),
  (51, 'IFRA_STD_202', '8', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_202', '9', '0.57', 'limit', 0.57, false),
  (51, 'IFRA_STD_202', '10A', '0.57', 'limit', 0.57, false),
  (51, 'IFRA_STD_202', '10B', '4.2', 'limit', 4.2, false),
  (51, 'IFRA_STD_202', '11A', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_202', '11B', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_202', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_203', '1', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_203', '2', '0.032', 'limit', 0.032, false),
  (51, 'IFRA_STD_203', '3', '0.65', 'limit', 0.65, false),
  (51, 'IFRA_STD_203', '4', '0.6', 'limit', 0.6, false),
  (51, 'IFRA_STD_203', '5A', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_203', '5B', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_203', '5C', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_203', '5D', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_203', '6', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_203', '7A', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_203', '7B', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_203', '8', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_203', '9', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_203', '10A', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_203', '10B', '4.2', 'limit', 4.2, false),
  (51, 'IFRA_STD_203', '11A', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_203', '11B', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_203', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_204', '1', '0.074', 'limit', 0.074, false),
  (51, 'IFRA_STD_204', '2', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_204', '3', '0.074', 'limit', 0.074, false),
  (51, 'IFRA_STD_204', '4', '3', 'limit', 3, false),
  (51, 'IFRA_STD_204', '5A', '0.76', 'limit', 0.76, false),
  (51, 'IFRA_STD_204', '5B', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_204', '5C', '0.074', 'limit', 0.074, false),
  (51, 'IFRA_STD_204', '5D', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_204', '6', '0.074', 'limit', 0.074, false),
  (51, 'IFRA_STD_204', '7A', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_204', '7B', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_204', '8', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_204', '9', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_204', '10A', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_204', '10B', '4.6', 'limit', 4.6, false),
  (51, 'IFRA_STD_204', '11A', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_204', '11B', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_204', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_205', '1', '0.54', 'limit', 0.54, false),
  (51, 'IFRA_STD_205', '2', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_205', '3', '0.03', 'limit', 0.03, false),
  (51, 'IFRA_STD_205', '4', '3', 'limit', 3, false),
  (51, 'IFRA_STD_205', '5A', '0.76', 'limit', 0.76, false),
  (51, 'IFRA_STD_205', '5B', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_205', '5C', '0.03', 'limit', 0.03, false),
  (51, 'IFRA_STD_205', '5D', '0.01', 'limit', 0.01, false),
  (51, 'IFRA_STD_205', '6', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_205', '7A', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_205', '7B', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_205', '8', '0.01', 'limit', 0.01, false),
  (51, 'IFRA_STD_205', '9', '0.79', 'limit', 0.79, false),
  (51, 'IFRA_STD_205', '10A', '0.79', 'limit', 0.79, false),
  (51, 'IFRA_STD_205', '10B', '4.2', 'limit', 4.2, false),
  (51, 'IFRA_STD_205', '11A', '0.01', 'limit', 0.01, false),
  (51, 'IFRA_STD_205', '11B', '0.01', 'limit', 0.01, false),
  (51, 'IFRA_STD_205', '12', '53', 'limit', 53, false),
  (51, 'IFRA_STD_206', '1', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_206', '2', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_206', '3', '0.026', 'limit', 0.026, false),
  (51, 'IFRA_STD_206', '4', '0.49', 'limit', 0.49, false),
  (51, 'IFRA_STD_206', '5A', '0.33', 'limit', 0.33, false),
  (51, 'IFRA_STD_206', '5B', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_206', '5C', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_206', '5D', '0.017', 'limit', 0.017, false),
  (51, 'IFRA_STD_206', '6', '0.82', 'limit', 0.82, false),
  (51, 'IFRA_STD_206', '7A', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_206', '7B', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_206', '8', '0.017', 'limit', 0.017, false),
  (51, 'IFRA_STD_206', '9', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_206', '10A', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_206', '10B', '2.3', 'limit', 2.3, false),
  (51, 'IFRA_STD_206', '11A', '0.017', 'limit', 0.017, false),
  (51, 'IFRA_STD_206', '11B', '0.017', 'limit', 0.017, false),
  (51, 'IFRA_STD_206', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_207', '1', '0.042', 'limit', 0.042, false),
  (51, 'IFRA_STD_207', '2', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_207', '3', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_207', '4', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_207', '5A', '0.06', 'limit', 0.06, false),
  (51, 'IFRA_STD_207', '5B', '0.06', 'limit', 0.06, false),
  (51, 'IFRA_STD_207', '5C', '0.06', 'limit', 0.06, false),
  (51, 'IFRA_STD_207', '5D', '0.02', 'limit', 0.02, false),
  (51, 'IFRA_STD_207', '6', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_207', '7A', '0.48', 'limit', 0.48, false),
  (51, 'IFRA_STD_207', '7B', '0.48', 'limit', 0.48, false),
  (51, 'IFRA_STD_207', '8', '0.02', 'limit', 0.02, false),
  (51, 'IFRA_STD_207', '9', '0.46', 'limit', 0.46, false),
  (51, 'IFRA_STD_207', '10A', '0.46', 'limit', 0.46, false),
  (51, 'IFRA_STD_207', '10B', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_207', '11A', '0.02', 'limit', 0.02, false),
  (51, 'IFRA_STD_207', '11B', '0.02', 'limit', 0.02, false),
  (51, 'IFRA_STD_207', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_208', '1', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_208', '2', '0.39', 'limit', 0.39, false),
  (51, 'IFRA_STD_208', '3', '0.099', 'limit', 0.099, false),
  (51, 'IFRA_STD_208', '4', '4.7', 'limit', 4.7, false),
  (51, 'IFRA_STD_208', '5A', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_208', '5B', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_208', '5C', '0.2', 'limit', 0.2, false),
  (51, 'IFRA_STD_208', '5D', '0.049', 'limit', 0.049, false),
  (51, 'IFRA_STD_208', '6', '0.0099', 'limit', 0.0099, false),
  (51, 'IFRA_STD_208', '7A', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_208', '7B', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_208', '8', '0.049', 'limit', 0.049, false),
  (51, 'IFRA_STD_208', '9', '0.39', 'limit', 0.39, false),
  (51, 'IFRA_STD_208', '10A', '0.39', 'limit', 0.39, false),
  (51, 'IFRA_STD_208', '10B', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_208', '11A', '0.049', 'limit', 0.049, false),
  (51, 'IFRA_STD_208', '11B', '0.049', 'limit', 0.049, false),
  (51, 'IFRA_STD_208', '12', '28', 'limit', 28, false),
  (51, 'IFRA_STD_209', '1', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_209', '2', '0.39', 'limit', 0.39, false),
  (51, 'IFRA_STD_209', '3', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_209', '4', '6.4', 'limit', 6.4, false),
  (51, 'IFRA_STD_209', '5A', '0.52', 'limit', 0.52, false),
  (51, 'IFRA_STD_209', '5B', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_209', '5C', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_209', '5D', '0.086', 'limit', 0.086, false),
  (51, 'IFRA_STD_209', '6', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_209', '7A', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_209', '7B', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_209', '8', '0.086', 'limit', 0.086, false),
  (51, 'IFRA_STD_209', '9', '4.9', 'limit', 4.9, false),
  (51, 'IFRA_STD_209', '10A', '4.9', 'limit', 4.9, false),
  (51, 'IFRA_STD_209', '10B', '1', 'limit', 1, false),
  (51, 'IFRA_STD_209', '11A', '0.086', 'limit', 0.086, false),
  (51, 'IFRA_STD_209', '11B', '0.086', 'limit', 0.086, false),
  (51, 'IFRA_STD_209', '12', '20', 'limit', 20, false),
  (51, 'IFRA_STD_210', '1', '0.0013', 'limit', 0.0013, false),
  (51, 'IFRA_STD_210', '2', '0.39', 'limit', 0.39, false),
  (51, 'IFRA_STD_210', '3', '0.0013', 'limit', 0.0013, false),
  (51, 'IFRA_STD_210', '4', '0.0013', 'limit', 0.0013, false),
  (51, 'IFRA_STD_210', '5A', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_210', '5B', '0.0013', 'limit', 0.0013, false),
  (51, 'IFRA_STD_210', '5C', '0.0013', 'limit', 0.0013, false),
  (51, 'IFRA_STD_210', '5D', '0.00043', 'limit', 0.00043, false),
  (51, 'IFRA_STD_210', '6', '0.0013', 'limit', 0.0013, false),
  (51, 'IFRA_STD_210', '7A', '0.0013', 'limit', 0.0013, false),
  (51, 'IFRA_STD_210', '7B', '0.0013', 'limit', 0.0013, false),
  (51, 'IFRA_STD_210', '8', '0.00043', 'limit', 0.00043, false),
  (51, 'IFRA_STD_210', '9', '3.1', 'limit', 3.1, false),
  (51, 'IFRA_STD_210', '10A', '3.1', 'limit', 3.1, false),
  (51, 'IFRA_STD_210', '10B', '0.0013', 'limit', 0.0013, false),
  (51, 'IFRA_STD_210', '11A', '0.00043', 'limit', 0.00043, false),
  (51, 'IFRA_STD_210', '11B', '0.00043', 'limit', 0.00043, false),
  (51, 'IFRA_STD_210', '12', '0.0013', 'limit', 0.0013, false),
  (51, 'IFRA_STD_211', '1', '0.031', 'limit', 0.031, false),
  (51, 'IFRA_STD_211', '2', '0.057', 'limit', 0.057, false),
  (51, 'IFRA_STD_211', '3', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_211', '4', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_211', '5A', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_211', '5B', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_211', '5C', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_211', '5D', '0.091', 'limit', 0.091, false),
  (51, 'IFRA_STD_211', '6', '0.031', 'limit', 0.031, false),
  (51, 'IFRA_STD_211', '7A', '0.63', 'limit', 0.63, false),
  (51, 'IFRA_STD_211', '7B', '0.63', 'limit', 0.63, false),
  (51, 'IFRA_STD_211', '8', '0.091', 'limit', 0.091, false),
  (51, 'IFRA_STD_211', '9', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_211', '10A', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_211', '10B', '4', 'limit', 4, false),
  (51, 'IFRA_STD_211', '11A', '0.091', 'limit', 0.091, false),
  (51, 'IFRA_STD_211', '11B', '0.091', 'limit', 0.091, false),
  (51, 'IFRA_STD_211', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_212', '1', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_212', '2', '0.062', 'limit', 0.062, false),
  (51, 'IFRA_STD_212', '3', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_212', '4', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_212', '5A', '0.29', 'limit', 0.29, false),
  (51, 'IFRA_STD_212', '5B', '0.29', 'limit', 0.29, false),
  (51, 'IFRA_STD_212', '5C', '0.29', 'limit', 0.29, false),
  (51, 'IFRA_STD_212', '5D', '0.29', 'limit', 0.29, false),
  (51, 'IFRA_STD_212', '6', '0.68', 'limit', 0.68, false),
  (51, 'IFRA_STD_212', '7A', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_212', '7B', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_212', '8', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_212', '9', '2.3', 'limit', 2.3, false),
  (51, 'IFRA_STD_212', '10A', '8.1', 'limit', 8.1, false),
  (51, 'IFRA_STD_212', '10B', '8.1', 'limit', 8.1, false),
  (51, 'IFRA_STD_212', '11A', '4.5', 'limit', 4.5, false),
  (51, 'IFRA_STD_212', '11B', '4.5', 'limit', 4.5, false),
  (51, 'IFRA_STD_212', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_213', '1', '0.038', 'limit', 0.038, false),
  (51, 'IFRA_STD_213', '2', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_213', '3', '0.23', 'limit', 0.23, false),
  (51, 'IFRA_STD_213', '4', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_213', '5A', '0.054', 'limit', 0.054, false),
  (51, 'IFRA_STD_213', '5B', '0.054', 'limit', 0.054, false),
  (51, 'IFRA_STD_213', '5C', '0.054', 'limit', 0.054, false),
  (51, 'IFRA_STD_213', '5D', '0.054', 'limit', 0.054, false),
  (51, 'IFRA_STD_213', '6', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_213', '7A', '0.44', 'limit', 0.44, false),
  (51, 'IFRA_STD_213', '7B', '0.44', 'limit', 0.44, false),
  (51, 'IFRA_STD_213', '8', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_213', '9', '0.42', 'limit', 0.42, false),
  (51, 'IFRA_STD_213', '10A', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_213', '10B', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_213', '11A', '0.83', 'limit', 0.83, false),
  (51, 'IFRA_STD_213', '11B', '0.83', 'limit', 0.83, false),
  (51, 'IFRA_STD_213', '12', 'No Restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_214', '1', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_214', '2', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_214', '3', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_214', '4', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_214', '5A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_214', '5B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_214', '5C', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_214', '5D', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_214', '6', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_214', '7A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_214', '7B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_214', '8', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_214', '9', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_214', '10A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_214', '10B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_214', '11A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_214', '11B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_214', '12', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '1', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '2', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '3', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '4', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '5A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '5B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '5C', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '5D', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '6', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '7A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '7B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '8', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '9', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '10A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '10B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '11A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '11B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_215', '12', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '1', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '2', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '3', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '4', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '5A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '5B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '5C', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '5D', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '6', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '7A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '7B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '8', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '9', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '10A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '10B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '11A', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '11B', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_216', '12', null, 'not_applicable', null, false),
  (51, 'IFRA_STD_217', '1', '0.68', 'limit', 0.68, false),
  (51, 'IFRA_STD_217', '2', '1', 'limit', 1, false),
  (51, 'IFRA_STD_217', '3', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_217', '4', '1', 'limit', 1, false),
  (51, 'IFRA_STD_217', '5A', '1', 'limit', 1, false),
  (51, 'IFRA_STD_217', '5B', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_217', '5C', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_217', '5D', '0.045', 'limit', 0.045, false),
  (51, 'IFRA_STD_217', '6', '0.82', 'limit', 0.82, false),
  (51, 'IFRA_STD_217', '7A', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_217', '7B', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_217', '8', '0.045', 'limit', 0.045, false),
  (51, 'IFRA_STD_217', '9', '1', 'limit', 1, false),
  (51, 'IFRA_STD_217', '10A', '1', 'limit', 1, false),
  (51, 'IFRA_STD_217', '10B', '1', 'limit', 1, false),
  (51, 'IFRA_STD_217', '11A', '0.045', 'limit', 0.045, false),
  (51, 'IFRA_STD_217', '11B', '0.045', 'limit', 0.045, false),
  (51, 'IFRA_STD_217', '12', '78', 'limit', 78, false),
  (51, 'IFRA_STD_218', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_218', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_218', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_218', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_218', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_218', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_218', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_218', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_218', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_218', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_218', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_218', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_218', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_218', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_218', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_218', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_218', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_218', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_219', '1', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_219', '2', '0.050', 'limit', 0.05, false),
  (51, 'IFRA_STD_219', '3', '0.45', 'limit', 0.45, false),
  (51, 'IFRA_STD_219', '4', '0.94', 'limit', 0.94, false),
  (51, 'IFRA_STD_219', '5A', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_219', '5B', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_219', '5C', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_219', '5D', '0.080', 'limit', 0.08, false),
  (51, 'IFRA_STD_219', '6', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_219', '7A', '0.61', 'limit', 0.61, false),
  (51, 'IFRA_STD_219', '7B', '0.61', 'limit', 0.61, false),
  (51, 'IFRA_STD_219', '8', '0.080', 'limit', 0.08, false),
  (51, 'IFRA_STD_219', '9', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_219', '10A', '3.0', 'limit', 3, false),
  (51, 'IFRA_STD_219', '10B', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_219', '11A', '0.080', 'limit', 0.08, false),
  (51, 'IFRA_STD_219', '11B', '0.080', 'limit', 0.08, false),
  (51, 'IFRA_STD_219', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_220', '1', '0.0014', 'limit', 0.0014, false),
  (51, 'IFRA_STD_220', '2', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_220', '3', '0.0014', 'limit', 0.0014, false),
  (51, 'IFRA_STD_220', '4', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_220', '5A', '0.019', 'limit', 0.019, false),
  (51, 'IFRA_STD_220', '5B', '0.0014', 'limit', 0.0014, false),
  (51, 'IFRA_STD_220', '5C', '0.0014', 'limit', 0.0014, false),
  (51, 'IFRA_STD_220', '5D', '0.00046', 'limit', 0.00046, false),
  (51, 'IFRA_STD_220', '6', '0.0014', 'limit', 0.0014, false),
  (51, 'IFRA_STD_220', '7A', '0.0041', 'limit', 0.0041, false),
  (51, 'IFRA_STD_220', '7B', '0.0041', 'limit', 0.0041, false),
  (51, 'IFRA_STD_220', '8', '0.00046', 'limit', 0.00046, false),
  (51, 'IFRA_STD_220', '9', '0.087', 'limit', 0.087, false),
  (51, 'IFRA_STD_220', '10A', '0.0096', 'limit', 0.0096, false),
  (51, 'IFRA_STD_220', '10B', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_220', '11A', '0.00046', 'limit', 0.00046, false),
  (51, 'IFRA_STD_220', '11B', '0.00046', 'limit', 0.00046, false),
  (51, 'IFRA_STD_220', '12', '25', 'limit', 25, false),
  (51, 'IFRA_STD_221', '1', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_221', '2', '0.071', 'limit', 0.071, false),
  (51, 'IFRA_STD_221', '3', '0.51', 'limit', 0.51, false),
  (51, 'IFRA_STD_221', '4', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_221', '5A', '0.34', 'limit', 0.34, false),
  (51, 'IFRA_STD_221', '5B', '0.34', 'limit', 0.34, false),
  (51, 'IFRA_STD_221', '5C', '0.34', 'limit', 0.34, false),
  (51, 'IFRA_STD_221', '5D', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_221', '6', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_221', '7A', '0.51', 'limit', 0.51, false),
  (51, 'IFRA_STD_221', '7B', '0.51', 'limit', 0.51, false),
  (51, 'IFRA_STD_221', '8', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_221', '9', '2.6', 'limit', 2.6, false),
  (51, 'IFRA_STD_221', '10A', '0.68', 'limit', 0.68, false),
  (51, 'IFRA_STD_221', '10B', '4.7', 'limit', 4.7, false),
  (51, 'IFRA_STD_221', '11A', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_221', '11B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_221', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_222', '1', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_222', '2', '0.071', 'limit', 0.071, false),
  (51, 'IFRA_STD_222', '3', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_222', '4', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_222', '5A', '0.34', 'limit', 0.34, false),
  (51, 'IFRA_STD_222', '5B', '0.34', 'limit', 0.34, false),
  (51, 'IFRA_STD_222', '5C', '0.34', 'limit', 0.34, false),
  (51, 'IFRA_STD_222', '5D', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_222', '6', '0.75', 'limit', 0.75, false),
  (51, 'IFRA_STD_222', '7A', '2.7', 'limit', 2.7, false),
  (51, 'IFRA_STD_222', '7B', '2.7', 'limit', 2.7, false),
  (51, 'IFRA_STD_222', '8', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_222', '9', '2.6', 'limit', 2.6, false),
  (51, 'IFRA_STD_222', '10A', '4.5', 'limit', 4.5, false),
  (51, 'IFRA_STD_222', '10B', '9.3', 'limit', 9.3, false),
  (51, 'IFRA_STD_222', '11A', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_222', '11B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_222', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_223', '1', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_223', '2', '0.032', 'limit', 0.032, false),
  (51, 'IFRA_STD_223', '3', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_223', '4', '0.60', 'limit', 0.6, false),
  (51, 'IFRA_STD_223', '5A', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_223', '5B', '0.034', 'limit', 0.034, false),
  (51, 'IFRA_STD_223', '5C', '0.069', 'limit', 0.069, false),
  (51, 'IFRA_STD_223', '5D', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_223', '6', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_223', '7A', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_223', '7B', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_223', '8', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_223', '9', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_223', '10A', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_223', '10B', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_223', '11A', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_223', '11B', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_223', '12', '80', 'limit', 80, false),
  (51, 'IFRA_STD_224', '1', '0.34', 'limit', 0.34, false),
  (51, 'IFRA_STD_224', '2', '0.10', 'limit', 0.1, false),
  (51, 'IFRA_STD_224', '3', '2.0', 'limit', 2, false),
  (51, 'IFRA_STD_224', '4', '1.9', 'limit', 1.9, false),
  (51, 'IFRA_STD_224', '5A', '0.48', 'limit', 0.48, false),
  (51, 'IFRA_STD_224', '5B', '0.48', 'limit', 0.48, false),
  (51, 'IFRA_STD_224', '5C', '0.48', 'limit', 0.48, false),
  (51, 'IFRA_STD_224', '5D', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_224', '6', '0.45', 'limit', 0.45, false),
  (51, 'IFRA_STD_224', '7A', '3.9', 'limit', 3.9, false),
  (51, 'IFRA_STD_224', '7B', '3.9', 'limit', 3.9, false),
  (51, 'IFRA_STD_224', '8', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_224', '9', '3.7', 'limit', 3.7, false),
  (51, 'IFRA_STD_224', '10A', '10', 'limit', 10, false),
  (51, 'IFRA_STD_224', '10B', '13', 'limit', 13, false),
  (51, 'IFRA_STD_224', '11A', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_224', '11B', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_224', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_225', '1', '0.066', 'limit', 0.066, false),
  (51, 'IFRA_STD_225', '2', '0.027', 'limit', 0.027, false),
  (51, 'IFRA_STD_225', '3', '0.33', 'limit', 0.33, false),
  (51, 'IFRA_STD_225', '4', '0.52', 'limit', 0.52, false),
  (51, 'IFRA_STD_225', '5A', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_225', '5B', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_225', '5C', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_225', '5D', '0.043', 'limit', 0.043, false),
  (51, 'IFRA_STD_225', '6', '0.066', 'limit', 0.066, false),
  (51, 'IFRA_STD_225', '7A', '0.99', 'limit', 0.99, false),
  (51, 'IFRA_STD_225', '7B', '0.99', 'limit', 0.99, false),
  (51, 'IFRA_STD_225', '8', '0.043', 'limit', 0.043, false),
  (51, 'IFRA_STD_225', '9', '1.0', 'limit', 1, false),
  (51, 'IFRA_STD_225', '10A', '0.066', 'limit', 0.066, false),
  (51, 'IFRA_STD_225', '10B', '3.6', 'limit', 3.6, false),
  (51, 'IFRA_STD_225', '11A', '0.043', 'limit', 0.043, false),
  (51, 'IFRA_STD_225', '11B', '0.043', 'limit', 0.043, false),
  (51, 'IFRA_STD_225', '12', '66', 'limit', 66, false),
  (51, 'IFRA_STD_226', '1', '0.045', 'limit', 0.045, false),
  (51, 'IFRA_STD_226', '2', '0.014', 'limit', 0.014, false),
  (51, 'IFRA_STD_226', '3', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_226', '4', '0.25', 'limit', 0.25, false);
insert into public.ifra_limits (amendment, standard_key, category, raw_value, limit_kind, limit_pct, needs_review) values
  (51, 'IFRA_STD_226', '5A', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_226', '5B', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_226', '5C', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_226', '5D', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_226', '6', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_226', '7A', '0.52', 'limit', 0.52, false),
  (51, 'IFRA_STD_226', '7B', '0.52', 'limit', 0.52, false),
  (51, 'IFRA_STD_226', '8', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_226', '9', '0.49', 'limit', 0.49, false),
  (51, 'IFRA_STD_226', '10A', '0.98', 'limit', 0.98, false),
  (51, 'IFRA_STD_226', '10B', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_226', '11A', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_226', '11B', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_226', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_227', '1', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_227', '2', '0.0069', 'limit', 0.0069, false),
  (51, 'IFRA_STD_227', '3', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_227', '4', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_227', '5A', '0.033', 'limit', 0.033, false),
  (51, 'IFRA_STD_227', '5B', '0.033', 'limit', 0.033, false),
  (51, 'IFRA_STD_227', '5C', '0.033', 'limit', 0.033, false),
  (51, 'IFRA_STD_227', '5D', '0.033', 'limit', 0.033, false),
  (51, 'IFRA_STD_227', '6', '0.076', 'limit', 0.076, false),
  (51, 'IFRA_STD_227', '7A', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_227', '7B', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_227', '8', '0.014', 'limit', 0.014, false),
  (51, 'IFRA_STD_227', '9', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_227', '10A', '0.90', 'limit', 0.9, false),
  (51, 'IFRA_STD_227', '10B', '0.90', 'limit', 0.9, false),
  (51, 'IFRA_STD_227', '11A', '0.50', 'limit', 0.5, false),
  (51, 'IFRA_STD_227', '11B', '0.50', 'limit', 0.5, false),
  (51, 'IFRA_STD_227', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_228', '1', '0.0014', 'limit', 0.0014, false),
  (51, 'IFRA_STD_228', '2', '0.00041', 'limit', 0.00041, false),
  (51, 'IFRA_STD_228', '3', '0.0083', 'limit', 0.0083, false),
  (51, 'IFRA_STD_228', '4', '0.0077', 'limit', 0.0077, false),
  (51, 'IFRA_STD_228', '5A', '0.0020', 'limit', 0.002, false),
  (51, 'IFRA_STD_228', '5B', '0.0020', 'limit', 0.002, false),
  (51, 'IFRA_STD_228', '5C', '0.0020', 'limit', 0.002, false),
  (51, 'IFRA_STD_228', '5D', '0.00067', 'limit', 0.00067, false),
  (51, 'IFRA_STD_228', '6', '0.0045', 'limit', 0.0045, false),
  (51, 'IFRA_STD_228', '7A', '0.016', 'limit', 0.016, false),
  (51, 'IFRA_STD_228', '7B', '0.016', 'limit', 0.016, false),
  (51, 'IFRA_STD_228', '8', '0.00067', 'limit', 0.00067, false),
  (51, 'IFRA_STD_228', '9', '0.015', 'limit', 0.015, false),
  (51, 'IFRA_STD_228', '10A', '0.054', 'limit', 0.054, false),
  (51, 'IFRA_STD_228', '10B', '0.054', 'limit', 0.054, false),
  (51, 'IFRA_STD_228', '11A', '0.00067', 'limit', 0.00067, false),
  (51, 'IFRA_STD_228', '11B', '0.00067', 'limit', 0.00067, false),
  (51, 'IFRA_STD_228', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_229', '1', '0.0085', 'limit', 0.0085, false),
  (51, 'IFRA_STD_229', '2', '0.0025', 'limit', 0.0025, false),
  (51, 'IFRA_STD_229', '3', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_229', '4', '0.047', 'limit', 0.047, false),
  (51, 'IFRA_STD_229', '5A', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_229', '5B', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_229', '5C', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_229', '5D', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_229', '6', '0.028', 'limit', 0.028, false),
  (51, 'IFRA_STD_229', '7A', '0.096', 'limit', 0.096, false),
  (51, 'IFRA_STD_229', '7B', '0.096', 'limit', 0.096, false),
  (51, 'IFRA_STD_229', '8', '0.0050', 'limit', 0.005, false),
  (51, 'IFRA_STD_229', '9', '0.092', 'limit', 0.092, false),
  (51, 'IFRA_STD_229', '10A', '0.33', 'limit', 0.33, false),
  (51, 'IFRA_STD_229', '10B', '0.33', 'limit', 0.33, false),
  (51, 'IFRA_STD_229', '11A', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_229', '11B', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_229', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_231', '1', '0.015', 'limit', 0.015, false),
  (51, 'IFRA_STD_231', '2', '0.0044', 'limit', 0.0044, false),
  (51, 'IFRA_STD_231', '3', '0.088', 'limit', 0.088, false),
  (51, 'IFRA_STD_231', '4', '0.082', 'limit', 0.082, false),
  (51, 'IFRA_STD_231', '5A', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_231', '5B', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_231', '5C', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_231', '5D', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_231', '6', '0.048', 'limit', 0.048, false),
  (51, 'IFRA_STD_231', '7A', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_231', '7B', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_231', '8', '0.0086', 'limit', 0.0086, false),
  (51, 'IFRA_STD_231', '9', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_231', '10A', '0.57', 'limit', 0.57, false),
  (51, 'IFRA_STD_231', '10B', '0.57', 'limit', 0.57, false),
  (51, 'IFRA_STD_231', '11A', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_231', '11B', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_231', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_232', '1', '0.0095', 'limit', 0.0095, false),
  (51, 'IFRA_STD_232', '2', '0.10', 'limit', 0.1, false),
  (51, 'IFRA_STD_232', '3', '0.019', 'limit', 0.019, false),
  (51, 'IFRA_STD_232', '4', '1.9', 'limit', 1.9, false),
  (51, 'IFRA_STD_232', '5A', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_232', '5B', '0.029', 'limit', 0.029, false),
  (51, 'IFRA_STD_232', '5C', '0.0095', 'limit', 0.0095, false),
  (51, 'IFRA_STD_232', '5D', '0.0032', 'limit', 0.0032, false),
  (51, 'IFRA_STD_232', '6', '0.0095', 'limit', 0.0095, false),
  (51, 'IFRA_STD_232', '7A', '0.086', 'limit', 0.086, false),
  (51, 'IFRA_STD_232', '7B', '0.086', 'limit', 0.086, false),
  (51, 'IFRA_STD_232', '8', '0.0032', 'limit', 0.0032, false),
  (51, 'IFRA_STD_232', '9', '0.39', 'limit', 0.39, false),
  (51, 'IFRA_STD_232', '10A', '0.39', 'limit', 0.39, false),
  (51, 'IFRA_STD_232', '10B', '2.6', 'limit', 2.6, false),
  (51, 'IFRA_STD_232', '11A', '0.0032', 'limit', 0.0032, false),
  (51, 'IFRA_STD_232', '11B', '0.0032', 'limit', 0.0032, false),
  (51, 'IFRA_STD_232', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_233', '1', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_233', '2', '0.0062', 'limit', 0.0062, false),
  (51, 'IFRA_STD_233', '3', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_233', '4', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_233', '5A', '0.029', 'limit', 0.029, false),
  (51, 'IFRA_STD_233', '5B', '0.029', 'limit', 0.029, false),
  (51, 'IFRA_STD_233', '5C', '0.029', 'limit', 0.029, false),
  (51, 'IFRA_STD_233', '5D', '0.0097', 'limit', 0.0097, false),
  (51, 'IFRA_STD_233', '6', '0.065', 'limit', 0.065, false),
  (51, 'IFRA_STD_233', '7A', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_233', '7B', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_233', '8', '0.0097', 'limit', 0.0097, false),
  (51, 'IFRA_STD_233', '9', '0.23', 'limit', 0.23, false),
  (51, 'IFRA_STD_233', '10A', '0.81', 'limit', 0.81, false),
  (51, 'IFRA_STD_233', '10B', '0.81', 'limit', 0.81, false),
  (51, 'IFRA_STD_233', '11A', '0.0097', 'limit', 0.0097, false),
  (51, 'IFRA_STD_233', '11B', '0.0097', 'limit', 0.0097, false),
  (51, 'IFRA_STD_233', '12', '65', 'limit', 65, false),
  (51, 'IFRA_STD_234', '1', '0.0085', 'limit', 0.0085, false),
  (51, 'IFRA_STD_234', '2', '0.0025', 'limit', 0.0025, false),
  (51, 'IFRA_STD_234', '3', '0.051', 'limit', 0.051, false),
  (51, 'IFRA_STD_234', '4', '0.047', 'limit', 0.047, false),
  (51, 'IFRA_STD_234', '5A', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_234', '5B', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_234', '5C', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_234', '5D', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_234', '6', '0.028', 'limit', 0.028, false),
  (51, 'IFRA_STD_234', '7A', '0.096', 'limit', 0.096, false),
  (51, 'IFRA_STD_234', '7B', '0.096', 'limit', 0.096, false),
  (51, 'IFRA_STD_234', '8', '0.0050', 'limit', 0.005, false),
  (51, 'IFRA_STD_234', '9', '0.092', 'limit', 0.092, false),
  (51, 'IFRA_STD_234', '10A', '0.33', 'limit', 0.33, false),
  (51, 'IFRA_STD_234', '10B', '0.33', 'limit', 0.33, false),
  (51, 'IFRA_STD_234', '11A', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_234', '11B', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_234', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_235', '1', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_235', '2', '0.10', 'limit', 0.1, false),
  (51, 'IFRA_STD_235', '3', '0.37', 'limit', 0.37, false),
  (51, 'IFRA_STD_235', '4', '1.9', 'limit', 1.9, false),
  (51, 'IFRA_STD_235', '5A', '0.48', 'limit', 0.48, false),
  (51, 'IFRA_STD_235', '5B', '0.37', 'limit', 0.37, false),
  (51, 'IFRA_STD_235', '5C', '0.48', 'limit', 0.48, false),
  (51, 'IFRA_STD_235', '5D', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_235', '6', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_235', '7A', '0.55', 'limit', 0.55, false),
  (51, 'IFRA_STD_235', '7B', '0.55', 'limit', 0.55, false),
  (51, 'IFRA_STD_235', '8', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_235', '9', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_235', '10A', '0.73', 'limit', 0.73, false),
  (51, 'IFRA_STD_235', '10B', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_235', '11A', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_235', '11B', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_235', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_236', '1', '0.027', 'limit', 0.027, false),
  (51, 'IFRA_STD_236', '2', '0.0080', 'limit', 0.008, false),
  (51, 'IFRA_STD_236', '3', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_236', '4', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_236', '5A', '0.038', 'limit', 0.038, false),
  (51, 'IFRA_STD_236', '5B', '0.038', 'limit', 0.038, false),
  (51, 'IFRA_STD_236', '5C', '0.038', 'limit', 0.038, false),
  (51, 'IFRA_STD_236', '5D', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_236', '6', '0.061', 'limit', 0.061, false),
  (51, 'IFRA_STD_236', '7A', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_236', '7B', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_236', '8', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_236', '9', '0.29', 'limit', 0.29, false),
  (51, 'IFRA_STD_236', '10A', '0.061', 'limit', 0.061, false),
  (51, 'IFRA_STD_236', '10B', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_236', '11A', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_236', '11B', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_236', '12', '61', 'limit', 61, false),
  (51, 'IFRA_STD_237', '1', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_237', '2', '0.050', 'limit', 0.05, false),
  (51, 'IFRA_STD_237', '3', '1.0', 'limit', 1, false),
  (51, 'IFRA_STD_237', '4', '0.94', 'limit', 0.94, false),
  (51, 'IFRA_STD_237', '5A', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_237', '5B', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_237', '5C', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_237', '5D', '0.080', 'limit', 0.08, false),
  (51, 'IFRA_STD_237', '6', '0.56', 'limit', 0.56, false),
  (51, 'IFRA_STD_237', '7A', '1.9', 'limit', 1.9, false),
  (51, 'IFRA_STD_237', '7B', '1.9', 'limit', 1.9, false),
  (51, 'IFRA_STD_237', '8', '0.080', 'limit', 0.08, false),
  (51, 'IFRA_STD_237', '9', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_237', '10A', '4.1', 'limit', 4.1, false),
  (51, 'IFRA_STD_237', '10B', '6.6', 'limit', 6.6, false),
  (51, 'IFRA_STD_237', '11A', '0.080', 'limit', 0.08, false),
  (51, 'IFRA_STD_237', '11B', '0.080', 'limit', 0.08, false),
  (51, 'IFRA_STD_237', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_238', '1', '0.085', 'limit', 0.085, false),
  (51, 'IFRA_STD_238', '2', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_238', '3', '0.35', 'limit', 0.35, false),
  (51, 'IFRA_STD_238', '4', '0.47', 'limit', 0.47, false),
  (51, 'IFRA_STD_238', '5A', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_238', '5B', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_238', '5C', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_238', '5D', '0.040', 'limit', 0.04, false),
  (51, 'IFRA_STD_238', '6', '0.28', 'limit', 0.28, false),
  (51, 'IFRA_STD_238', '7A', '0.70', 'limit', 0.7, false),
  (51, 'IFRA_STD_238', '7B', '0.70', 'limit', 0.7, false),
  (51, 'IFRA_STD_238', '8', '0.040', 'limit', 0.04, false),
  (51, 'IFRA_STD_238', '9', '0.92', 'limit', 0.92, false),
  (51, 'IFRA_STD_238', '10A', '0.7', 'limit', 0.7, false),
  (51, 'IFRA_STD_238', '10B', '3.3', 'limit', 3.3, false),
  (51, 'IFRA_STD_238', '11A', '0.040', 'limit', 0.04, false),
  (51, 'IFRA_STD_238', '11B', '0.040', 'limit', 0.04, false),
  (51, 'IFRA_STD_238', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_239', '1', '0.063', 'limit', 0.063, false),
  (51, 'IFRA_STD_239', '2', '0.019', 'limit', 0.019, false),
  (51, 'IFRA_STD_239', '3', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_239', '4', '0.35', 'limit', 0.35, false),
  (51, 'IFRA_STD_239', '5A', '0.089', 'limit', 0.089, false),
  (51, 'IFRA_STD_239', '5B', '0.089', 'limit', 0.089, false),
  (51, 'IFRA_STD_239', '5C', '0.089', 'limit', 0.089, false),
  (51, 'IFRA_STD_239', '5D', '0.089', 'limit', 0.089, false),
  (51, 'IFRA_STD_239', '6', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_239', '7A', '0.72', 'limit', 0.72, false),
  (51, 'IFRA_STD_239', '7B', '0.72', 'limit', 0.72, false),
  (51, 'IFRA_STD_239', '8', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_239', '9', '0.69', 'limit', 0.69, false),
  (51, 'IFRA_STD_239', '10A', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_239', '10B', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_239', '11A', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_239', '11B', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_239', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_240', '1', '0.063', 'limit', 0.063, false),
  (51, 'IFRA_STD_240', '2', '0.019', 'limit', 0.019, false),
  (51, 'IFRA_STD_240', '3', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_240', '4', '0.35', 'limit', 0.35, false),
  (51, 'IFRA_STD_240', '5A', '0.089', 'limit', 0.089, false),
  (51, 'IFRA_STD_240', '5B', '0.089', 'limit', 0.089, false),
  (51, 'IFRA_STD_240', '5C', '0.089', 'limit', 0.089, false),
  (51, 'IFRA_STD_240', '5D', '0.089', 'limit', 0.089, false),
  (51, 'IFRA_STD_240', '6', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_240', '7A', '0.72', 'limit', 0.72, false),
  (51, 'IFRA_STD_240', '7B', '0.72', 'limit', 0.72, false),
  (51, 'IFRA_STD_240', '8', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_240', '9', '0.69', 'limit', 0.69, false),
  (51, 'IFRA_STD_240', '10A', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_240', '10B', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_240', '11A', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_240', '11B', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_240', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_241', '1', '0.052', 'limit', 0.052, false),
  (51, 'IFRA_STD_241', '2', '0.027', 'limit', 0.027, false),
  (51, 'IFRA_STD_241', '3', '0.47', 'limit', 0.47, false),
  (51, 'IFRA_STD_241', '4', '0.52', 'limit', 0.52, false),
  (51, 'IFRA_STD_241', '5A', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_241', '5B', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_241', '5C', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_241', '5D', '0.043', 'limit', 0.043, false),
  (51, 'IFRA_STD_241', '6', '0.052', 'limit', 0.052, false),
  (51, 'IFRA_STD_241', '7A', '0.94', 'limit', 0.94, false),
  (51, 'IFRA_STD_241', '7B', '0.94', 'limit', 0.94, false),
  (51, 'IFRA_STD_241', '8', '0.043', 'limit', 0.043, false),
  (51, 'IFRA_STD_241', '9', '1.0', 'limit', 1, false),
  (51, 'IFRA_STD_241', '10A', '2.9', 'limit', 2.9, false),
  (51, 'IFRA_STD_241', '10B', '3.6', 'limit', 3.6, false),
  (51, 'IFRA_STD_241', '11A', '0.043', 'limit', 0.043, false),
  (51, 'IFRA_STD_241', '11B', '0.043', 'limit', 0.043, false),
  (51, 'IFRA_STD_241', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_242', '1', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_242', '2', '0.034', 'limit', 0.034, false),
  (51, 'IFRA_STD_242', '3', '0.69', 'limit', 0.69, false),
  (51, 'IFRA_STD_242', '4', '0.64', 'limit', 0.64, false),
  (51, 'IFRA_STD_242', '5A', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_242', '5B', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_242', '5C', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_242', '5D', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_242', '6', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_242', '7A', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_242', '7B', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_242', '8', '0.068', 'limit', 0.068, false),
  (51, 'IFRA_STD_242', '9', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_242', '10A', '4.5', 'limit', 4.5, false),
  (51, 'IFRA_STD_242', '10B', '4.5', 'limit', 4.5, false),
  (51, 'IFRA_STD_242', '11A', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_242', '11B', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_242', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_243', '1', '0.042', 'limit', 0.042, false),
  (51, 'IFRA_STD_243', '2', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_243', '3', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_243', '4', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_243', '5A', '0.060', 'limit', 0.06, false),
  (51, 'IFRA_STD_243', '5B', '0.060', 'limit', 0.06, false),
  (51, 'IFRA_STD_243', '5C', '0.060', 'limit', 0.06, false),
  (51, 'IFRA_STD_243', '5D', '0.060', 'limit', 0.06, false),
  (51, 'IFRA_STD_243', '6', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_243', '7A', '0.48', 'limit', 0.48, false),
  (51, 'IFRA_STD_243', '7B', '0.48', 'limit', 0.48, false),
  (51, 'IFRA_STD_243', '8', '0.025', 'limit', 0.025, false),
  (51, 'IFRA_STD_243', '9', '0.46', 'limit', 0.46, false),
  (51, 'IFRA_STD_243', '10A', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_243', '10B', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_243', '11A', '0.92', 'limit', 0.92, false),
  (51, 'IFRA_STD_243', '11B', '0.92', 'limit', 0.92, false),
  (51, 'IFRA_STD_243', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_244', '1', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_244', '2', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_244', '3', '0.46', 'limit', 0.46, false),
  (51, 'IFRA_STD_244', '4', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_244', '5A', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_244', '5B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_244', '5C', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_244', '5D', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_244', '6', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_244', '7A', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_244', '7B', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_244', '8', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_244', '9', '0.84', 'limit', 0.84, false),
  (51, 'IFRA_STD_244', '10A', '3.0', 'limit', 3, false),
  (51, 'IFRA_STD_244', '10B', '3.0', 'limit', 3, false),
  (51, 'IFRA_STD_244', '11A', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_244', '11B', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_244', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_245', '1', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_245', '2', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_245', '3', '0.46', 'limit', 0.46, false),
  (51, 'IFRA_STD_245', '4', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_245', '5A', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_245', '5B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_245', '5C', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_245', '5D', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_245', '6', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_245', '7A', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_245', '7B', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_245', '8', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_245', '9', '0.84', 'limit', 0.84, false),
  (51, 'IFRA_STD_245', '10A', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_245', '10B', '3.0', 'limit', 3, false),
  (51, 'IFRA_STD_245', '11A', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_245', '11B', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_245', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_246', '1', '0.10', 'limit', 0.1, false),
  (51, 'IFRA_STD_246', '2', '0.030', 'limit', 0.03, false),
  (51, 'IFRA_STD_246', '3', '0.60', 'limit', 0.6, false),
  (51, 'IFRA_STD_246', '4', '0.56', 'limit', 0.56, false),
  (51, 'IFRA_STD_246', '5A', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_246', '5B', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_246', '5C', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_246', '5D', '0.047', 'limit', 0.047, false),
  (51, 'IFRA_STD_246', '6', '0.33', 'limit', 0.33, false),
  (51, 'IFRA_STD_246', '7A', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_246', '7B', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_246', '8', '0.047', 'limit', 0.047, false),
  (51, 'IFRA_STD_246', '9', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_246', '10A', '3.9', 'limit', 3.9, false),
  (51, 'IFRA_STD_246', '10B', '3.9', 'limit', 3.9, false),
  (51, 'IFRA_STD_246', '11A', '0.047', 'limit', 0.047, false),
  (51, 'IFRA_STD_246', '11B', '0.047', 'limit', 0.047, false),
  (51, 'IFRA_STD_246', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_247', '1', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_247', '2', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_247', '3', '0.46', 'limit', 0.46, false),
  (51, 'IFRA_STD_247', '4', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_247', '5A', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_247', '5B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_247', '5C', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_247', '5D', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_247', '6', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_247', '7A', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_247', '7B', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_247', '8', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_247', '9', '0.84', 'limit', 0.84, false),
  (51, 'IFRA_STD_247', '10A', '3.0', 'limit', 3, false),
  (51, 'IFRA_STD_247', '10B', '3.0', 'limit', 3, false),
  (51, 'IFRA_STD_247', '11A', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_247', '11B', '0.037', 'limit', 0.037, false),
  (51, 'IFRA_STD_247', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_248', '1', '0.49', 'limit', 0.49, false),
  (51, 'IFRA_STD_248', '2', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_248', '3', '2.0', 'limit', 2, false),
  (51, 'IFRA_STD_248', '4', '2.7', 'limit', 2.7, false),
  (51, 'IFRA_STD_248', '5A', '0.70', 'limit', 0.7, false),
  (51, 'IFRA_STD_248', '5B', '0.70', 'limit', 0.7, false),
  (51, 'IFRA_STD_248', '5C', '0.70', 'limit', 0.7, false),
  (51, 'IFRA_STD_248', '5D', '0.23', 'limit', 0.23, false),
  (51, 'IFRA_STD_248', '6', '0.82', 'limit', 0.82, false),
  (51, 'IFRA_STD_248', '7A', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_248', '7B', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_248', '8', '0.23', 'limit', 0.23, false),
  (51, 'IFRA_STD_248', '9', '5.4', 'limit', 5.4, false),
  (51, 'IFRA_STD_248', '10A', '0.41', 'limit', 0.41, false),
  (51, 'IFRA_STD_248', '10B', '16', 'limit', 16, false),
  (51, 'IFRA_STD_248', '11A', '0.23', 'limit', 0.23, false),
  (51, 'IFRA_STD_248', '11B', '0.23', 'limit', 0.23, false),
  (51, 'IFRA_STD_248', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_249', '1', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_249', '2', '0.23', 'limit', 0.23, false),
  (51, 'IFRA_STD_249', '3', '4.4', 'limit', 4.4, false),
  (51, 'IFRA_STD_249', '4', '4.3', 'limit', 4.3, false),
  (51, 'IFRA_STD_249', '5A', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_249', '5B', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_249', '5C', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_249', '5D', '0.37', 'limit', 0.37, false),
  (51, 'IFRA_STD_249', '6', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_249', '7A', '7.4', 'limit', 7.4, false),
  (51, 'IFRA_STD_249', '7B', '7.4', 'limit', 7.4, false),
  (51, 'IFRA_STD_249', '8', '0.37', 'limit', 0.37, false),
  (51, 'IFRA_STD_249', '9', '8.4', 'limit', 8.4, false),
  (51, 'IFRA_STD_249', '10A', '0.98', 'limit', 0.98, false),
  (51, 'IFRA_STD_249', '10B', '13', 'limit', 13, false),
  (51, 'IFRA_STD_249', '11A', '0.37', 'limit', 0.37, false),
  (51, 'IFRA_STD_249', '11B', '0.37', 'limit', 0.37, false),
  (51, 'IFRA_STD_249', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_250', '1', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_250', '2', '0.23', 'limit', 0.23, false),
  (51, 'IFRA_STD_250', '3', '2.2', 'limit', 2.2, false),
  (51, 'IFRA_STD_250', '4', '4.3', 'limit', 4.3, false),
  (51, 'IFRA_STD_250', '5A', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_250', '5B', '1.1', 'limit', 1.1, false),
  (51, 'IFRA_STD_250', '5C', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_250', '5D', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_250', '6', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_250', '7A', '3.5', 'limit', 3.5, false),
  (51, 'IFRA_STD_250', '7B', '3.5', 'limit', 3.5, false),
  (51, 'IFRA_STD_250', '8', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_250', '9', '8.4', 'limit', 8.4, false),
  (51, 'IFRA_STD_250', '10A', '7.3', 'limit', 7.3, false),
  (51, 'IFRA_STD_250', '10B', '30', 'limit', 30, false),
  (51, 'IFRA_STD_250', '11A', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_250', '11B', '0.14', 'limit', 0.14, false),
  (51, 'IFRA_STD_250', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_251', '1', '0.096', 'limit', 0.096, false),
  (51, 'IFRA_STD_251', '2', '0.071', 'limit', 0.071, false),
  (51, 'IFRA_STD_251', '3', '1.4', 'limit', 1.4, false),
  (51, 'IFRA_STD_251', '4', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_251', '5A', '0.34', 'limit', 0.34, false),
  (51, 'IFRA_STD_251', '5B', '0.34', 'limit', 0.34, false),
  (51, 'IFRA_STD_251', '5C', '0.096', 'limit', 0.096, false),
  (51, 'IFRA_STD_251', '5D', '0.032', 'limit', 0.032, false),
  (51, 'IFRA_STD_251', '6', '0.096', 'limit', 0.096, false),
  (51, 'IFRA_STD_251', '7A', '2.7', 'limit', 2.7, false),
  (51, 'IFRA_STD_251', '7B', '2.7', 'limit', 2.7, false),
  (51, 'IFRA_STD_251', '8', '0.032', 'limit', 0.032, false),
  (51, 'IFRA_STD_251', '9', '2.6', 'limit', 2.6, false),
  (51, 'IFRA_STD_251', '10A', '3.4', 'limit', 3.4, false),
  (51, 'IFRA_STD_251', '10B', '9.3', 'limit', 9.3, false),
  (51, 'IFRA_STD_251', '11A', '0.032', 'limit', 0.032, false),
  (51, 'IFRA_STD_251', '11B', '0.032', 'limit', 0.032, false),
  (51, 'IFRA_STD_251', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_252', '1', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_252', '2', '0.080', 'limit', 0.08, false),
  (51, 'IFRA_STD_252', '3', '1.6', 'limit', 1.6, false),
  (51, 'IFRA_STD_252', '4', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_252', '5A', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_252', '5B', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_252', '5C', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_252', '5D', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_252', '6', '0.49', 'limit', 0.49, false),
  (51, 'IFRA_STD_252', '7A', '3.1', 'limit', 3.1, false),
  (51, 'IFRA_STD_252', '7B', '3.1', 'limit', 3.1, false),
  (51, 'IFRA_STD_252', '8', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_252', '9', '2.9', 'limit', 2.9, false),
  (51, 'IFRA_STD_252', '10A', '11', 'limit', 11, false),
  (51, 'IFRA_STD_252', '10B', '11', 'limit', 11, false),
  (51, 'IFRA_STD_252', '11A', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_252', '11B', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_252', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_253', '1', '0.22', 'limit', 0.22, false),
  (51, 'IFRA_STD_253', '2', '0.066', 'limit', 0.066, false),
  (51, 'IFRA_STD_253', '3', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_253', '4', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_253', '5A', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_253', '5B', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_253', '5C', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_253', '5D', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_253', '6', '0.73', 'limit', 0.73, false),
  (51, 'IFRA_STD_253', '7A', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_253', '7B', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_253', '8', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_253', '9', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_253', '10A', '0.91', 'limit', 0.91, false),
  (51, 'IFRA_STD_253', '10B', '8.7', 'limit', 8.7, false),
  (51, 'IFRA_STD_253', '11A', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_253', '11B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_253', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_254', '1', '0.22', 'limit', 0.22, false),
  (51, 'IFRA_STD_254', '2', '0.066', 'limit', 0.066, false),
  (51, 'IFRA_STD_254', '3', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_254', '4', '1.2', 'limit', 1.2, false),
  (51, 'IFRA_STD_254', '5A', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_254', '5B', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_254', '5C', '0.32', 'limit', 0.32, false),
  (51, 'IFRA_STD_254', '5D', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_254', '6', '0.73', 'limit', 0.73, false),
  (51, 'IFRA_STD_254', '7A', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_254', '7B', '2.5', 'limit', 2.5, false),
  (51, 'IFRA_STD_254', '8', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_254', '9', '2.4', 'limit', 2.4, false),
  (51, 'IFRA_STD_254', '10A', '0.55', 'limit', 0.55, false),
  (51, 'IFRA_STD_254', '10B', '0.55', 'limit', 0.55, false),
  (51, 'IFRA_STD_254', '11A', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_254', '11B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_254', '12', 'No restriction', 'no_restriction', null, false);
insert into public.ifra_limits (amendment, standard_key, category, raw_value, limit_kind, limit_pct, needs_review) values
  (51, 'IFRA_STD_255', '1', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_255', '2', '0.053', 'limit', 0.053, false),
  (51, 'IFRA_STD_255', '3', '0.061', 'limit', 0.061, false),
  (51, 'IFRA_STD_255', '4', '0.99', 'limit', 0.99, false),
  (51, 'IFRA_STD_255', '5A', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_255', '5B', '0.061', 'limit', 0.061, false),
  (51, 'IFRA_STD_255', '5C', '0.082', 'limit', 0.082, false),
  (51, 'IFRA_STD_255', '5D', '0.020', 'limit', 0.02, false),
  (51, 'IFRA_STD_255', '6', '0.020', 'limit', 0.02, false),
  (51, 'IFRA_STD_255', '7A', '0.061', 'limit', 0.061, false),
  (51, 'IFRA_STD_255', '7B', '0.061', 'limit', 0.061, false),
  (51, 'IFRA_STD_255', '8', '0.020', 'limit', 0.02, false),
  (51, 'IFRA_STD_255', '9', '0.20', 'limit', 0.2, false),
  (51, 'IFRA_STD_255', '10A', '0.061', 'limit', 0.061, false),
  (51, 'IFRA_STD_255', '10B', '0.45', 'limit', 0.45, false),
  (51, 'IFRA_STD_255', '11A', '0.020', 'limit', 0.02, false),
  (51, 'IFRA_STD_255', '11B', '0.020', 'limit', 0.02, false),
  (51, 'IFRA_STD_255', '12', '16', 'limit', 16, false),
  (51, 'IFRA_STD_256', '1', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_256', '2', '0.050', 'limit', 0.05, false),
  (51, 'IFRA_STD_256', '3', '0.85', 'limit', 0.85, false),
  (51, 'IFRA_STD_256', '4', '0.94', 'limit', 0.94, false),
  (51, 'IFRA_STD_256', '5A', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_256', '5B', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_256', '5C', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_256', '5D', '0.080', 'limit', 0.08, false),
  (51, 'IFRA_STD_256', '6', '0.17', 'limit', 0.17, false),
  (51, 'IFRA_STD_256', '7A', '0.85', 'limit', 0.85, false),
  (51, 'IFRA_STD_256', '7B', '0.85', 'limit', 0.85, false),
  (51, 'IFRA_STD_256', '8', '0.080', 'limit', 0.08, false),
  (51, 'IFRA_STD_256', '9', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_256', '10A', '2.0', 'limit', 2, false),
  (51, 'IFRA_STD_256', '10B', '6.6', 'limit', 6.6, false),
  (51, 'IFRA_STD_256', '11A', '0.080', 'limit', 0.08, false),
  (51, 'IFRA_STD_256', '11B', '0.080', 'limit', 0.08, false),
  (51, 'IFRA_STD_256', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_257', '1', '0.065', 'limit', 0.065, false),
  (51, 'IFRA_STD_257', '2', '0.080', 'limit', 0.08, false),
  (51, 'IFRA_STD_257', '3', '0.065', 'limit', 0.065, false),
  (51, 'IFRA_STD_257', '4', '1.5', 'limit', 1.5, false),
  (51, 'IFRA_STD_257', '5A', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_257', '5B', '0.065', 'limit', 0.065, false),
  (51, 'IFRA_STD_257', '5C', '0.065', 'limit', 0.065, false),
  (51, 'IFRA_STD_257', '5D', '0.022', 'limit', 0.022, false),
  (51, 'IFRA_STD_257', '6', '0.065', 'limit', 0.065, false),
  (51, 'IFRA_STD_257', '7A', '0.065', 'limit', 0.065, false),
  (51, 'IFRA_STD_257', '7B', '0.065', 'limit', 0.065, false),
  (51, 'IFRA_STD_257', '8', '0.022', 'limit', 0.022, false),
  (51, 'IFRA_STD_257', '9', '2.9', 'limit', 2.9, false),
  (51, 'IFRA_STD_257', '10A', '5.8', 'limit', 5.8, false),
  (51, 'IFRA_STD_257', '10B', '11', 'limit', 11, false),
  (51, 'IFRA_STD_257', '11A', '0.022', 'limit', 0.022, false),
  (51, 'IFRA_STD_257', '11B', '0.022', 'limit', 0.022, false),
  (51, 'IFRA_STD_257', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_258', '1', '0.077', 'limit', 0.077, false),
  (51, 'IFRA_STD_258', '2', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_258', '3', '0.46', 'limit', 0.46, false),
  (51, 'IFRA_STD_258', '4', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_258', '5A', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_258', '5B', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_258', '5C', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_258', '5D', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_258', '6', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_258', '7A', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_258', '7B', '0.88', 'limit', 0.88, false),
  (51, 'IFRA_STD_258', '8', '0.045', 'limit', 0.045, false),
  (51, 'IFRA_STD_258', '9', '0.84', 'limit', 0.84, false),
  (51, 'IFRA_STD_258', '10A', '3.0', 'limit', 3, false),
  (51, 'IFRA_STD_258', '10B', '3.0', 'limit', 3, false),
  (51, 'IFRA_STD_258', '11A', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_258', '11B', '1.7', 'limit', 1.7, false),
  (51, 'IFRA_STD_258', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_259', '1', '0.38', 'limit', 0.38, false),
  (51, 'IFRA_STD_259', '2', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_259', '3', '2.3', 'limit', 2.3, false),
  (51, 'IFRA_STD_259', '4', '2.1', 'limit', 2.1, false),
  (51, 'IFRA_STD_259', '5A', '0.54', 'limit', 0.54, false),
  (51, 'IFRA_STD_259', '5B', '0.54', 'limit', 0.54, false),
  (51, 'IFRA_STD_259', '5C', '0.54', 'limit', 0.54, false),
  (51, 'IFRA_STD_259', '5D', '0.54', 'limit', 0.54, false),
  (51, 'IFRA_STD_259', '6', '1.3', 'limit', 1.3, false),
  (51, 'IFRA_STD_259', '7A', '4.4', 'limit', 4.4, false),
  (51, 'IFRA_STD_259', '7B', '4.4', 'limit', 4.4, false),
  (51, 'IFRA_STD_259', '8', '0.23', 'limit', 0.23, false),
  (51, 'IFRA_STD_259', '9', '4.2', 'limit', 4.2, false),
  (51, 'IFRA_STD_259', '10A', '15', 'limit', 15, false),
  (51, 'IFRA_STD_259', '10B', '15', 'limit', 15, false),
  (51, 'IFRA_STD_259', '11A', '8.3', 'limit', 8.3, false),
  (51, 'IFRA_STD_259', '11B', '8.3', 'limit', 8.3, false),
  (51, 'IFRA_STD_259', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_260', '1', '0.0050', 'limit', 0.005, false),
  (51, 'IFRA_STD_260', '2', '0.0050', 'limit', 0.005, false),
  (51, 'IFRA_STD_260', '3', '0.0050', 'limit', 0.005, false),
  (51, 'IFRA_STD_260', '4', '0.0050', 'limit', 0.005, false),
  (51, 'IFRA_STD_260', '5A', '0.0050', 'limit', 0.005, false),
  (51, 'IFRA_STD_260', '5B', '0.0050', 'limit', 0.005, false),
  (51, 'IFRA_STD_260', '5C', '0.0050', 'limit', 0.005, false),
  (51, 'IFRA_STD_260', '5D', '0.0017', 'limit', 0.0017, false),
  (51, 'IFRA_STD_260', '6', '0.0050', 'limit', 0.005, false),
  (51, 'IFRA_STD_260', '7A', '0.0050', 'limit', 0.005, false),
  (51, 'IFRA_STD_260', '7B', '0.0050', 'limit', 0.005, false),
  (51, 'IFRA_STD_260', '8', '0.0017', 'limit', 0.0017, false),
  (51, 'IFRA_STD_260', '9', '0.0050', 'limit', 0.005, false),
  (51, 'IFRA_STD_260', '10A', '0.0050', 'limit', 0.005, false),
  (51, 'IFRA_STD_260', '10B', '0.0050', 'limit', 0.005, false),
  (51, 'IFRA_STD_260', '11A', '0.0017', 'limit', 0.0017, false),
  (51, 'IFRA_STD_260', '11B', '0.0017', 'limit', 0.0017, false),
  (51, 'IFRA_STD_260', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_261', '1', '0.045', 'limit', 0.045, false),
  (51, 'IFRA_STD_261', '2', '0.014', 'limit', 0.014, false),
  (51, 'IFRA_STD_261', '3', '0.27', 'limit', 0.27, false),
  (51, 'IFRA_STD_261', '4', '0.25', 'limit', 0.25, false),
  (51, 'IFRA_STD_261', '5A', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_261', '5B', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_261', '5C', '0.064', 'limit', 0.064, false),
  (51, 'IFRA_STD_261', '5D', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_261', '6', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_261', '7A', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_261', '7B', '0.24', 'limit', 0.24, false),
  (51, 'IFRA_STD_261', '8', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_261', '9', '0.49', 'limit', 0.49, false),
  (51, 'IFRA_STD_261', '10A', '0.48', 'limit', 0.48, false),
  (51, 'IFRA_STD_261', '10B', '1.8', 'limit', 1.8, false),
  (51, 'IFRA_STD_261', '11A', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_261', '11B', '0.021', 'limit', 0.021, false),
  (51, 'IFRA_STD_261', '12', 'No restriction', 'no_restriction', null, false),
  (51, 'IFRA_STD_262', '1', '0.0019', 'limit', 0.0019, false),
  (51, 'IFRA_STD_262', '2', '0.0019', 'limit', 0.0019, false),
  (51, 'IFRA_STD_262', '3', '0.0019', 'limit', 0.0019, false),
  (51, 'IFRA_STD_262', '4', '1.9', 'limit', 1.9, false),
  (51, 'IFRA_STD_262', '5A', '0.079', 'limit', 0.079, false),
  (51, 'IFRA_STD_262', '5B', '0.0019', 'limit', 0.0019, false),
  (51, 'IFRA_STD_262', '5C', '0.019', 'limit', 0.019, false),
  (51, 'IFRA_STD_262', '5D', '0.00064', 'limit', 0.00064, false),
  (51, 'IFRA_STD_262', '6', '0.027', 'limit', 0.027, false),
  (51, 'IFRA_STD_262', '7A', '0.0019', 'limit', 0.0019, false),
  (51, 'IFRA_STD_262', '7B', '0.0019', 'limit', 0.0019, false),
  (51, 'IFRA_STD_262', '8', '0.00064', 'limit', 0.00064, false),
  (51, 'IFRA_STD_262', '9', '0.054', 'limit', 0.054, false),
  (51, 'IFRA_STD_262', '10A', '0.0019', 'limit', 0.0019, false),
  (51, 'IFRA_STD_262', '10B', '0.0019', 'limit', 0.0019, false),
  (51, 'IFRA_STD_262', '11A', '0.00064', 'limit', 0.00064, false),
  (51, 'IFRA_STD_262', '11B', '0.00064', 'limit', 0.00064, false),
  (51, 'IFRA_STD_262', '12', '0.0019', 'limit', 0.0019, false),
  (51, 'IFRA_STD_263', '1', '0.027', 'limit', 0.027, false),
  (51, 'IFRA_STD_263', '2', '0.0080', 'limit', 0.008, false),
  (51, 'IFRA_STD_263', '3', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_263', '4', '0.15', 'limit', 0.15, false),
  (51, 'IFRA_STD_263', '5A', '0.038', 'limit', 0.038, false),
  (51, 'IFRA_STD_263', '5B', '0.038', 'limit', 0.038, false),
  (51, 'IFRA_STD_263', '5C', '0.038', 'limit', 0.038, false),
  (51, 'IFRA_STD_263', '5D', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_263', '6', '0.088', 'limit', 0.088, false),
  (51, 'IFRA_STD_263', '7A', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_263', '7B', '0.26', 'limit', 0.26, false),
  (51, 'IFRA_STD_263', '8', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_263', '9', '0.29', 'limit', 0.29, false),
  (51, 'IFRA_STD_263', '10A', '0.13', 'limit', 0.13, false),
  (51, 'IFRA_STD_263', '10B', '0.52', 'limit', 0.52, false),
  (51, 'IFRA_STD_263', '11A', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_263', '11B', '0.013', 'limit', 0.013, false),
  (51, 'IFRA_STD_263', '12', '58', 'limit', 58, false),
  (51, 'IFRA_STD_264', '1', '0.000010', 'limit', 0.00001, false),
  (51, 'IFRA_STD_264', '2', '0.000010', 'limit', 0.00001, false),
  (51, 'IFRA_STD_264', '3', '0.000010', 'limit', 0.00001, false),
  (51, 'IFRA_STD_264', '4', '0.000010', 'limit', 0.00001, false),
  (51, 'IFRA_STD_264', '5A', '0.042', 'limit', 0.042, false),
  (51, 'IFRA_STD_264', '5B', '0.000010', 'limit', 0.00001, false),
  (51, 'IFRA_STD_264', '5C', '0.000010', 'limit', 0.00001, false),
  (51, 'IFRA_STD_264', '5D', '0.0000033', 'limit', 0.0000033, false),
  (51, 'IFRA_STD_264', '6', '0.000010', 'limit', 0.00001, false),
  (51, 'IFRA_STD_264', '7A', '0.000010', 'limit', 0.00001, false),
  (51, 'IFRA_STD_264', '7B', '0.000010', 'limit', 0.00001, false),
  (51, 'IFRA_STD_264', '8', '0.0000033', 'limit', 0.0000033, false),
  (51, 'IFRA_STD_264', '9', '0.0042', 'limit', 0.0042, false),
  (51, 'IFRA_STD_264', '10A', '0.000010', 'limit', 0.00001, false),
  (51, 'IFRA_STD_264', '10B', '0.61', 'limit', 0.61, false),
  (51, 'IFRA_STD_264', '11A', '0.0000033', 'limit', 0.0000033, false),
  (51, 'IFRA_STD_264', '11B', '0.0000033', 'limit', 0.0000033, false),
  (51, 'IFRA_STD_264', '12', '0.1', 'limit', 0.1, false),
  (51, 'IFRA_STD_265', '1', '0.000010', 'limit', 0.00001, false),
  (51, 'IFRA_STD_265', '2', '0.023', 'limit', 0.023, false),
  (51, 'IFRA_STD_265', '3', '0.0015', 'limit', 0.0015, false),
  (51, 'IFRA_STD_265', '4', '0.43', 'limit', 0.43, false),
  (51, 'IFRA_STD_265', '5A', '0.018', 'limit', 0.018, false),
  (51, 'IFRA_STD_265', '5B', '0.0046', 'limit', 0.0046, false),
  (51, 'IFRA_STD_265', '5C', '0.000010', 'limit', 0.00001, false),
  (51, 'IFRA_STD_265', '5D', '0.0000033', 'limit', 0.0000033, false),
  (51, 'IFRA_STD_265', '6', '0.000010', 'limit', 0.00001, false),
  (51, 'IFRA_STD_265', '7A', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_265', '7B', '0.012', 'limit', 0.012, false),
  (51, 'IFRA_STD_265', '8', '0.0000033', 'limit', 0.0000033, false),
  (51, 'IFRA_STD_265', '9', '0.026', 'limit', 0.026, false),
  (51, 'IFRA_STD_265', '10A', '0.0092', 'limit', 0.0092, false),
  (51, 'IFRA_STD_265', '10B', '0.16', 'limit', 0.16, false),
  (51, 'IFRA_STD_265', '11A', '0.0000033', 'limit', 0.0000033, false),
  (51, 'IFRA_STD_265', '11B', '0.0000033', 'limit', 0.0000033, false),
  (51, 'IFRA_STD_265', '12', '0.18', 'limit', 0.18, false),
  (51, 'IFRA_STD_266', '1', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_266', '2', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_266', '3', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_266', '4', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_266', '5A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_266', '5B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_266', '5C', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_266', '5D', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_266', '6', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_266', '7A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_266', '7B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_266', '8', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_266', '9', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_266', '10A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_266', '10B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_266', '11A', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_266', '11B', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_266', '12', null, 'prohibited', 0, false),
  (51, 'IFRA_STD_267', '1', '0.019', 'limit', 0.019, false),
  (51, 'IFRA_STD_267', '2', '0.0057', 'limit', 0.0057, false),
  (51, 'IFRA_STD_267', '3', '0.12', 'limit', 0.12, false),
  (51, 'IFRA_STD_267', '4', '0.11', 'limit', 0.11, false),
  (51, 'IFRA_STD_267', '5A', '0.027', 'limit', 0.027, false),
  (51, 'IFRA_STD_267', '5B', '0.027', 'limit', 0.027, false),
  (51, 'IFRA_STD_267', '5C', '0.027', 'limit', 0.027, false),
  (51, 'IFRA_STD_267', '5D', '0.027', 'limit', 0.027, false),
  (51, 'IFRA_STD_267', '6', '0.063', 'limit', 0.063, false),
  (51, 'IFRA_STD_267', '7A', '0.22', 'limit', 0.22, false),
  (51, 'IFRA_STD_267', '7B', '0.22', 'limit', 0.22, false),
  (51, 'IFRA_STD_267', '8', '0.011', 'limit', 0.011, false),
  (51, 'IFRA_STD_267', '9', '0.21', 'limit', 0.21, false),
  (51, 'IFRA_STD_267', '10A', '0.75', 'limit', 0.75, false),
  (51, 'IFRA_STD_267', '10B', '0.75', 'limit', 0.75, false),
  (51, 'IFRA_STD_267', '11A', '0.42', 'limit', 0.42, false),
  (51, 'IFRA_STD_267', '11B', '0.42', 'limit', 0.42, false),
  (51, 'IFRA_STD_267', '12', 'No restriction', 'no_restriction', null, false);

commit;
