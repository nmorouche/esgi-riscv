# Exercice 1
# utiliser un appel système comme write

# On indique qu'on souhaite ranger des données dans le segment de data.
#.data

# la directive .asciz permet de déclarer une chaine fini par un 0x00, '\0' en ascii.
#msg: .asciz "Hello ASM from .data"

#.text # <- segment de code.

# Exercice: Observation dans Rars
# 1- Quelle est l'addresse de base de la chaine msg? Son addresse de fin?
# 2- Dans quelle segment de la mémoire est elle?
# 3- Quelle sont les valeurs en hexadecimales présente dans .data?

#la a0, msg # argument de l'appel systeme
#li a7, 4 # appel systeme 4 selon la doc de Rars printString
#ecall # Permet de basculer en mode kernel pour faire l'appel systeme.

# Bonus: Afficher maintenant un nombre, vous aurrez besoin de la documentation.

# Réponses:
# 1- Son adresse de base: 0x00400000 | Son adresse de fin: 0x00400019 ?
# 2- Dans le segment data.
# 3- Aucune idée`y'a 50 000 values différents (+0 +4 +8 etc)

#Bonus:
li a0, 64
li a7, 1
ecall


