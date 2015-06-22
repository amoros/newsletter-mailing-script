# newsletter-mailing-script
This is a simple script for emailing the latest CERT-SE newsletter to an email address of your own choice.
The newsletter is mostly published Friday afternoons, so having a cronjob set to run this script every
Friday afternoon (CET) would be a good idea.

Sample cronjob config:

0 14 * * 5 sh /home/$user/$workspace/sendEmail.sh
