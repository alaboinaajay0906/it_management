--fileStatus=0

--Customer id = 1
-- sunny krishna
--alter latch column

ALTER TABLE public.alarm_settings ALTER COLUMN latch TYPE integer USING latch::integer;;

UPDATE public.version SET version = 1358 WHERE type = 'db_version';

