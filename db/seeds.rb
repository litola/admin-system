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

# # WORK SHIFT
# WorkShift.create(company_id: 1, name: "Morning")
# WorkShift.create(company_id: 1, name: "Night")

# # JOB
# Job.create(company_id: 1, name: "Administrador")
# Job.create(company_id: 1, name: "Supervisor")
# Job.create(company_id: 1, name: "Guardia")

# # WORKER STATUS
# WorkerStatus.create(company_id: 1, name: "Activo")
# WorkerStatus.create(company_id: 1, name: "Baja") 
# WorkerStatus.create(company_id: 1, name: "Suspendido") 

#WORKER 
# Worker.create(company_id: 1, job_id: 1, worker_status_id: 1, worker_number: 1, first_name: "juan", second_name: "", first_lastname: "Perez", second_lastname: "Rodriguez", dob: "", street: "", number: "", neighborhood: "", city: "", zip: "", code: "", country: "", curp: "", phone: "", cellphone: "", marital_status: "", cartilla_militar:"" , matricula_cartilla: "", vigencia_cartilla: "", porte_arma: "", numero_porte_arma: "", licencia_conducir: "", matricula_licencia_conducir: "", seguro_social: "", dad_name: "", mother_name: "", spouse_name: "", spouse_phone: "", day_of_entry: "", daily_income: 150, extra_hour: 50)