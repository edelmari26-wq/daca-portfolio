# Week 8 Roll B: Andmete puhastus ja transformatsioon

Roll B keskendub Week 8 projekti andmete kvaliteedile ja ärivalmidusele.

## Ülesanded

- Laadib `data_fetcher.py` kaudu müügi-, kliendi- ja tooteandmed.
- Eemaldab duplikaadid ja vigased kirjed.
- Kontrollib, et `customer_id`, `sale_date` ja `total_price` oleksid olemas ning õiged.
- Teisendab `sale_date` datetime-vormingusse ja `total_price` numbriliseks.
- Eemaldab nulli või negatiivse väärtusega müügiread.
- Teeb kontaktväljad `email`, `phone`, `city` ja `loyalty_tier` ühtlaseks ning lisab abiveerud `has_email`, `has_phone` ja `has_contact`.
- Liidab müügi- ja kliendiandmed `customer_id` alusel ning vajadusel ka `product_id` alusel.

## Tööprotsess

Roll B kasutab faili `transform.py`, mis:

1. puhastab toorandmed
2. kontrollib andmete terviklikkust
3. genereerib kliendipõhised KPI-d
4. arvutab RFM-segmentatsiooni
5. koostab kampaaniaplaani vastavalt segmentidele

## Failid

- `transform.py` — Roll B põhiloogika
- `role_B_summary.md` — Roll B kirjeldus ja kokkuvõte
- `data_fetcher.py` — Roll A andmeallikad
- `visualize_export.py` — Roll C visuaalid

## Väljundid

Roll B tulemused loovad baseeri RFM-analüüsile ja marketingi planeerimisele:

- puhastatud ja ühendatud andmestik
- KPI kokkuvõtted
- RFM-segmenteering
- kliendipõhine retention- ja segmentide tegevusplaan

## Miks see oluline on

Roll B tagab, et kogu Week 8 pipeline töötab puhaste ja usaldusväärsete andmetega. Kui andmed pole puhtad, siis ei saa edasised RFM- ja marketingiaruanded selgelt äriotsuseid toetada.
