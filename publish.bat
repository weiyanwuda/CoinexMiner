rmdir /s/q dist\main\ -R
rmdir /s/q dist\balance_cost\ -R
rmdir /s/q dist\CoinexMiner\ -R

pyinstaller main.py
pyinstaller balance_cost.py

copy config-example.json dist\main\
copy dist\balance_cost\balance_cost.exe dist\main\

move dist\main dist\CoinexMiner

rmdir /s/q  dist\balance_cost\