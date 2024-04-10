BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Paciente" (
	"PacienteID"	INT,
	"Nombre"	VARCHAR(255) NOT NULL,
	"Direccion"	VARCHAR(255),
	"Telefono"	VARCHAR(20),
	"CorreoElectronico"	VARCHAR(255),
	"MedicoAtencionPrimaria"	INT,
	"NumeroIDSeguro"	VARCHAR(50),
	"CompaniaSeguros"	VARCHAR(255),
	PRIMARY KEY("PacienteID")
);
CREATE TABLE IF NOT EXISTS "Proveedor" (
	"ProveedorID"	INT,
	"Nombre"	VARCHAR(255) NOT NULL,
	"Especialidad"	VARCHAR(100),
	"Telefono"	VARCHAR(20),
	"Direccion"	VARCHAR(255),
	PRIMARY KEY("ProveedorID")
);
CREATE TABLE IF NOT EXISTS "Consulta" (
	"ConsultaID"	INT,
	"Fecha"	DATE,
	"Hora"	TIME,
	"Diagnostico"	VARCHAR(255),
	"Notas"	TEXT,
	"PacienteID"	INT,
	"ProveedorID"	INT,
	PRIMARY KEY("ConsultaID"),
	FOREIGN KEY("PacienteID") REFERENCES "Paciente"("PacienteID"),
	FOREIGN KEY("ProveedorID") REFERENCES "Proveedor"("ProveedorID")
);
CREATE TABLE IF NOT EXISTS "Medicamento" (
	"MedicamentoID"	INT,
	"Nombre"	VARCHAR(255) NOT NULL,
	"FinalidadUso"	TEXT,
	"EfectosSecundarios"	TEXT,
	PRIMARY KEY("MedicamentoID")
);
CREATE TABLE IF NOT EXISTS "Hospital" (
	"HospitalID"	INT,
	"Nombre"	VARCHAR(255) NOT NULL,
	"Direccion"	VARCHAR(255),
	"InformacionContacto"	TEXT,
	PRIMARY KEY("HospitalID")
);
COMMIT;
