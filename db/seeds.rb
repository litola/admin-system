# SUPER USER
# User.create(email: "super@super.com", password: "password", name: "super test", role:0)

# ADMIN USER
# User.create(email: "admin@admin.com", password: "password", name: "admin test", role:1)

# COMPANY 
# Company.create(name: "Company A", contact: "John", contact_number:"123421314354")

# CLIENT
# Client.create(name: "Client 1", contact: "Jose", contact_number: "1234514354343", company_id: 1)

# PROJECT
# Project.create(client_id: 1, name: "Project 1")

# WORK SHIFT
# WorkShift.create(company_id: 1, name: "Morning")
# WorkShift.create(company_id: 1, name: "Night")

# JOB
# Job.create(company_id: 1, name: "Administrador")
# Job.create(company_id: 1, name: "Supervisor")
# Job.create(company_id: 1, name: "Guardia")

#WORKER STATUS
#WorkerStatus.create(company_id: 1, name: "Activo")
#WorkerStatus.create(company_id: 1, name: "Baja") 
#WorkerStatus.create(company_id: 1, name: "Suspendido") 
