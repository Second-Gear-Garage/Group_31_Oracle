-- (Optional) Create a sequence for Engine_ID
CREATE SEQUENCE engine_type_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
-- Insert engine types
INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'Inline-4');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'Inline-3');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'Inline-6');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'V6');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'V8');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'V10');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'V12');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'Electric Motor');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'Rotary Engine (Wankel)');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'Boxer (Flat) Engine');

-- Save the inserts
COMMIT;
