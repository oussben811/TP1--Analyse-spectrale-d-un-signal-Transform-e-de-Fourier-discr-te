# TP1- Analyse spectrale d’un signalTransformée de Fourier discrète

## Introduction
      L'analyse spectrale d'un signal consiste à décomposer un signal temporel en
      une somme de signaux périodiques de fréquences différentes. 
      La Transformée de Fourier discrète (TFD) est l'outil mathématique utilisé 
      pour réaliser cette décomposition. Elle permet de passer d'une représentation
      temporelle d'un signal à une représentation fréquentielle, où chaque fréquence 
      est associée à un coefficient complexe. Cette représentation fréquentielle permet 
      de mettre en évidence les différentes composantes périodiques présentes dans le signal d'origine.
      
## Objectifs 

   - Représentation de signaux et applications de la transformée de Fourier discrète
      (TFD) sous Matlab. 
   -  Evaluation de l’intérêt du passage du domaine temporel au domaine fréquentiel 
      dans l’analyse et l’interprétation des signaux physiques réels.

 ## Réalisation du TP
 - Partie1 : Représentation temporelle et fréquentielle
 
      1-Tracage de x(t):
      
      Fréquence d’échantillonnage : fe = 10000Hz, Intervalle : Nombre d’échantillons : N = 5000.
      Te : Période d’échantillonnage.
      ![Screenshot 2023-01-20 142504](https://user-images.githubusercontent.com/78149349/213705408-0a6764db-714a-44c7-b974-b2b7f1c1b8ea.png)
      
      2-Calcule de la TFD du signal x(t):
      ![Screenshot 2023-01-20 142518](https://user-images.githubusercontent.com/78149349/213705612-79e15744-8597-401d-9611-0438f42e9311.png)
      
        La commande fft calcule une transformée de Fourier Rapide dans le domaine fréquentiel :
        1- Définition du vecteur de fréquence f de taille N et d’un pas égale à fe/N.
        2- L’utilisation de abs pour tracer le spectre d’amplitude.
        3- Puis on a besoin de diviser par N et multiplier par 2 pour des valeurs plus exactes en 
        amplitude.
        Remarque: Les raies du spectre obtenu font une symétrie conjuguée par rapport à fe/2.

      3- effectue un décalage circulaire avec fftshift:
      
      ![Screenshot 2023-01-20 142755](https://user-images.githubusercontent.com/78149349/213705898-b81f257b-60b6-4ece-b95e-0a0c5b558e9a.png)
        
       La commande fftshift effectue un décalage circulaire centre sur 0 du spectre en amplitude obtenu par 
       la commande fft. En l’appliquant sur un intervalle qui couvre la partie positif et négatif. 
       
      4- Signal noise:
      
      ![Screenshot 2023-01-20 142905](https://user-images.githubusercontent.com/78149349/213706117-81152308-bdcd-4f2e-900d-fae0509f02e2.png)
       
        On crée un signal bruit blanc gaussien à partir du signal x(t) en utilisant la fonction randn.
        
      5- Signal xnoise et ynoise:
      
      ![Screenshot 2023-01-20 143102](https://user-images.githubusercontent.com/78149349/213706489-952cf79f-8a8c-40b5-947a-5c3ea73b906d.png)
        
       On a fusionné le signal x(t) avec le signa bruit >> xnoise, puis on trace sa représentation dans le 
       domaine fréquentiel ynoise.
      6-commande Sound:
      
      ![Screenshot 2023-01-20 143151](https://user-images.githubusercontent.com/78149349/213706627-9b0c53fb-8d17-4086-8997-ec38423125cf.png)
        
       La commande Sound permet d’écouter les signaux.
        

 - Partie2 : Analyse fréquentielle du chant du rorqual bleu
 
        
      ![Screenshot 2023-01-20 144154](https://user-images.githubusercontent.com/78149349/213709620-5aa4e573-42f2-4222-92f5-10b6c9e511a2.png)
      
      ![Screenshot 2023-01-20 144208](https://user-images.githubusercontent.com/78149349/213709685-793f4b76-6015-4450-a361-567fa5e14710.png)
      
      Remarque :
      
            Ce code lit dans un fichier audio appelé 'bluewhale.au' et stocke le signal
            et la fréquence d'échantillonnage dans les variables 'signal' et 'fs' respectivement. 
            Ensuite, il extrait une partie du signal d'une plage de temps spécifique et la lit à 
            l'aide de la fonction "sound". Il définit ensuite le nombre d'échantillons dans le signal
            extrait comme « N » et calcule le vecteur de temps « t » en multipliant le nombre d'échantillons 
            par l'intervalle de temps d'échantillonnage.
            Le code calcule également le vecteur de fréquence 'f' en divisant la fréquence d'échantillonnage
            par le nombre d'échantillons, et applique la transformée de Fourier discrète (FFT) au signal extrait
            'chant' et trace l'amplitude au carré du résultat FFT par rapport au vecteur de fréquence 'F'.

  ## Conclusion
  
    La Transformée de Fourier discrète (DFT) est un outil puissant utilisé pour analyser
    les signaux périodiques dans le domaine fréquentiel. Elle permet de décomposer un signal
    en un ensemble de composantes de fréquences différentes, chacune ayant une amplitude 
    et une phase associées. Cela permet de comprendre les différentes caractéristiques du signal, 
    telles que les fréquences dominantes, les harmoniques et les distorsions. La DFT est largement
    utilisée dans les domaines de la communication, de la signalisation, de l'électronique,
    de l'audio et de la vidéo.


