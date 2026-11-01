BEGIN;
UPDATE krediler SET kredi = kredi - 50 WHERE uye_id = 1;
UPDATE krediler SET kredi = kredi + 50 WHERE uye_id = 2;
COMMIT;
