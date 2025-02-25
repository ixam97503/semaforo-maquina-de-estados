# 🚦 Diseño de Semáforo Inteligente en VHDL ✨

## 📝 Descripción del Proyecto
Este proyecto implementa un semáforo inteligente utilizando VHDL. 🧠 El diseño incluye dos semáforos: uno para los peatones (`semcamin`) y otro para los vehículos (`semcarr`). El sistema utiliza un sensor para detectar la presencia de peatones y ajusta los estados del semáforo en función de las señales recibidas. 🚶‍♂️🚗

## 🛠️ Componentes del Diseño
- **Entradas**:
  - `Sensor`: Detecta la presencia de peatones. 👀
  - `clk`: Señal de reloj para sincronizar los estados. ⏳
- **Salidas**:
  - `semcamin`: Semáforo para peatones (representado como un vector de 3 bits). 🚶‍♀️
  - `semcarr`: Semáforo para vehículos (representado como un vector de 3 bits). 🚗

## 🔄 Estados del Semáforo
El sistema opera en cinco estados principales:
1. **S0**: Estado inicial. El semáforo para vehículos está en verde, y el semáforo para peatones está en rojo. 🟩🔴
2. **S1**: Transición al estado donde el semáforo para vehículos cambia a amarillo. 🟨
3. **S2**: El semáforo para vehículos cambia a rojo, y el semáforo para peatones cambia a verde. 🔴🟢
4. **S3**: Transición para preparar el cambio de estado nuevamente. 🔄
5. **S4**: Retorno al estado inicial (S0). 🔁

## ⚙️ Funcionamiento
- Cuando el sensor detecta un peatón (`Sensor = '1'`), el sistema avanza al siguiente estado. 🚶‍♂️➡️
- Un contador interno controla la duración de cada estado para garantizar tiempos adecuados de transición. ⏲️

## 🚦 Salidas del Semáforo
- **Semáforo Peatones (`semcamin`)**:
  - `"100"`: Rojo. 🔴
  - `"010"`: Amarillo. 🟨
  - `"001"`: Verde. 🟢
- **Semáforo Vehículos (`semcarr`)**:
  - `"100"`: Rojo. 🔴
  - `"010"`: Amarillo. 🟨
  - `"001"`: Verde. 🟢

## 📝 Notas
- Este diseño es modular y puede ser simulado en herramientas como Xilinx o ModelSim. 💻
- Asegúrese de configurar correctamente la frecuencia del reloj (`clk`) para obtener tiempos realistas en las transiciones. ⚡
