 Data Insertion Steps - Manual Steps
==============

Please follow the below steps to insert data into the FollowApp database
>  - Get the data from the NGO. Refer the sample excel sheets here for reference. One would contain the vaccination history and the other would contain contact details.
>  - Perform vlookup on the excel sheets to get all the data in sync. Find the sample excel file. The excel will automatically generate insert statements.
>  - After running the insert statements on the server, run the audio refresh script to create the new .wav files http://<serverName>/api/audiocache/refresh
>  - The audio files are created in the location - var/html/audioresources
>  - FTP the .wav files to your respective Imimobile host. 