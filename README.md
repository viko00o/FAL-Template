# FAL-Template
Instalacion:
    Mover los archivos a la carpeta raiz de tu mision
Briefing:
    En \init.sqf hay 3 variables (_fal_execution, _fal_situation, _fal_mision), asignarles un texto que no sea "" para que se muestren en el briefing.
Tareas:
    Para hacer las tareas por sqf y tenerlo todo ordenado y lindo, pasar true a fal_fnc_setupTasks ([true] call fal_fnc_setupTasks;) en \init.sqf