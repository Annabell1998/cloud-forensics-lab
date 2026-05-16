# Cloud Forensics Lab

Laboratorio práctico de análisis forense en entornos cloud utilizando Docker y contenedores Linux.

---

# Tecnologías utilizadas

* Docker
* Docker Compose
* Ubuntu Containers
* MinIO Object Storage
* Bash Scripting
* Linux Forensics

---

# Estructura del laboratorio

```bash
cloud-forensics-lab/
├── docker-compose.yml
├── scripts/
│   ├── generate_evidence.sh
│   ├── hash_evidence.sh
│   ├── delete_evidence.sh
│   └── backup.sh
├── evidence/
│   └── files/
├── backups/
├── logs/
└── README.md
```

---

# Servicios / Contenedores

## 1. MinIO Server (`minio_server`)

Simula un entorno de almacenamiento cloud tipo S3.

### Acceso:

* URL: http://localhost:9090
* Usuario: `admin`
* Password: `forensic123`

---

## 2. Cloud Client (`cloud_client`)

Contenedor utilizado para:

* generar evidencia,
* ejecutar scripts,
* simular actividad de usuario.

---

## 3. Backup Service (`backup_service`)

Servicio encargado de:

* generar snapshots,
* crear backups de evidencia,
* mantener persistencia de archivos.

---

## 4. Forensic Investigator (`forensic_investigator`)

Entorno utilizado para:

* analizar logs,
* verificar hashes,
* recuperar evidencia,
* construir timelines forenses.

---

# Requisitos

Antes de ejecutar el laboratorio necesitas:

* Docker instalado
* Docker Compose instalado
* Git instalado

---

# Cómo ejecutar el laboratorio

## 1. Clonar repositorio

```bash
git clone https://github.com/Annabell1998/cloud-forensics-lab.git
```

---

## 2. Entrar al proyecto

```bash
cd cloud-forensics-lab
```

---

## 3. Levantar el laboratorio

```bash
docker compose up -d
```

---

## 4. Verificar contenedores

```bash
docker compose ps
```

Todos los contenedores deben aparecer en estado `Up`.

**Análisis Forense a la Base de Datos y de la Nube**
Universidad Mariano Gálvez de Guatemala
