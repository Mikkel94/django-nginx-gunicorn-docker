#Remove old static files
rm -rf static/*

#Copy over new static files
cp -r app/fg/files/FGstatic/* static/

#Unzip admin.zip into static
unzip ~/admin.zip -d static/
