-- Aggiungo la tabella con la durata dei viaggi
-- Table with travel durations

ALTER TABLE trips
ADD COLUMN trip_duration_min NUMERIC;

UPDATE trips
SET trip_duration_min = EXTRACT(EPOCH FROM (ended_at - started_at)) / 60.0;
