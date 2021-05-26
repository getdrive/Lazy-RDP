# Lazy-RDP

## Demo Video:
[![Lazy-RDP Demo](https://i.ytimg.com/vi/Kpl8l6YQq48/hqdefault.jpg)](https://youtu.be/Kpl8l6YQq48)
## Lazy-RDP over SSH:
[![Lazy-RDP over SSH](https://i.ytimg.com/vi/VXScp23WbZw/hqdefault.jpg)](https://youtu.be/VXScp23WbZw)

- Скрипт для автоматического сканирования списка адресов на наличие открытых RDP-портов, с последующим выбором метода и запуском перебора пары логин/пароль. <br/>

- Скрипт  настраивался для систем Kali linux 2.0, Kali linux 2016.2 и Kali linux 2017.1, 2017.2 и выше. <br/>

- Для корректной работы скрипта требуются установленные: masscan, curl и FreeRDP. <br/>

- Текущая версия 1.30. 
- Добавлено: поддержка XFCE, поддержка Parrot Security OS, автообновление, выбор сканера (Nmap) из списка, для сканирования локальных адресов из диапазона 127.0.0.1/8, возможность указания сканируемого порта. Исправлена ошибка ложноположительных срабатываний. Исправлена ошибка вылета из скрипта при выборе некоторых стран из списка. Добавлен английский язык. <s>Исправлен баг с брутфорсом.</s> Полностью поменял инструмент для брутфорса. Добавлена Hydra 9.0. Добавлена функция автоматического определения языка ОС. Оптимизирован код скрипта. Добавил автоматическую установку и настройку зависимостей (freerdp-X11, freerdp2-x11, masscan) для работы в "SANA" и "ROLLING". Добавлена возможнось запуска скрипта c X11_OVER_SSH. <br/>

## Порядок установки


- Установка <br/>
               
	  git clone https://github.com/getdrive/Lazy-RDP
	  
	  cd Lazy-RDP && chmod +x hydra/configure hydra/hydra src/rdp_brute.sh patator.py start INSTALL

- Установка зависимостей <br/>
        
        ./INSTALL

- Запуск скрипта <br/>

        ./start


# Google translate

- Script for automatic scanning of the address list for the presence of open 3389 ports, and then selecting the method and starting busting pair login / password. <br/>

- The script is tuned for Kali linux 2.0, Kali linux 2016.2 и Kali linux 2017.1, 2017.2 systems and higher versions . <br/>

- To work correctly, the script requires the establishment: masscan, curl and FreeRDP.<br/>

- The current version is 1.32.
- Added: support XFCE, support Parrot Security OS, auto-update, scanner selection (Nmap) from the list, to scan local addresses from the range of 127.0.0.1/8, the ability to specify the scanned port. Fixed bug of false positives. Fixed a crash bug when selecting a script of some countries from the list. Fixed a bug with incorrect paths. Added English. <s>Fixed a bug with brute force menu.</s> Completely changed the tool to brute force. Added Hydra 9.0. Added function to automatically detect the operating system language. Optimized script code. Added automatic installation and configuration dependencies (freerdp-X11, freerdp2-x11, masscan) to work correctly in the "SANA" and "ROLLING". Added a feature to start the script with X11_OVER_SSH. <br/>

## Installation

- Setting <br/>
         
	  git clone https://github.com/getdrive/Lazy-RDP
	  
	  cd Lazy-RDP && chmod +x hydra/configure hydra/hydra src/rdp_brute.sh patator.py start INSTALL


- Installing dependencies <br/>
        
        ./INSTALL

- Running the script <br/>

        ./start
        
# Disclaimer

  Этот сценарий должен использоваться только для образовательных целей и тестирования.<br/>
  Используйте его только на собственных сетях.<br/>
  Автор не несет ответственности за его использование.<br/>

  This script must be used only for educational purposes and Pentesting.<br/>
  Use it only on your own networks.<br/>
  Author is not responsible of its use.<br/>

# Supported Languages

 Russian & English.
