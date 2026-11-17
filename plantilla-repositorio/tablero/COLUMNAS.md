# Cómo montar el tablero (GitHub Projects)

1. En el repositorio: **Projects** → **New project** → plantilla **Board**.
2. Nombre: «Rueda Libre · Tablero del equipo».
3. Columnas (campo *Status*):
   | Columna | Significado |
   |---|---|
   | Pendiente | Todo lo que falta, ordenado por prioridad |
   | Sprint actual | Lo que el equipo se compromete a hacer en este sprint |
   | En curso | Alguien está trabajando en ello (máximo 1 tarea por persona) |
   | En revisión | Hay una pull request abierta |
   | Hecho | Cumple la definición de hecho |
4. Añade el campo **Sprint** (Sprint 1, 2, 3) y filtra la vista por el sprint actual.
5. Crea las tareas iniciales: a mano con la plantilla «Tarea del tablero», o con el script `crear-tareas.sh` (necesita la herramienta `gh`).

Reglas: la persona que facilita mueve las tarjetas durante la reunión diaria; nadie mueve a «Hecho» su propia tarea sin que otra persona la haya revisado (desde el sprint 2).
